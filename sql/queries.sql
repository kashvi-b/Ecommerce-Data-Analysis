
# total revenue
SELECT ROUND(SUM(TotalSales),2) AS Total_Revenue
FROM ecommerce_data;
# total orders
SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM ecommerce_data;
# top 10 selling products
SELECT Description,
       SUM(Quantity) AS Total_Quantity_Sold
FROM ecommerce_data
GROUP BY Description
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;
# top customers by spending 
SELECT CustomerID,
       ROUND(SUM(TotalSales),2) AS Total_Spent
FROM ecommerce_data
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;
# revenue by country
SELECT Country,
       ROUND(SUM(TotalSales),2) AS Revenue
FROM ecommerce_data
GROUP BY Country
ORDER BY Revenue DESC;
# average order value 
SELECT ROUND(AVG(TotalSales),2) AS Avg_Order_Value
FROM ecommerce_data;
#most expensive products
SELECT Description,
       MAX(UnitPrice) AS Highest_Price
FROM ecommerce_data
GROUP BY Description
ORDER BY Highest_Price DESC
LIMIT 10;
# monthly revenue trend
SELECT MONTH(InvoiceDate) AS Month,
       ROUND(SUM(TotalSales),2) AS Revenue
FROM ecommerce_data
GROUP BY Month
ORDER BY Month;
# customers with multiple orders
SELECT CustomerID,
       COUNT(DISTINCT InvoiceNo) AS Orders_Count
FROM ecommerce_data
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
HAVING Orders_Count > 1
ORDER BY Orders_Count DESC;
# highest revenue products
SELECT Description,
       ROUND(SUM(TotalSales),2) AS Revenue
FROM ecommerce_data
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;


