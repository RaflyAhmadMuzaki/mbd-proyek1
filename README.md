# Proyek 1 - Manajemen Basis Data

Repositori ini berisi berkas konfigurasi Docker Compose dan skrip SQL untuk Ujian Tengah Semester (Proyek 1) Mata Kuliah Manajemen Basis Data.

## Fitur & Layanan Container
- **PostgreSQL**: PostgreSQL v15 Containerized
- **pgAdmin4**: Web UI Manajemen Database Containerized
- **Schema & Constraints**: Schema `SALAM` dengan tabel `mahasiswas` (PK, Unique, Check Constraints)
- **Role-Based Access Control (RBAC)**: Konfigurasi user `backend_dev`, `bi_dev`, dan `data_engineer`

## Cara Menjalankan
1. Pastikan Docker Desktop berjalan.
2. Jalankan perintah berikut di terminal:
   ```bash
   docker compose up -d