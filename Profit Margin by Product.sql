-- Profit Margin by Product
SELECT 
    p.product_category,
    ROUND(SUM(s.profit), 2) AS total_profit,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND((SUM(s.profit) / SUM(s.revenue)) * 100, 2) AS profit_margin_percent
FROM warehouse.sales s
JOIN warehouse.product p ON s.product_id = p.product_id
GROUP BY p.product_category
ORDER BY profit_margin_percent DESC;