-- ============================================================
-- Celestia — Product Variants
-- Run in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

CREATE TABLE IF NOT EXISTS product_variants (
  id BIGSERIAL PRIMARY KEY,
  product_id BIGINT NOT NULL REFERENCES products(id) ON DELETE CASCADE,
  sku TEXT,
  name_en TEXT NOT NULL,
  name_ar TEXT,
  color_hex TEXT,
  price_override NUMERIC(10,2),
  quantity INTEGER NOT NULL DEFAULT 0,
  image TEXT,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS product_variants_product_id_idx ON product_variants(product_id);

CREATE OR REPLACE FUNCTION update_variants_updated_at()
RETURNS TRIGGER AS $$
BEGIN NEW.updated_at = NOW(); RETURN NEW; END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS variants_updated_at ON product_variants;
CREATE TRIGGER variants_updated_at
  BEFORE UPDATE ON product_variants
  FOR EACH ROW EXECUTE FUNCTION update_variants_updated_at();

ALTER TABLE product_variants ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "anon can read variants" ON product_variants;
CREATE POLICY "anon can read variants"
  ON product_variants FOR SELECT
  TO anon, authenticated USING (true);

DROP POLICY IF EXISTS "authenticated can insert variants" ON product_variants;
CREATE POLICY "authenticated can insert variants"
  ON product_variants FOR INSERT
  TO authenticated WITH CHECK (true);

DROP POLICY IF EXISTS "authenticated can update variants" ON product_variants;
CREATE POLICY "authenticated can update variants"
  ON product_variants FOR UPDATE
  TO authenticated USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "authenticated can delete variants" ON product_variants;
CREATE POLICY "authenticated can delete variants"
  ON product_variants FOR DELETE
  TO authenticated USING (true);
