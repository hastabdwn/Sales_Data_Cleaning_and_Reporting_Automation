CREATE OR REPLACE VIEW warehouse.vw_sales AS
WITH 
    -- ===========================
    -- 🗓️ Date Dimension
    -- ===========================
    dim_date AS (
        SELECT 
            date_id,
            date AS order_date,
            "year",
            "month"
        FROM warehouse.date
    ),

    -- ===========================
    -- 👤 Customer Dimension
    -- ===========================
    dim_customer AS (
        SELECT 
            customer_id,
            customer_age,
            customer_gender
        FROM warehouse.customer
    ),

    -- ===========================
    -- 🌍 Location Dimension
    -- ===========================
    dim_location AS (
        SELECT 
            location_id,
            country,
            "state"
        FROM warehouse.location
    ),

    -- ===========================
    -- 📦 Product Dimension
    -- ===========================
    dim_product AS (
        SELECT 
            product_id,
            product_category,
            sub_category
        FROM warehouse.product
    ),

    -- ===========================
    -- 💰 Fact Table (Sales)
    -- ===========================
    fact_sales AS (
        SELECT 
            sales_id,
            date_id,
            customer_id,
            location_id,
            product_id,
            quantity,
            unit_cost,
            unit_price,
            "cost",
            revenue,
            profit
        FROM warehouse.sales
    )

-- ===========================
-- 🔗 Final Unified Dataset
-- ===========================
SELECT 
    fs.sales_id,
    dd.order_date,
    dd."year",
    dd."month",
    c.customer_id,
    c.customer_age,
    c.customer_gender,
    l.location_id,
    l.country,
    l."state",
    p.product_id,
    p.product_category,
    p.sub_category,
    fs.quantity,
    fs.unit_cost,
    fs.unit_price,
    fs."cost",
    fs.revenue,
    fs.profit

FROM fact_sales fs
JOIN dim_date dd ON fs.date_id = dd.date_id
JOIN dim_customer c ON fs.customer_id = c.customer_id
JOIN dim_location l ON fs.location_id = l.location_id
JOIN dim_product p ON fs.product_id = p.product_id
ORDER BY dd.order_date;