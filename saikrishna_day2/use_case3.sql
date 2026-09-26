USE cdg_hyd_jfs_058;
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_code VARCHAR(12) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80) NOT NULL,
    postal_code VARCHAR(12) NOT NULL,
    customer_type VARCHAR(15) NOT NULL DEFAULT 'Regular',
    credit_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uk_customer_code` UNIQUE (customer_code),
    CONSTRAINT `uk_email` UNIQUE (email),
    CONSTRAINT `uk_phone` UNIQUE (phone),
    CONSTRAINT `pk_customers_customer_id` PRIMARY KEY (customer_id),
    CONSTRAINT `chk_creidt_limit_non_negative` CHECK (credit_limit >= 0.00)
);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code) VALUES ('CST124', 'Raj', 'Gupta', 'raj@gmail.com', 9856298493, '2006-05-29', 'Hyderabad', 'Telangana', '578773');

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, credit_limit) VALUES ('CST236', 'Niraj', 'Nambi', 'niraj@gmail.com', NULL, '2015-03-13', 'Vijayawada', 'Andhra Pradesh', '523772', 13000);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, credit_limit) VALUES ('CST729', 'Niraj', 'Chopra', 'niraj@gmail.com', NULL, '2016-12-31', 'Jaipur', 'Rajasthan', '598465', 23784.34);

SELECT * FROM customers;
