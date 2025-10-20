-- ==========================================
-- TABEL DATE
-- ==========================================
CREATE TABLE warehouse.date (
    date_id SERIAL PRIMARY KEY,
    date DATE,
    "year" INT,
    "month" VARCHAR(20)
);

-- ==========================================
-- TABEL CUSTOMER
-- ==========================================
CREATE TABLE warehouse.customer (
    customer_id SERIAL PRIMARY KEY,
    customer_age INT,
    customer_gender VARCHAR(10)
);

-- ==========================================
-- TABEL LOCATION
-- ==========================================
CREATE TABLE warehouse.location (
    location_id SERIAL PRIMARY KEY,
    country VARCHAR(50),
    "state" VARCHAR(50)
);

-- ==========================================
-- TABEL PRODUCT
-- ==========================================
CREATE TABLE warehouse.product (
    product_id SERIAL PRIMARY KEY,
    product_category VARCHAR(50),
    sub_category VARCHAR(50)
);

-- ==========================================
-- TABEL SALES (FACT TABLE)
-- ==========================================
CREATE TABLE warehouse.sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    customer_id INT,
    location_id INT,
    product_id INT,
    quantity INT,
    unit_cost NUMERIC(10,2),
    unit_price NUMERIC(10,2),
    "cost" NUMERIC(12,2),
    revenue NUMERIC(12,2),
    profit NUMERIC(12,2),

    CONSTRAINT fk_date FOREIGN KEY (date_id) REFERENCES warehouse.date(date_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES warehouse.customer(customer_id),
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES warehouse.location(location_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES warehouse.product(product_id)
);
