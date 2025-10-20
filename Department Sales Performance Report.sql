-- Department Sales Performance Report
SELECT 
    l.country,
    p.product_category,
    SUM(s.revenue) AS total_revenue,
    SUM(s.profit) AS total_profit
FROM warehouse.sales s
JOIN warehouse.location l ON s.location_id = l.location_id
JOIN warehouse.product p ON s.product_id = p.product_id
JOIN warehouse.date d ON s.date_id = d.date_id
WHERE d."year" = 2015
GROUP BY l.country, p.product_category
ORDER BY total_revenue DESC;