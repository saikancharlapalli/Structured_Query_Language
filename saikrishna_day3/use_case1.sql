use cdg_hyd_jfs_058;

SELECT * FROM students;

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C001', 'Ananya', 'Rao', 'ananya.rao@example.test', 9876501001, '2007-04-18', 'BSc Computer Science', '2026-07-01', 8.40, 'ACTIVE');

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C002', 'Vivaan', 'Sharma', 'vivaan.sharma@example.test', NULL, '2006-12-09', 'BCom', '2026-07-01', 7.75, 'ACTIVE');

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C003', 'Diya', 'Nair', 'diya.nair@example.test', 9876501003, '2007-02-25', 'BA Economics', '2026-07-02', 9.10, 'ACTIVE'),
('STU26C004', 'Kabir', 'Singh', 'kabir.singh@example.test', 9876501004, '2006-08-14', 'BSc Mathematics', '2025-07-01', 6.85, 'SUSPENDED'),
('STU26C005', 'Tara', 'Bose', 'tara.bose@example.test', 9876501005, '2005-09-30', 'BA History', '2024-07-01', 5.90, 'DROPPED');

-- email already exists
INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C006', 'Charam', 'Gupta', 'kabir.singh@example.test', 9876501006, '2006-08-18', 'BSc Mathematics', '2025-07-01', 8.64, 'Active');

-- CGPA of 10.50
INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C007', 'Micheal', 'Rajappa', 'micheal.rajappa@example.test', 9876501007, '2005-05-25', 'BA English', '2025-07-01', 10.50, 'Active');

-- status with transferred
INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26C006', 'Charan', 'Gupta', 'charan.gupta@example.test', 9876501006, '2006-08-18', 'BSc Mathematics', '2025-07-01', 8.64, 'TRANSFERRED');

UPDATE students SET cgpa = 8.65 WHERE admission_number = 'STU26C001';

UPDATE students SET cgpa = cgpa+0.20 WHERE program_name = 'BSc Computer Science' AND student_status = 'ACTIVE' AND cgpa+0.20 < 10.00;

UPDATE students SET student_status = 'ACTIVE' WHERE admission_number = 'STU25C004';

UPDATE students SET email = 'vivaan.sharma@example.test' WHERE admission_number = 'STU26C003';

SELECT * FROM students WHERE student_status = 'DROPPED';
DELETE FROM students WHERE student_status = 'DROPPED';

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU-TEMP-001', 'Temp', 'Raja', 'temp.raja@example.test', 9876501000, '2006-08-18', 'BSc Mathematics', '2025-07-01', 8.64, 'TRANSFERRED');
SELECT * FROM students WHERE admission_number= 'STU-TEMP-001';
DELETE FROM students WHERE admission_number= 'STU-TEMP-001';
