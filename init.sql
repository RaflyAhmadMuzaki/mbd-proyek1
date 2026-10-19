-- ============================================================
-- SOAL 3: Schema SALAM & Tabel mahasiswas dengan Constraints
-- ============================================================
CREATE SCHEMA IF NOT EXISTS SALAM;

CREATE TABLE SALAM.mahasiswas (
    id SERIAL PRIMARY KEY,                        -- Primary Key
    nim VARCHAR(15) NOT NULL UNIQUE,              -- Unique Constraint
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,           -- Unique Constraint
    ipk NUMERIC(3,2) CHECK (ipk >= 0.00 AND ipk <= 4.00), -- Check Constraint
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- SOAL 4: User Creation & Role-Based Access Control (RBAC)
-- ============================================================

-- A. backend_dev (Role: CRUD Semua Table)
CREATE USER backend_dev WITH PASSWORD 'backend123';
GRANT USAGE ON SCHEMA SALAM TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO backend_dev;
ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO backend_dev;

-- B. bi_dev (Role: Hanya read/select Semua Table/View)
CREATE USER bi_dev WITH PASSWORD 'bidev123';
GRANT USAGE ON SCHEMA SALAM TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;
ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM GRANT SELECT ON TABLES TO bi_dev;

-- C. data_engineer (Role: CREATE, MODIFY, DROP semua objects + CRUD)
CREATE USER data_engineer WITH PASSWORD 'dataeng123';
GRANT ALL PRIVILEGES ON SCHEMA SALAM TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO data_engineer;
ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM GRANT ALL ON TABLES TO data_engineer;