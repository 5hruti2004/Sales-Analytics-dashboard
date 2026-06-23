CREATE DATABASE Sales_Analysis;
USE Sales_Analysis;

SELECT * FROM sales LIMIT 10;

SELECT Item,
sum(Units) AS Units_Sold,
sum(Total_Amount) AS Revenue
FROM sales
GROUP BY Item
ORDER BY Revenue DESC;

SELECT Region,
SUM(Total_Amount) AS Revenue
FROM sales
GROUP BY Region
ORDER BY Revenue DESC;

SELECT SalesMan,
SUM(Total_Amount) AS Revenue
FROM sales
GROUP BY SalesMan
ORDER BY Revenue DESC;

SELECT Manager,
SUM(Total_Amount) AS Revenue
FROM sales
GROUP BY Manager
ORDER BY Revenue DESC;

SELECT MONTH(STR_TO_DATE(OrderDate,'%d-%m-%Y'))AS Month,
SUM(Total_Amount) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;