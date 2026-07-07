# Celestia Accessories — E-Commerce Website

Luxury accessories & cosmetics boutique in Amman, Jordan.

## Quick Deploy

1. Push this repo to GitHub
2. Go to [app.netlify.com](https://app.netlify.com) → Import from GitHub
3. Deploy — your site is live

## Setup Checklist

### 1. PayPal (for online payments)

1. Go to [developer.paypal.com](https://developer.paypal.com)
2. Create an app → copy the **Client ID**
3. In `index.html`, replace `YOUR_PAYPAL_CLIENT_ID` with your Client ID
4. For testing, add `&disable-funding=credit` to the SDK URL
5. When going live, remove `&buyer-country=` params

### 2. Supabase (for order storage)

1. Go to [supabase.com](https://supabase.com) → Create a project
2. Go to SQL Editor → paste contents of `supabase-schema.sql` → Run
3. Go to Settings → API → copy **Project URL** and **anon public** key
4. In `index.html`, replace `YOUR_PROJECT.supabase.co` and `YOUR_ANON_KEY`

### 3. Custom Domain

- On Netlify: Domain settings → Add custom domain
- Point your domain's DNS to Netlify's nameservers
- Free SSL included

## Features

- Full e-commerce cart with quantity controls
- Color/variant selectors per product
- PayPal Smart Payment Buttons (Visa, Mastercard, PayPal)
- Cash on Delivery option
- 16% sales tax calculated automatically
- Delivery fees (2 JOD Amman / 3 JOD outside)
- Orders sent to WhatsApp + saved to Supabase
- Brand filter tabs (Bourjois, Max Factor, Essence, Maybelline, Pastel)
- Mobile responsive
- AR/EN language toggle
- Login/signup (Supabase Auth)
- Customer reviews
- FAQ accordion
- Contact form

## File Structure

```
celestia-site/
├── index.html          # Full website
├── logo.jpg            # Nav logo
├── hero-video.mp4      # Hero background video
├── hero-video-2.mp4    # Alternate videos
├── hero-video-3.mp4
├── supabase-schema.sql # Database schema
├── README.md
└── products/           # Product images (25 files)
```

## Tech Stack

- Vanilla HTML/CSS/JS (no build step)
- PayPal JS SDK
- Supabase JS Client
- Google Fonts (Cormorant Garamond + DM Sans)

## WhatsApp Integration

All orders are sent to **07 8607 7100** via WhatsApp with full itemized details including tax and delivery.
