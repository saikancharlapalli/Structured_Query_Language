USE cdg_hyd_jfs_058;

 CREATE TABLE courses(
    course_id INT UNSIGNED  AUTO_INCREMENT,
    course_code VARCHAR(15) NOT NULL,
    course_title VARCHAR(150) NOT NULL,
    category VARCHAR(60) NOT NULL,
    duration_hours DECIMAL(5,1) NOT NULL,
    fee DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    delivery_mode VARCHAR(20) NOT NULL DEFAULT 'ONLINE',
    course_status VARCHAR(20) NOT NULL DEFAULT 'DRAFT',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_courses PRIMARY KEY (course_id),
    CONSTRAINT uq_courses_courses_code UNIQUE (course_code),

    CONSTRAINT chk_courses_duration CHECK (duration_hours > 0),

    CONSTRAINT chk_courses_fee CHECK (fee >= 0),

    CONSTRAINT chk_courses_delivery_mode CHECK (delivery_mode IN ('ONLINE', 'CLASSROOM', 'HYBRID')),
    CONSTRAINT chk_courses_status CHECK (course_status IN ('DRAFT', 'ACTIVE', 'INACTIVE','ARCHIVED'))


 );
 SELECT * FROM courses;

 INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40.0, 6000.00, 'CLASSROOM', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-SQL-102', 'MySQL Essentials', 'Database', 32.0, 4500.00, 'ONLINE', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee)
VALUES
('CRS-WEB-103', 'Responsive Web Design', 'Web Development', 28.0, 0.00);

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-TST-104', 'Software Testing Basics', 'Testing', 24.0, 3500.00, 'HYBRID', 'ACTIVE'),
('CRS-OLD-105', 'Legacy Systems Overview', 'Technology', 12.0, 2000.00, 'ONLINE', 'ARCHIVED');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-JAVA-101', 'Advanced Java', 'Programming', 30.0, 7000.00, 'ONLINE', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-NULL-106', NULL, 'Programming', 20.0, 2000.00, 'ONLINE', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-ZERO-107', 'Zero Duration Course', 'Programming', 0.0, 1000.00, 'ONLINE', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-NEG-108', 'Negative Fee Course', 'Programming', 10.0, -500.00, 'ONLINE', 'ACTIVE');

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-SELF-109', 'Self Paced Course', 'Programming', 15.0, 1000.00, 'SELF_PACED', 'ACTIVE');

UPDATE courses SET fee = 6500.00 WHERE course_code = 'CRS-JAVA-101';
UPDATE courses SET fee = fee * 1.10 WHERE course_status = 'ACTIVE';
UPDATE courses SET course_status = 'ACTIVE', fee = 2500.00 WHERE course_code = 'CRS-WEB-103';
UPDATE courses SET duration_hours = duration_hours + 4 WHERE category = 'Testing';
UPDATE courses SET duration_hours = 0 WHERE course_code = 'CRS-TST-104';

SELECT * FROM courses WHERE course_code = 'CRS-OLD-105';
DELETE FROM courses WHERE course_code = 'CRS-OLD-105';
SELECT * FROM courses WHERE course_code = 'CSR-OLD-105';

INSERT INTO courses (course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
('CRS-TEMP-999', 'Temporary Course', 'Technology', 10.0, 1000.00, 'ONLINE', 'DRAFT');

SELECT * FROM courses WHERE course_code = 'CRS-TEMP-999';
DELETE FROM courses WHERE course_code = 'CRS-TEMP-999';
SELECT * FROM courses WHERE category = 'Testing' AND fee < 5000.00;
DELETE FROM courses WHERE category = 'Testing' AND fee < 5000.00;
SELECT * FROM courses WHERE category = 'Testing' AND fee < 5000.00;
