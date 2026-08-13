-- ============================================================
-- Celestia — Add user tracking to orders + fix RLS for admin actions
-- Run in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

-- 1. Add user tracking columns (so past purchases match to logged-in customers)
ALTER TABLE orders ADD COLUMN IF NOT EXISTS user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL;
ALTER TABLE orders ADD COLUMN IF NOT EXISTS user_email TEXT;
CREATE INDEX IF NOT EXISTS orders_user_id_idx ON orders(user_id);
CREATE INDEX IF NOT EXISTS orders_user_email_idx ON orders(user_email);

-- 2. RLS policies for orders — replace existing so admins can update/delete
-- and customers can read only their own orders

-- Anyone can INSERT (place an order)
DROP POLICY IF EXISTS "anon can insert orders" ON orders;
CREATE POLICY "anon can insert orders"
  ON orders FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- Authenticated users can SELECT: their own orders OR admins see all
DROP POLICY IF EXISTS "authenticated can read orders" ON orders;
DROP POLICY IF EXISTS "authenticated can read own orders" ON orders;
CREATE POLICY "authenticated can read own or admin all"
  ON orders FOR SELECT
  TO authenticated
  USING (
    user_id = auth.uid()
    OR user_email = auth.jwt() ->> 'email'
    OR (auth.jwt() ->> 'email') = 'celestia.jor@gmail.com'
  );

-- Only admin can UPDATE
DROP POLICY IF EXISTS "authenticated can update orders" ON orders;
CREATE POLICY "admin can update orders"
  ON orders FOR UPDATE
  TO authenticated
  USING ((auth.jwt() ->> 'email') = 'celestia.jor@gmail.com')
  WITH CHECK ((auth.jwt() ->> 'email') = 'celestia.jor@gmail.com');

-- Only admin can DELETE
DROP POLICY IF EXISTS "admin can delete orders" ON orders;
CREATE POLICY "admin can delete orders"
  ON orders FOR DELETE
  TO authenticated
  USING ((auth.jwt() ->> 'email') = 'celestia.jor@gmail.com');
