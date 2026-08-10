-- ============================================================
-- Celestia — Contact Messages
-- Run in Supabase → SQL Editor → New Query → paste → Run
-- ============================================================

CREATE TABLE IF NOT EXISTS messages (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  phone TEXT,
  email TEXT,
  message TEXT NOT NULL,
  read BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS messages_created_at_idx ON messages(created_at DESC);
CREATE INDEX IF NOT EXISTS messages_read_idx ON messages(read);

ALTER TABLE messages ENABLE ROW LEVEL SECURITY;

-- Anyone can INSERT (contact form on public site)
DROP POLICY IF EXISTS "anon can insert messages" ON messages;
CREATE POLICY "anon can insert messages"
  ON messages FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- Only authenticated (Rana) can READ / UPDATE / DELETE
DROP POLICY IF EXISTS "authenticated can read messages" ON messages;
CREATE POLICY "authenticated can read messages"
  ON messages FOR SELECT
  TO authenticated USING (true);

DROP POLICY IF EXISTS "authenticated can update messages" ON messages;
CREATE POLICY "authenticated can update messages"
  ON messages FOR UPDATE
  TO authenticated USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "authenticated can delete messages" ON messages;
CREATE POLICY "authenticated can delete messages"
  ON messages FOR DELETE
  TO authenticated USING (true);
