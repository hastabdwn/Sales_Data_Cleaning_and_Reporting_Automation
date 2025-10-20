-- Top 10 Customers
SELECT 
    s.customer_id,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(SUM(s.profit), 2) AS total_profit,
    RANK() OVER (ORDER BY SUM(s.revenue) DESC) AS rank
FROM warehouse.sales s
GROUP BY s.customer_id
ORDER BY total_revenue DESC
LIMIT 10;
