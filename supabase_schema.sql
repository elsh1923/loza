-- =========================================================================
-- Finote Loza Church Hymn Study Attendance Database Schema for Supabase
-- =========================================================================

-- 1. Students / Persons Table
CREATE TABLE IF NOT EXISTS public.students (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    gender TEXT DEFAULT '',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Attendance Dates Table (Ethiopian Calendar Dates)
CREATE TABLE IF NOT EXISTS public.dates (
    id TEXT PRIMARY KEY, -- e.g. "2017-1-1"
    year INT NOT NULL,
    month INT NOT NULL,
    day INT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Attendance Records Table
CREATE TABLE IF NOT EXISTS public.attendance (
    id TEXT PRIMARY KEY, -- Composite key: "studentId_dateKey"
    student_id TEXT NOT NULL,
    date_key TEXT NOT NULL,
    status TEXT NOT NULL, -- 'present', 'absent', 'leave'
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Row Level Security (RLS)
ALTER TABLE public.students ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dates ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.attendance ENABLE ROW LEVEL SECURITY;

-- Allow Public (Anon) Read & Write Access
DROP POLICY IF EXISTS "Allow public read students" ON public.students;
CREATE POLICY "Allow public read students" ON public.students FOR SELECT USING (true);

DROP POLICY IF EXISTS "Allow public insert students" ON public.students;
CREATE POLICY "Allow public insert students" ON public.students FOR INSERT WITH CHECK (true);

DROP POLICY IF EXISTS "Allow public update students" ON public.students;
CREATE POLICY "Allow public update students" ON public.students FOR UPDATE USING (true);

DROP POLICY IF EXISTS "Allow public delete students" ON public.students;
CREATE POLICY "Allow public delete students" ON public.students FOR DELETE USING (true);


DROP POLICY IF EXISTS "Allow public read dates" ON public.dates;
CREATE POLICY "Allow public read dates" ON public.dates FOR SELECT USING (true);

DROP POLICY IF EXISTS "Allow public insert dates" ON public.dates;
CREATE POLICY "Allow public insert dates" ON public.dates FOR INSERT WITH CHECK (true);

DROP POLICY IF EXISTS "Allow public update dates" ON public.dates;
CREATE POLICY "Allow public update dates" ON public.dates FOR UPDATE USING (true);

DROP POLICY IF EXISTS "Allow public delete dates" ON public.dates;
CREATE POLICY "Allow public delete dates" ON public.dates FOR DELETE USING (true);


DROP POLICY IF EXISTS "Allow public read attendance" ON public.attendance;
CREATE POLICY "Allow public read attendance" ON public.attendance FOR SELECT USING (true);

DROP POLICY IF EXISTS "Allow public insert attendance" ON public.attendance;
CREATE POLICY "Allow public insert attendance" ON public.attendance FOR INSERT WITH CHECK (true);

DROP POLICY IF EXISTS "Allow public update attendance" ON public.attendance;
CREATE POLICY "Allow public update attendance" ON public.attendance FOR UPDATE USING (true);

DROP POLICY IF EXISTS "Allow public delete attendance" ON public.attendance;
CREATE POLICY "Allow public delete attendance" ON public.attendance FOR DELETE USING (true);

-- Enable Realtime Replication
ALTER PUBLICATION supabase_realtime ADD TABLE public.students;
ALTER PUBLICATION supabase_realtime ADD TABLE public.dates;
ALTER PUBLICATION supabase_realtime ADD TABLE public.attendance;
