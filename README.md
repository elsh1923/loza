# የፍኖተ ሎዛ ሰ/ት/ቤት የመዝሙር ጥናት አቴንዳንስ መከታተያ 2017 ዓ.ም
### Finote Loza Church Hymn Study Attendance Tracker (2017 E.C.)

A modern, responsive, Ethiopian calendar-based attendance tracking web application integrated with **Supabase Cloud Database**.

![Screenshot](https://pfst.cf2.poecdn.net/base/image/aceb48651ff651be74a8d0cabf372467c78311134794dd4b5b49d207d9d67fee?w=400&h=400)

---

## ✨ Features

- 📅 **Ethiopian Calendar Native Support**: Automatically computes Ethiopian dates, months, and leap year calculations (including Pagume).
- ☁️ **Supabase Cloud Sync**: Real-time two-way synchronization of students/persons, study dates, and attendance records.
- ⚡ **Bulk Attendance Actions**: Quick 1-click column actions (`✓ ሁሉም / Mark All Present`, `✗ ሁሉም / Mark All Absent`) to update all persons at once.
- 📥 **Excel Upload & Download**:
  - Upload existing student rosters from `.xlsx` or `.csv`.
  - Export complete attendance sheets with Ethiopian dates, attendance marks (`✓`, `✗`, `ፍ`), totals, and gender statistics.
- 📊 **Dynamic Statistics & Analytics**: Live attendance rates, total members, male/female distribution, and daily totals.
- 🌓 **Dark & Light Mode**: Automatic theme detection matching user OS preferences.
- 💾 **Offline Fallback**: Uses IndexedDB storage locally when offline.

---

## 🗄️ Database Setup (Supabase)

To initialize the Supabase database:
1. Open your project on the [Supabase Dashboard](https://supabase.com/dashboard).
2. Navigate to **SQL Editor**.
3. Run the SQL script from [`supabase_schema.sql`](supabase_schema.sql).

---

## 🚀 Running Locally

You can open `index.html` directly in any web browser, or run a local static server:

```bash
node server.js
```

Then visit [http://localhost:3000](http://localhost:3000).

---

## 📄 License
MIT License
