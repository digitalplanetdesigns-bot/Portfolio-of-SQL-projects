-- Rank products by total sales using window function
SELECT product_name, SUM(sales_amount) AS total_sales,
       RANK() OVER (ORDER BY SUM(sales_amount) DESC) AS sales_rank
FROM sales
GROUP BY product_name;

-- Find top-selling products with a subquery
SELECT product_name, sales_amount
FROM sales
WHERE sales_amount > (SELECT AVG(sales_amount) FROM sales);