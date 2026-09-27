USE cdg_hyd_jfs_058;

CREATE TABLE instructors(
    instructor_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    instructor_code VARCHAR(12) NOT NULL UNIQUE,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    specialization VARCHAR(100) NOT NULL,
    years_experience TINYINT UNSIGNED NOT NULL DEFAULT 0,
    hourly_rate DECIMAL(10,2) NOT NULL,
    employment_type VARCHAR(20) NOT NULL DEFAULT 'PART_TIME',
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    joined_on DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_instructors_experience CHECK (years_experience BETWEEN 0 AND 50),
    CONSTRAINT chk_instructors_hourly_rate CHECK (hourly_rate > 0),
    CONSTRAINT chk_instructors_employment_type CHECK (employment_type IN ('FULL_TIME', 'PART_TIME', 'CONTRACT')),
    CONSTRAINT chk_instructors_active_flag CHECK (is_active IN (0, 1))
);

SELECT * FROM instructors;
SHOW TABLES;

INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, emloyment_type,is_active,joined_on)
VALUES
('INS_JV_001', 'kavya', 'Menon', 'kavya.menon@examle.test', 'Java', 8, 1500.00, 'FULL_TIME', TRUE, '2021-'-14);
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.test', 'Databases', 12, 1800.00, 'CONTRACT', TRUE, '2019-02-01'),
('INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.test', 'Web Development', 5, 1200.00, DEFAULT, DEFAULT, '2023-08-21');
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.test', 'Software Testing', 7, 1350.00, 'PART_TIME', TRUE, '2022-01-10'),
('INS-OLD-005', 'Leela', 'Shah', 'leela.shah@example.test', 'Mainframe Systems', 25, 2000.00, 'CONTRACT', FALSE, '2010-05-17');

SELECT * FROM instructors;
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-JV-001', 'Test', 'User', 'test1@example.test', 'Java', 2, 1000.00, 'PART_TIME', TRUE, '2026-01-01');
 INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-TEST-01', 'Test', 'User', 'kavya.menon@example.test', 'Java', 2, 1000.00, 'PART_TIME', TRUE, '2026-01-01');
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-NULL-01', 'Test', 'User', 'null@example.test', NULL, 5, 1000.00, 'PART_TIME', TRUE, '2026-01-01');
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-EXP-51', 'Test', 'User', 'exp51@example.test', 'Java', 51, 1000.00, 'PART_TIME', TRUE, '2026-01-01');
INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-RATE-0', 'Test', 'User', 'rate0@example.test', 'Java', 5, 0.00, 'PART_TIME', TRUE, '2026-01-01');
 INSERT INTO instructors (instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-FREE-01', 'Test', 'User', 'freelance@example.test', 'Java', 5, 1000.00, 'FREELANCE', TRUE, '2026-01-01');
UPDATE instructors SET hourly_rate = 1500.00 WHERE instructor_code = 'INS-QA-004';
SELECT instructor_code, hourly_rate FROM instructors WHERE instructor_code = 'INS-QA-004';
UPDATE instructors SET hourly_rate = hourly_rate * 1.08 WHERE employment_type = 'CONTRACT' AND is_active = TRUE;
UPDATE instructors SET specialization = 'Full-Stack Web Development' WHERE instructor_code = 'INS-WB-003';
UPDATE instructors SET years_experience = years_experience + 1 WHERE is_active = TRUE  AND years_experience < 50;
UPDATE instructors SET is_active = FALSE WHERE instructor_code = 'INS-OLD-005' AND is_active = TRUE;

SELECT * FROM instructors WHERE instructor_code = 'INS-OLD-005'  AND is_active = FALSE;
DELETE FROM instructors WHERE instructor_code = 'INS-OLD-005'  AND is_active = FALSE;
SELECT * FROM instructors WHERE instructor_code = 'INS-OLD-005';
INSERT INTO instructors
(instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on)
VALUES
('INS-TEMP-99', 'Temporary', 'Instructor', 'temp99@example.test', 'Java', 2, 900.00, 'PART_TIME', TRUE, '2026-09-27');
SELECT * FROM instructors WHERE instructor_code = 'INS-TEMP-99';
DELETE FROM instructors WHERE instructor_code = 'INS-TEMP-99';
SELECT * FROM instructors WHERE employment_type = 'PART_TIME'  AND is_active = TRUE  AND years_experience < 6;
DELETE FROM instructors WHERE employment_type = 'PART_TIME'  AND is_active = TRUE  AND years_experience < 6;
SELECT * FROM instructors;
