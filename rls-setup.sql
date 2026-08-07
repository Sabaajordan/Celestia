-- ============================================================
-- Celestia — RLS Setup for orders table
-- Run this in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

-- 1. Turn RLS on for the orders table
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

-- 2. Allow ANYONE (including anonymous shop visitors) to INSERT orders.
--    This is what lets customers place orders from the website.
DROP POLICY IF EXISTS "anon can insert orders" ON orders;
CREATE POLICY "anon can insert orders"
  ON orders FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- 3. Only LOGGED-IN admin users can SELECT (read) orders.
--    This is what protects customer data — the public key on the site
--    can insert but cannot read anything back.
DROP POLICY IF EXISTS "authenticated can read orders" ON orders;
CREATE POLICY "authenticated can read orders"
  ON orders FOR SELECT
  TO authenticated
  USING (true);

-- 4. Only LOGGED-IN admin users can UPDATE orders (status changes,
--    marking confirmed/delivered/cancelled from the admin page).
DROP POLICY IF EXISTS "authenticated can update orders" ON orders;
CREATE POLICY "authenticated can update orders"
  ON orders FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- 5. (Optional) Allow logged-in admins to DELETE orders too.
--    Comment this block out if you'd rather never allow deletion.
DROP POLICY IF EXISTS "authenticated can delete orders" ON orders;
CREATE POLICY "authenticated can delete orders"
  ON orders FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================
-- Done. To verify:
-- SELECT * FROM pg_policies WHERE tablename = 'orders';
-- ============================================================
