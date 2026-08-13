-- ============================================================
-- Celestia — Robust admin RLS for orders
-- Replaces fragile "auth.jwt() ->> 'email' = '...'" checks with
-- a proper admin_users table + is_admin() helper.
-- Run in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

-- 1. Admin allowlist table (user_ids only)
CREATE TABLE IF NOT EXISTS admin_users (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  added_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE admin_users ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "admins can read admin_users" ON admin_users;
CREATE POLICY "admins can read admin_users"
  ON admin_users FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());

-- 2. Populate with the current admin (looked up by email)
--    If your admin email is different, change it below.
INSERT INTO admin_users (user_id)
SELECT id FROM auth.users WHERE email = 'celestia.jor@gmail.com'
ON CONFLICT DO NOTHING;

-- 3. Helper: is the current session an admin?
CREATE OR REPLACE FUNCTION is_admin() RETURNS BOOLEAN
LANGUAGE SQL STABLE SECURITY DEFINER SET search_path = public AS $$
  SELECT EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid());
$$;

-- 4. Clean up ALL existing orders policies (legacy + duplicates)
DROP POLICY IF EXISTS "Allow admin reads" ON orders;
DROP POLICY IF EXISTS "Allow anonymous inserts" ON orders;
DROP POLICY IF EXISTS "anon can insert orders" ON orders;
DROP POLICY IF EXISTS "authenticated can read orders" ON orders;
DROP POLICY IF EXISTS "authenticated can read own orders" ON orders;
DROP POLICY IF EXISTS "authenticated can read own or admin all" ON orders;
DROP POLICY IF EXISTS "authenticated can update orders" ON orders;
DROP POLICY IF EXISTS "authenticated can delete orders" ON orders;
DROP POLICY IF EXISTS "admin can update orders" ON orders;
DROP POLICY IF EXISTS "admin can delete orders" ON orders;

-- 5. Rebuild orders policies cleanly

-- Anyone (including anonymous checkout) can INSERT
CREATE POLICY "anyone can insert orders"
  ON orders FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- Admin sees all; customers see only their own
CREATE POLICY "read own or admin all"
  ON orders FOR SELECT
  TO authenticated
  USING (
    is_admin()
    OR user_id = auth.uid()
    OR user_email = auth.jwt() ->> 'email'
  );

-- Only admin can UPDATE
CREATE POLICY "admin can update orders"
  ON orders FOR UPDATE
  TO authenticated
  USING (is_admin())
  WITH CHECK (is_admin());

-- Only admin can DELETE
CREATE POLICY "admin can delete orders"
  ON orders FOR DELETE
  TO authenticated
  USING (is_admin());

-- ============================================================
-- Verify:
--   SELECT * FROM admin_users;
--   SELECT * FROM pg_policies WHERE tablename = 'orders';
--   SELECT is_admin();   -- run while logged in as admin → true
--
-- Adding another admin later:
--   INSERT INTO admin_users (user_id)
--   SELECT id FROM auth.users WHERE email = 'other@example.com';
-- ============================================================
