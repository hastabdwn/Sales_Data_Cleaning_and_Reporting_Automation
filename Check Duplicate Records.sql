-- Check Duplicate Table Customer
SELECT
	customer_id,
	customer_age,
	customer_gender,
	COUNT(*) AS Duplicate_Count
FROM warehouse.customer
GROUP BY
	customer_id,
	customer_age,
	customer_gender
HAVING COUNT(*) > 1;

-- Check Duplicate Table Date
SELECT
	date_id,
	date,
	"year",
	"month",
	COUNT(*) AS Duplicate_Count
FROM warehouse.date
GROUP BY
	date_id,
	date,
	"year",
	"month"
HAVING COUNT(*) > 1;

-- Check Duplicate Table Location
SELECT
	location_id,
	country,
	"state",
	COUNT(*) AS Duplicate_Count
FROM warehouse.location
GROUP BY
	location_id,
	country,
	"state"
HAVING COUNT(*) > 1;

-- Check Duplicate Table Product
SELECT
	product_id,
	product_category,
	sub_category,
	COUNT(*) AS Duplicate_Count
FROM warehouse.product
GROUP BY
	product_id,
	product_category,
	sub_category
HAVING COUNT(*) > 1;

-- Check Duplicate Table Sales
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
	"revenue",
	profit,
	COUNT(*) AS Duplicate_Count
FROM warehouse.sales
GROUP BY
	sales_id,
	date_id,
	customer_id,
	location_id,
	product_id,
	quantity,
	unit_cost,
	unit_price,
	"cost",
	"revenue",
	profit
HAVING COUNT(*) > 1;

