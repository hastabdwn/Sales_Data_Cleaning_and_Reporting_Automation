-- Revenue by Month (Year = 2015)
SELECT 
    d."year",
    d."month",
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(SUM(s.profit), 2) AS total_profit
FROM warehouse.sales s
JOIN warehouse.date d 
    ON s.date_id = d.date_id
WHERE d."year" = 2015
GROUP BY d."year", d."month"
ORDER BY d."month";
