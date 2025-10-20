-- Check Null Table Customer
SELECT
	*
FROM warehouse.customer
WHERE
	customer_id IS NULL OR
	customer_age IS NULL OR
	customer_gender IS NULL;

-- Check Null Table Date
SELECT
	*
FROM warehouse.date
WHERE
	date_id IS NULL OR
	date IS NULL OR
	"year" IS NULL OR
	"month" IS NULL;

-- Check Null Table Location
SELECT
	*
FROM warehouse.location
WHERE
	location_id IS NULL OR
	country IS NULL OR
	"state" IS NULL;

-- Check Null Table Product
SELECT
	*
FROM warehouse.product
WHERE
	product_id IS NULL OR
	product_category IS NULL OR
	sub_category IS NULL;

-- Check Null Table Sales
SELECT
	*
FROM warehouse.sales
WHERE
	sales_id IS NULL OR
	date_id IS NULL OR
	customer_id IS NULL OR
	location_id IS NULL OR
	product_id IS NULL OR
	quantity IS NULL OR
	unit_cost IS NULL OR
	unit_price IS NULL OR
	"cost" IS NULL OR
	"revenue" IS NULL OR
	profit IS NULL;