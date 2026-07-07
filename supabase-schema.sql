-- Celestia Accessories — Supabase Schema
-- Run this in your Supabase SQL Editor

-- Orders table
CREATE TABLE orders (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  customer_name TEXT NOT NULL,
  phone TEXT NOT NULL,
  address TEXT NOT NULL,
  area TEXT DEFAULT 'amman',
  items JSONB NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL,
  tax DECIMAL(10,2) NOT NULL,
  delivery_fee DECIMAL(10,2) NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  payment_method TEXT DEFAULT 'cod',
  paypal_id TEXT,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

-- Allow inserts from anonymous users (for placing orders)
CREATE POLICY "Allow anonymous inserts" ON orders
  FOR INSERT WITH CHECK (true);

-- Allow reads only for authenticated users (admin)
CREATE POLICY "Allow admin reads" ON orders
  FOR SELECT USING (auth.role() = 'authenticated');
