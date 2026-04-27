
SELECT 
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    ROUND(SUM(payment_value), 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS orders_count
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE order_status = 'delivered'
GROUP BY month
ORDER BY month;


SELECT 
    product_category_name,
    COUNT(*) AS items_sold,
    ROUND(SUM(price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY product_category_name
ORDER BY total_revenue DESC
LIMIT 10;


SELECT 
    ROUND(AVG(payment_value), 2) AS avg_order_value,
    ROUND(AVG(
        julianday(order_delivered_customer_date) - 
        julianday(order_purchase_timestamp)
    ), 1) AS avg_delivery_days
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE order_status = 'delivered';


SELECT 
    customer_state,
    COUNT(*) AS orders_count,
    ROUND(SUM(payment_value), 2) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments p ON o.order_id = p.order_id
WHERE order_status = 'delivered'
GROUP BY customer_state
ORDER BY orders_count DESC
LIMIT 5;


SELECT 
    review_score,
    COUNT(*) AS count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentage
FROM reviews
GROUP BY review_score
ORDER BY review_score;