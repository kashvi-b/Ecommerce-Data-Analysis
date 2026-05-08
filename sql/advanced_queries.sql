# Advanced 
# top 5 customers by customer
SELECT Country,
       COUNT(DISTINCT CustomerID) AS Total_Customers
FROM ecommerce_data
GROUP BY Country
ORDER BY Total_Customers DESC
LIMIT 5;
# product purchased together
SELECT a.InvoiceNo,
       a.Description AS Product1,
       b.Description AS Product2
FROM ecommerce_data a
JOIN ecommerce_data b
ON a.InvoiceNo = b.InvoiceNo
AND a.Description < b.Description
LIMIT 20;

