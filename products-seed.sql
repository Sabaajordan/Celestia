-- Seed initial products from index.html into Supabase
-- Run AFTER products-setup.sql
-- Safe to re-run (uses ON CONFLICT DO NOTHING).

INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0004', 'Healthy Mix Foundation', 'أساس هيلثي ميكس', '16H · Anti-fatigue · Vitamin C,E,B5', 'يدوم 16 ساعة · مضاد للإرهاق · فيتامين C وE وB5', 'bourjois', 'cosmetics', 16, 10, 'products/bourjois-healthy-mix-foundation.jpg', 0)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0010', 'Creme Puff Powder', 'بودرة كريم بوف', 'All-in-one · Since 1953', 'متعددة الاستعمالات · منذ 1953', 'maxfactor', 'cosmetics', 6, 10, 'products/max-factor-creme-puff.jpg', 1)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0012', 'I ❤ Flawless Skin Foundation', 'أساس فلوليس سكن', 'Matte & full coverage · 30ML', 'مطفي وتغطية كاملة · 30مل', 'essence', 'cosmetics', 6, 10, 'products/essence-foundation.jpg', 2)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0013', '16h Cover & Last Powder', 'بودرة كوفر آند لاست 16 ساعة', 'With mirror & sponge', 'مع مرآة وإسفنجة', 'essence', 'cosmetics', 4, 10, 'products/essence-powder-foundation.jpg', 3)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0015', 'Fix & Last 14h Loose Powder', 'بودرة سائبة فيكس آند لاست', 'Matte · Blurring · Waterproof', 'مطفية · تنعيم · مقاومة للماء', 'essence', 'cosmetics', 4, 10, 'products/essence-loose-powder.jpg', 4)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0016', 'Banana Loose Powder', 'بودرة موز سائبة', 'Mattifying · Fixing · Baking', 'تثبيت · تعتيم · خبز الميك أب', 'essence', 'cosmetics', 4, 10, 'products/essence-banana-powder.jpg', 5)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0035', 'Conceal Like A Pro Palette', 'لوحة مصححات الألوان', 'Colour correcting · 4 correctors', 'تصحيح لون البشرة · 4 مصححات', 'essence', 'cosmetics', 3, 10, 'products/essence-conceal-pro.jpg', 6)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0039', 'Miracle Contouring Palette', 'لوحة الكونتور من ماكس فاكتور', '1. Highlight · 2. Lift · 3. Contour · 8 shades', '1. إبراز · 2. رفع · 3. كونتور · 8 درجات', 'maxfactor', 'cosmetics', 29, 10, 'products/maxfactor-miracle-contour.jpg', 7)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0032', 'Glow & Bronze Palette', 'لوحة جلو آند برونز', 'Goddess Glow · Sunkissed Sparkle · Tropical Sunlight', 'جوديس جلو · صن كيسد سباركل · تروبيكال صن لايت', 'essence', 'cosmetics', 5.5, 10, 'products/essence-glow-bronze.jpg', 8)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0033', 'Bloom Baby, Bloom! Palette', 'لوحة بلوم بيبي بلوم', 'Eye & face palette · Shadow, highlight, blush', 'لوحة للعين والوجه · ظلال، إبراز، أحمر خدود', 'essence', 'cosmetics', 7, 10, 'products/essence-bloom-baby.jpg', 9)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0011', 'Sky High Mascara', 'ماسكارا سكاي هاي', 'Volume & length · Black', 'كثافة وطول · أسود', 'maybelline', 'cosmetics', 13, 10, 'products/maybelline-sky-high.jpg', 10)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0037', 'Dip Eyeliner Waterproof', 'آيلاينر ديب', '24h long-lasting · 3ml', 'ضد الماء · يدوم 24 ساعة · 3مل', 'essence', 'cosmetics', 3, 10, 'products/essence-dip-eyeliner.jpg', 11)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0036', 'Fix It Like A Boss Brow Gel', 'جل تثبيت الحواجب فيكس إت لايك آ بوس', 'Transparent brow gel · Extra strong', 'جل حواجب شفاف · قوة إضافية', 'essence', 'cosmetics', 3, 10, 'products/essence-fix-brow.jpg', 12)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0040', '8h Matte Liquid Lipstick', 'أحمر شفاه سائل مات 8 ساعات', '8h wear · Assorted shades', 'يدوم 8 ساعات · درجات متعددة', 'essence', 'cosmetics', 3.3, 10, 'products/essence-8h-matte.jpg', 13)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0041', 'Electric Glow Colour Changing Lipstick', 'أحمر شفاه إلكتريك جلو المتغير اللون', 'Adapts to your pH · Vegan · Cruelty-free', 'يتكيف مع حموضة بشرتك · نباتي · خالٍ من القسوة', 'essence', 'cosmetics', 3.5, 10, 'products/essence-electric-glow.jpg', 14)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0028', 'Extreme Shine Volume Lip Gloss', 'جلوس شفاه إكستريم شاين', '01 Crystal Clear · Extreme shine volume', '01 كريستال كلير · لمعان قوي', 'essence', 'cosmetics', 2.5, 10, 'products/essence-extreme-lipgloss.jpg', 15)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0014', 'Heart Core Lip Balm', 'بلسم شفاه هارت كور', 'Fruity · 10% sweet almond oil', 'بنكهات الفاكهة · بزيت اللوز الحلو 10٪', 'essence', 'cosmetics', 1.8, 10, 'products/essence-heart-core.jpg', 16)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0043', 'Healthy Mix Hydrating Primer', 'برايمر مرطب هيلثي ميكس', 'Clean & vegan · Vitamins C+B5+E · Instant radiance', 'نظيف ونباتي · فيتامينات C+B5+E · إشراقة فورية', 'bourjois', 'cosmetics', 15, 10, 'products/bourjois-hydrating-primer.jpg', 17)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0031', 'Hydro Hero Primer', 'برايمر هايدرو هيرو', '48h hydration · Hyaluronic acid & cucumber', 'ترطيب 48 ساعة · حمض الهيالورونيك وخيار', 'essence', 'cosmetics', 3.8, 10, 'products/essence-hydro-primer.jpg', 18)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0029', 'Hello Good Stuff! Primer Serum', 'سيروم برايمر هالو جود ستاف', 'Hydrate & Plump · Blueberry & Squalane · 30ml', 'ترطيب ونفخ · بلوبيري وسكوالان · 30مل', 'essence', 'cosmetics', 5, 10, 'products/essence-primer-serum.jpg', 19)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0027', 'Hello Good Stuff! Pore Minimizing Serum', 'سيروم تصغير المسام هالو جود ستاف', 'With pomegranate & niacinamide · 30ml', 'برمان ونياسيناميد · 30مل', 'essence', 'cosmetics', 5, 10, 'products/essence-pore-serum.jpg', 20)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0030', 'Magic All In One Face Cream', 'كريم الوجه ماجيك أول إن ون', 'Healthy look in seconds · Sheer coverage · Blurring', 'إطلالة صحية بثوانٍ · تغطية شفافة · تنعيم', 'essence', 'cosmetics', 4, 10, 'products/essence-magic-cream.jpg', 21)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0022', 'PureActive Micellar Water', 'ماء ميسيلار بيور أكتيف من غارنييه', 'Cleanses + Purifies · Combination/oily skin · 400ml', 'ينظف + ينقي · للبشرة المختلطة/الدهنية · 400مل', 'garnier', 'skincare', 5.5, 10, 'products/garnier-pure-active-new.jpg', 22)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0023', 'Vitamin C Micellar Cleansing Water', 'ماء ميسيلار فيتامين سي من غارنييه', 'Removes makeup + Cleanses + Radiance · Dull skin', 'يزيل المكياج + ينظف + يعيد إشراقة البشرة · للبشرة الباهتة', 'garnier', 'skincare', 5.5, 10, 'products/garnier-vitamin-c-new.jpg', 23)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0024', 'Micellar Cleansing Water', 'ماء ميسيلار من غارنييه', 'Removes makeup + Cleanses + Soothes · Sensitive skin', 'يزيل المكياج + ينظف + يلطف · للبشرة الحساسة', 'garnier', 'skincare', 5.5, 10, 'products/garnier-sensitive-new.jpg', 24)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0025', 'Sébium H2O 250ml', 'بيوديرما سيبيوم H2O 250مل', 'Purifying cleansing micellar water · Combination/oily skin', 'ماء ميسيلار منظف · للبشرة المختلطة/الدهنية', 'bioderma', 'skincare', 12, 10, 'products/bioderma-sebium-new.jpg', 25)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0026', 'Sébium H2O 500ml', 'بيوديرما سيبيوم H2O 500مل', 'Purifying cleansing micellar water · Combination/oily skin', 'ماء ميسيلار منظف · للبشرة المختلطة/الدهنية', 'bioderma', 'skincare', 16, 10, 'products/bioderma-sebium-new.jpg', 26)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0017', 'Quick Dry Solution', 'سائل مجفف سريع للأظافر', 'Shine · Protects manicure', 'لمعان · يحمي المانيكير', 'pastel', 'cosmetics', 3.5, 10, 'products/pastel-quick-dry.jpg', 27)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0018', 'Nail Care Gel', 'جل العناية بالأظافر', 'With calcium · Strengthening', 'بالكالسيوم · مقوّي', 'pastel', 'cosmetics', 3.5, 10, 'products/pastel-nail-care-gel.jpg', 28)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0100', 'Pink Crystal Mini Kelly', 'حقيبة كيلي المصغرة بالكريستال الوردي', 'Top-handle mini · Kelly silhouette · Crystal-embellished', 'حقيبة صغيرة بمقبض علوي · تصميم كيلي · مرصعة بالكريستال', 'chrisbella', 'bags', 48, 10, 'products/bags/pink-mini-kelly.jpg', 29)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0101', 'Black Structured Tote', 'حقيبة توت مهيكلة سوداء', 'Black leather · Gold knot hardware · Medium size', 'جلد أسود · إكسسوارات ذهبية على شكل عقدة · مقاسات متوسطة', 'chrisbella', 'bags', 70, 10, 'products/bags/black-structured-tote.jpg', 30)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0102', 'Black Canvas Hobo', 'حقيبة هوبو قماشية سوداء', 'Black canvas + leather · Logo-print shoulder strap', 'قماش أسود مع جلد · حزام كتف مطبوع بالشعار', 'chrisbella', 'bags', 70, 10, 'products/bags/black-canvas-hobo.jpg', 31)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0103', 'Olive Mini Tote', 'حقيبة توت زيتونية صغيرة', 'Olive leather · Coin purse charm · 24×17 cm', 'جلد زيتوني · محفظة صغيرة معلقة · قياس 24×17سم', 'chrisbella', 'bags', 65, 10, 'products/bags/olive-mini-tote.jpg', 32)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0104', 'Tan Tote with Silk Scarf', 'حقيبة توت بيج بوشاح', 'Tan leather · Silk scarf tied on handle', 'جلد بيج · وشاح حريري مربوط على المقبض', 'chrisbella', 'bags', 60, 10, 'products/bags/tan-scarf-tote.jpg', 33)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0105', 'Burgundy Canvas Hobo', 'حقيبة هوبو خمرية', 'Burgundy canvas + leather · Printed shoulder strap', 'قماش خمري مع جلد · حزام كتف مطبوع', 'chrisbella', 'bags', 70, 10, 'products/bags/burgundy-hobo.jpg', 34)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0106', 'Black Crystal Clutch with Silver Chain', 'حقيبة كلتش سوداء بالكريستال بسلسلة فضية', 'Black crystal · Silver chain · Evening', 'كريستال أسود · سلسلة فضية · مناسبة للسهرات', 'chrisbella', 'bags', 50, 10, 'products/bags/black-chain-clutch.jpg', 35)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0107', 'Gold Chevron Floral Clasp Clutch', 'كلتش ذهبي شيفرون بمشبك زهرة', 'Chevron crystal pattern · Floral crystal clasp · Gold frame', 'نقشة شيفرون بالكريستال · مشبك زهرة كريستال · إطار ذهبي', 'chrisbella', 'bags', 100, 10, 'products/bags/gold-chevron-clutch.jpg', 36)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0108', 'Gold Woven Crystal Pouch', 'كلتش ذهبي منسوج بالكريستال', 'Puffy pouch shape · Gold crystal weave · Gold chain', 'شكل بوتشيت منتفخ · كريستال ذهبي · سلسلة ذهبية', 'chrisbella', 'bags', 100, 10, 'products/bags/gold-woven-pouch.jpg', 37)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0109', 'Gold Crystal Bow Clutch', 'كلتش ذهبي بربطة كريستال', 'All-over gold crystal · Bow detail · Gold chain', 'كريستال ذهبي بالكامل · ربطة على الواجهة · سلسلة ذهبية', 'chrisbella', 'bags', 60, 10, 'products/bags/gold-bow-clutch.jpg', 38)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0112', 'Black Crystal Studded Hobo', 'حقيبة هوبو سوداء بالكريستال', 'All-over black crystal · Curved hobo · Gold hardware', 'كريستال أسود بالكامل · تصميم هوبو منحني · إكسسوارات ذهبية', 'chrisbella', 'bags', 75, 10, 'products/bags/black-studded-hobo.jpg', 39)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0113', 'Charcoal Sparkle Hobo', 'حقيبة هوبو رمادية داكنة لامعة', 'Dark charcoal crystal · Rounded top handle · Gold hardware', 'كريستال رمادي داكن · مقبض علوي مستدير · إكسسوارات ذهبية', 'chrisbella', 'bags', 60, 10, 'products/bags/charcoal-sparkle-hobo.jpg', 40)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0114', 'Silver Crystal Mesh Hobo', 'حقيبة هوبو فضية بشبكة كريستال', 'Silver crystal mesh · Top handle · Curved shape', 'شبكة كريستال فضية · مقبض علوي · تصميم منحني', 'chrisbella', 'bags', 60, 10, 'products/bags/silver-crystal-mesh.jpg', 41)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0117', 'Black CB Crystal Moon Bag', 'حقيبة موون CB سوداء بالكريستال', 'Half-moon shape · Black crystal · CBBC logo · Top handle', 'شكل نصف قمر · كريستال أسود · شعار CBBC · مقبض علوي', 'chrisbella', 'bags', 75, 10, 'products/bags/black-cb-moon.jpg', 42)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0118', 'Silver Crystal Braided-Handle Bag', 'حقيبة فضية بمقبض مضفر بالكريستال', 'Silver crystal · Braided top handle · Sold out', 'كريستال فضي · مقبض علوي مضفر · نفدت الكمية', 'chrisbella', 'bags', 45, 0, 'products/bags/silver-braided-handle.jpg', 43)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0119', 'Silver Rose Medallion Hobo', 'حقيبة هوبو فضية بميدالية زهرة', 'Silver crystal · Raised rose medallion · Top handle', 'كريستال فضي · ميدالية زهرة بارزة · مقبض علوي', 'chrisbella', 'bags', 80, 10, 'products/bags/silver-rose-medallion.jpg', 44)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0120', 'Silver Chevron Floral Clasp Clutch', 'كلتش فضي شيفرون بمشبك زهرة', 'Chevron crystal pattern · Floral crystal clasp · Silver frame', 'نقشة شيفرون بالكريستال · مشبك زهرة كريستال · إطار فضي', 'chrisbella', 'bags', 100, 10, 'products/bags/silver-chevron-clutch.jpg', 45)
ON CONFLICT (sku) DO NOTHING;
INSERT INTO products (sku, name_en, name_ar, desc_en, desc_ar, brand, category, price, quantity, image, sort_order)
VALUES ('P0121', 'Gold Swirl-Pattern Clutch', 'كلتش ذهبي بنقشة دوامة', 'Swirl crystal pattern · Gold frame · Shoulder chain', 'نقشة دوامة بالكريستال · إطار ذهبي · سلسلة كتف', 'chrisbella', 'bags', 80, 10, 'products/bags/gold-swirl-clutch.jpg', 46)
ON CONFLICT (sku) DO NOTHING;
