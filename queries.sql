select * from orders;

# Total Sales by Region
SELECT region, 
       SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;

# Top 5 Cities by Sales
SELECT city, 
       SUM(sale_price) AS total_sales
FROM orders
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;


# Average Discount by Product Category
SELECT category, 
       AVG(discount) AS average_discount
FROM orders
GROUP BY category;


# Monthly Sales Trend
SELECT strftime('%Y-%m', order_date) AS month,
       SUM(sale_price) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;


# Product Categories with Negative Profit
SELECT category, 
       SUM(profit) AS total_profit
FROM orders
GROUP BY category
HAVING total_profit < 0;
