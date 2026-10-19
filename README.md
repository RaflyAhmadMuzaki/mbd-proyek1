# UTS MBD - Proyek 1 (Dockerized PostgreSQL & pgAdmin4)

Repositori ini dibuat untuk memenuhi tugas **Proyek 1 / UTS Mata Kuliah Manajemen Basis Data**. Project ini mengimplementasikan kontainerisasi PostgreSQL & pgAdmin4 menggunakan Docker Compose, konfigurasi schema & constraints, serta Role-Based Access Control (RBAC).

---

## 👤 Identitas
- **Nama:** Rafly Ahmad Muzaki
- **NIM:** [Isi NIM Lo]
- **Kelas:** Informatika - V/[Isi Kelas Lo]

---

## ⚙️ Environment & Services
Konfigurasi menggunakan `.env` untuk menyembunyikan credential:
- **PostgreSQL 15 (Alpine):** Container `postgres_Rafly`, External Port `22XXX`
- **pgAdmin4:** Container `pgadmin_Rafly`, External Port `44XXX`

---

## 🗄️ Database Setup (`init.sql`)

1. **Schema & Table (`SALAM.mahasiswas`)**
   - Primary Key: `id`
   - Unique Constraints: `nim`, `email`
   - Check Constraint: `ipk` (range `0.00` - `4.00`)

2. **Role-Based Access Control (RBAC)**
   - `bi_dev`: Hak akses `SELECT` pada schema `SALAM`.
   - `backend_dev`: Hak akses `CRUD` (Select, Insert, Update, Delete) + Sequence usage.
   - `data_engineer`: Full DDL & DML (Create, Modify, Drop, CRUD).

---

## 🚀 Quick Start

1. Copy `.env.example` ke `.env` (atau atur nilai variabel port/password).
2. Jalankan container:
   ```bash
   docker compose up -d
