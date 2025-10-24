-- Calculate average account balance by region
SELECT region, AVG(balance) AS avg_balance
FROM customers
GROUP BY region
ORDER BY avg_balance DESC;