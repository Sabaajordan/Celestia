-- ============================================================
-- Celestia — Several photos per product + photos per variant
-- Run in Supabase → SQL Editor → New Query → paste → Run
-- Safe to run more than once.
-- ============================================================

-- 1. A list of photos on each product and each variant.
--    The old single "image" column stays and is kept in sync
--    (it always holds the first photo of the list).
ALTER TABLE products         ADD COLUMN IF NOT EXISTS images TEXT[] NOT NULL DEFAULT '{}';
ALTER TABLE product_variants ADD COLUMN IF NOT EXISTS images TEXT[] NOT NULL DEFAULT '{}';

-- 2. Copy each product's current photo into its list.
UPDATE products
   SET images = ARRAY[image]
 WHERE image IS NOT NULL AND image <> '' AND cardinality(images) = 0;

-- 3. Copy each variant's current photo (if it had one) into its list.
UPDATE product_variants
   SET images = ARRAY[image]
 WHERE image IS NOT NULL AND image <> '' AND cardinality(images) = 0;

-- 4. Make sure every variant photo is also in its product's gallery.
UPDATE products p
   SET images = p.images || ARRAY(
         SELECT DISTINCT v.image
           FROM product_variants v
          WHERE v.product_id = p.id
            AND v.image IS NOT NULL AND v.image <> ''
            AND NOT (v.image = ANY(p.images))
       )
 WHERE EXISTS (
         SELECT 1 FROM product_variants v
          WHERE v.product_id = p.id
            AND v.image IS NOT NULL AND v.image <> ''
            AND NOT (v.image = ANY(p.images))
       );

-- Verify:
-- SELECT id, name_en, images FROM products ORDER BY id LIMIT 20;
-- SELECT id, product_id, name_en, images FROM product_variants ORDER BY id LIMIT 20;
