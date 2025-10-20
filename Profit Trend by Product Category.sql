-- Profit Trend by Product Category
WITH product_profit AS (
    SELECT 
        p.product_category,
        d."month",
        SUM(s.profit) AS monthly_profit
    FROM warehouse.sales s
    JOIN warehouse.date d ON s.date_id = d.date_id
    JOIN warehouse.product p ON s.product_id = p.product_id
    WHERE d."year" = 2015
    GROUP BY p.product_category, d."month"
)
SELECT 
    product_category,
    "month",
    monthly_profit,
    COALESCE(LAG(monthly_profit) OVER (PARTITION BY product_category ORDER BY "month"), 0) AS prev_profit,
    ROUND(
        CASE 
            WHEN LAG(monthly_profit) OVER (PARTITION BY product_category ORDER BY "month") IS NULL THEN 0
            ELSE ((monthly_profit - LAG(monthly_profit) OVER (PARTITION BY product_category ORDER BY "month")) 
                   / NULLIF(LAG(monthly_profit) OVER (PARTITION BY product_category ORDER BY "month"), 0)) * 100
        END, 2
    ) AS growth_percent
FROM product_profit
ORDER BY product_category, "month";