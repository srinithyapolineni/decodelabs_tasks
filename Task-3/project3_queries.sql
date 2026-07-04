-- Display First 10 Records
SELECT *
FROM `dataset for data analytics`
LIMIT 10;

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM `dataset for data analytics`;

-- Total Sales
SELECT SUM(Quantity * UnitPrice) AS Total_Sales
FROM `dataset for data analytics`;

-- Average Sale
SELECT AVG(Quantity * UnitPrice) AS Average_Sale
FROM `dataset for data analytics`;

-- Top 10 Highest Sales
SELECT
    `ï»¿OrderID`,
    Product,
    Quantity,
    UnitPrice,
    (Quantity * UnitPrice) AS Sales
FROM `dataset for data analytics`
ORDER BY Sales DESC
LIMIT 10;

-- Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM `dataset for data analytics`;

-- Average Unit Price
SELECT AVG(UnitPrice) AS Average_UnitPrice
FROM `dataset for data analytics`;

-- Orders by Payment Method
SELECT PaymentMethod, COUNT(*) AS Total_Orders
FROM `dataset for data analytics`
GROUP BY PaymentMethod;

-- Orders by Order Status
SELECT OrderStatus, COUNT(*) AS Total_Orders
FROM `dataset for data analytics`
GROUP BY OrderStatus;

-- Revenue by Product
SELECT Product,
       SUM(Quantity * UnitPrice) AS Total_Revenue
FROM `dataset for data analytics`
GROUP BY Product
ORDER BY Total_Revenue DESC;