-- Seed Pastel Nail Polish products + variants
-- Run in Supabase SQL Editor. Safe to re-run (uses ON CONFLICT).

-- === Product 1: Pastel Classic ===
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order, active)
VALUES ('P-PASTEL-CLASSIC', 'Pastel Nail Polish', 'طلاء أظافر باستيل', 'Classic collection · 2.00 JOD each', 'مجموعة كلاسيك · 2.00 دينار للقطعة', 'pastel', 'cosmetics', 2.00, 0, 'products/pastel-classic-red.jpg', 100, true)
ON CONFLICT (sku) DO NOTHING;

INSERT INTO product_variants (product_id, name_en, name_ar, color_hex, quantity, image, sort_order)
SELECT id, v.name_en, v.name_ar, v.color_hex, 1, v.image, v.sort_order
FROM products, (VALUES
  ('Red No.10', 'أحمر رقم 10', '#B22222', 'products/pastel-classic-red.jpg', 1),
  ('Red No.28', 'أحمر رقم 28', '#DC143C', 'products/pastel-bright-red.jpg', 2),
  ('Wild Red No.33', 'أحمر جامح رقم 33', '#8B0000', 'products/pastel-dark-red.jpg', 3),
  ('Cardinal Red No.37', 'أحمر كاردينال رقم 37', '#722F37', 'products/pastel-wine-red.jpg', 4),
  ('Pink No.08', 'وردي رقم 08', '#DB7093', 'products/pastel-light-pink.jpg', 5),
  ('Rose Gem No.310', 'روز جيم رقم 310', '#B4838A', 'products/pastel-mauve.jpg', 6),
  ('Blush Pink No.266', 'وردي بلاش رقم 266', '#D4919A', 'products/pastel-hot-pink.jpg', 7),
  ('Blue No.11', 'أزرق رقم 11', '#1937C7', 'products/pastel-cobalt.jpg', 8),
  ('Grey Blue No.13', 'أزرق رمادي رقم 13', '#6B8BA4', 'products/pastel-steel-blue.jpg', 9),
  ('Blue No.229', 'أزرق رقم 229', '#1E3A8A', 'products/pastel-royal-blue.jpg', 10),
  ('Blue No.269', 'أزرق رقم 269', '#4A5568', 'products/pastel-navy.jpg', 11),
  ('Winter Garden No.246', 'حديقة الشتاء رقم 246', '#8BAFC4', 'products/pastel-baby-blue.jpg', 12),
  ('Grey No.312', 'رمادي رقم 312', '#9DA5B0', 'products/pastel-gray.jpg', 13),
  ('Dark Black No.38', 'أسود داكن رقم 38', '#1A1A1A', 'products/pastel-black.jpg', 14),
  ('Dark Purple No.44', 'بنفسجي داكن رقم 44', '#3E2723', 'products/pastel-chocolate.jpg', 15),
  ('Clear White No.01', 'أبيض شفاف رقم 01', '#F5F5F5', NULL, 16),
  ('Lemonade No.295', 'ليموناضة رقم 295', '#E8C820', 'products/pastel-yellow-hand.jpg', 17),
  ('Best Selling No.293', 'الأكثر مبيعاً رقم 293', '#C8B8A0', 'products/pastel-shimmer-hand.jpg', 18),
  ('Glittery No.249', 'لامع رقم 249', '#C0C0C0', 'products/pastel-silver-hand.jpg', 19)
) AS v(name_en, name_ar, color_hex, image, sort_order)
WHERE products.sku = 'P-PASTEL-CLASSIC'
ON CONFLICT DO NOTHING;

-- === Product 2: Pastel Nude ===
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order, active)
VALUES ('P-PASTEL-NUDE', 'Pastel Nude Polish', 'طلاء أظافر باستيل نيود', 'Nude collection · 2.00 JOD each', 'مجموعة النيود · 2.00 دينار للقطعة', 'pastel', 'cosmetics', 2.00, 0, 'products/nude-beige-hand.jpg', 101, true)
ON CONFLICT (sku) DO NOTHING;

INSERT INTO product_variants (product_id, name_en, name_ar, color_hex, quantity, image, sort_order)
SELECT id, v.name_en, v.name_ar, v.color_hex, 1, v.image, v.sort_order
FROM products, (VALUES
  ('Dreamer No.769', 'دريمر رقم 769', '#D4A0A0', 'products/pastel-nude-hand.jpg', 1),
  ('Kind No.762', 'كايند رقم 762', '#E8C8D0', 'products/nude-light-pink-hand.jpg', 2),
  ('Beige No.755', 'بيج رقم 755', '#C4A882', 'products/nude-caramel-bottle.jpg', 3),
  ('Bride Nude No.751', 'برايد نيود رقم 751', '#C8B8A0', 'products/nude-sand-bottle.jpg', 4),
  ('Milkshake No.765', 'ميلك شيك رقم 765', '#B8A090', 'products/nude-mauve-bottle.jpg', 5),
  ('Buff No.759', 'باف رقم 759', '#A89888', 'products/nude-taupe-hand.jpg', 6),
  ('Princess No.756', 'برنسس رقم 756', '#E0C8C0', 'products/nude-peach-hand.jpg', 7)
) AS v(name_en, name_ar, color_hex, image, sort_order)
WHERE products.sku = 'P-PASTEL-NUDE'
ON CONFLICT DO NOTHING;

-- === Product 3: Pastel Pure ===
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order, active)
VALUES ('P-PASTEL-PURE', 'Pastel Pure Polish', 'طلاء أظافر باستيل بيور', 'Pure collection · 2.00 JOD each', 'مجموعة بيور · 2.00 دينار للقطعة', 'pastel', 'cosmetics', 2.00, 0, 'products/pure-shimmer-hand.jpg', 102, true)
ON CONFLICT (sku) DO NOTHING;

INSERT INTO product_variants (product_id, name_en, name_ar, color_hex, quantity, image, sort_order)
SELECT id, v.name_en, v.name_ar, v.color_hex, 1, v.image, v.sort_order
FROM products, (VALUES
  ('Pure No.607', 'بيور رقم 607', '#E8D0C0', 'products/pure-beige-bottle.jpg', 1),
  ('Shimmering Fairy No.602', 'شيمرينج فيري رقم 602', '#C8B0A8', 'products/pure-matte-hand.jpg', 2),
  ('Pure No.621', 'بيور رقم 621', '#7B4060', 'products/pure-plum-hand.jpg', 3),
  ('Pure Nude No.616', 'بيور نيود رقم 616', '#D8C0B8', 'products/pure-shimmer-hand.jpg', 4)
) AS v(name_en, name_ar, color_hex, image, sort_order)
WHERE products.sku = 'P-PASTEL-PURE'
ON CONFLICT DO NOTHING;
