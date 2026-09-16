# ፍኖተ ሎዛ ሰ/ት/ቤት የመዝሙር ጥናት አቴንዳንስ መከታተያ
## Finote Loza Church Hymn Study Attendance Tracker 2017 E.C.

A web-based attendance tracking system for the Finote Loza Church Hymn Study program, built with vanilla HTML, CSS, and JavaScript with Supabase cloud database integration.

### ✨ Features

- **Ethiopian Calendar** — Full Ethiopian date support with Amharic month names
- **Supabase Cloud Database** — Real-time cloud sync with offline IndexedDB fallback
- **Excel Import/Export** — Upload student lists from Excel and export attendance reports
- **Bulk Attendance** — Mark all students as present/absent for a given date
- **Real-time Sync** — Live updates across multiple devices via Supabase Realtime
- **Dark Mode** — Automatic dark/light mode based on system preference
- **Search & Filter** — Quickly find students by name
- **Responsive Design** — Works on desktop, tablet, and mobile

### 🚀 Getting Started

#### Local Development

```bash
# Start the local development server
node server.js

# Open in browser
# http://localhost:3000
```

#### Supabase Database Setup

1. Go to your [Supabase Dashboard](https://supabase.com/dashboard)
2. Open **SQL Editor** in the left sidebar
3. Paste the contents of `supabase_schema.sql`
4. Click **Run** (▶️)

### 🏗️ Project Structure

```
loza/
├── index.html           # Main application (HTML + CSS + JS)
├── server.js            # Local development server (Node.js)
├── supabase_schema.sql  # Database schema for Supabase
└── README.md            # This file
```

### 🔒 Security

- Row Level Security (RLS) enabled on all Supabase tables
- DOM manipulation uses safe methods (textContent, createElement) to prevent XSS
- Directory traversal protection in the local server
- No inline HTML injection — all user content is sanitized

### 📦 Deployment

This is a static site that can be deployed to:
- **Vercel** — Push to GitHub, import in Vercel dashboard
- **Netlify** — Drag and drop or connect GitHub repo
- **GitHub Pages** — Enable in repository settings

### 🛠️ Tech Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Database**: Supabase (PostgreSQL)
- **Calendar**: Ethiopian Calendar conversion
- **Excel**: SheetJS (xlsx)
- **Fonts**: Noto Sans Ethiopic, Inter

### 📄 License

MIT
