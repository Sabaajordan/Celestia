-- ============================================================
-- Celestia — Products table + RLS + Storage setup
-- Run this in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

-- 1. Products table
CREATE TABLE IF NOT EXISTS products (
  id BIGSERIAL PRIMARY KEY,
  sku TEXT UNIQUE,
  name_en TEXT NOT NULL,
  name_ar TEXT,
  desc_en TEXT,
  desc_ar TEXT,
  brand TEXT,
  category TEXT DEFAULT 'cosmetics',
  price NUMERIC(10,2) NOT NULL DEFAULT 0,
  quantity INTEGER NOT NULL DEFAULT 0,
  image TEXT,
  sort_order INTEGER DEFAULT 0,
  active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS products_category_idx ON products(category);
CREATE INDEX IF NOT EXISTS products_brand_idx ON products(brand);
CREATE INDEX IF NOT EXISTS products_sort_idx ON products(sort_order);

-- 2. Auto-update updated_at on modification
CREATE OR REPLACE FUNCTION update_products_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS products_updated_at ON products;
CREATE TRIGGER products_updated_at
  BEFORE UPDATE ON products
  FOR EACH ROW EXECUTE FUNCTION update_products_updated_at();

-- 3. RLS on products
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

-- Anyone can SELECT active products (for the shop)
DROP POLICY IF EXISTS "anon can read active products" ON products;
CREATE POLICY "anon can read active products"
  ON products FOR SELECT
  TO anon, authenticated
  USING (active = TRUE);

-- Only authenticated admins can INSERT / UPDATE / DELETE
DROP POLICY IF EXISTS "authenticated can insert products" ON products;
CREATE POLICY "authenticated can insert products"
  ON products FOR INSERT
  TO authenticated
  WITH CHECK (true);

DROP POLICY IF EXISTS "authenticated can update products" ON products;
CREATE POLICY "authenticated can update products"
  ON products FOR UPDATE
  TO authenticated
  USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "authenticated can delete products" ON products;
CREATE POLICY "authenticated can delete products"
  ON products FOR DELETE
  TO authenticated
  USING (true);

-- Admins also need to SELECT all products (including inactive) to manage them
DROP POLICY IF EXISTS "authenticated can read all products" ON products;
CREATE POLICY "authenticated can read all products"
  ON products FOR SELECT
  TO authenticated
  USING (true);

-- ============================================================
-- 4. Storage bucket for product images
-- Run these separately if the CREATE conflicts; storage.buckets
-- can also be created via the Supabase dashboard → Storage → New bucket
-- Name: product-images, public: TRUE
-- ============================================================

INSERT INTO storage.buckets (id, name, public)
VALUES ('product-images', 'product-images', true)
ON CONFLICT (id) DO NOTHING;

-- Storage RLS: anyone can read; only authenticated can upload/update/delete
DROP POLICY IF EXISTS "public can read product images" ON storage.objects;
CREATE POLICY "public can read product images"
  ON storage.objects FOR SELECT
  TO anon, authenticated
  USING (bucket_id = 'product-images');

DROP POLICY IF EXISTS "authenticated can upload product images" ON storage.objects;
CREATE POLICY "authenticated can upload product images"
  ON storage.objects FOR INSERT
  TO authenticated
  WITH CHECK (bucket_id = 'product-images');

DROP POLICY IF EXISTS "authenticated can update product images" ON storage.objects;
CREATE POLICY "authenticated can update product images"
  ON storage.objects FOR UPDATE
  TO authenticated
  USING (bucket_id = 'product-images');

DROP POLICY IF EXISTS "authenticated can delete product images" ON storage.objects;
CREATE POLICY "authenticated can delete product images"
  ON storage.objects FOR DELETE
  TO authenticated
  USING (bucket_id = 'product-images');

-- ============================================================
-- Verify:
-- SELECT * FROM pg_policies WHERE tablename = 'products';
-- SELECT * FROM storage.buckets WHERE id = 'product-images';
-- ============================================================
