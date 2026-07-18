USE businessdb;
-- Step 8: Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM global_superstore;


-- Step 9: Total Customers
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM global_superstore;


-- Step 10: Top 10 Products by Sales
SELECT 
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- Step 11: Top 10 Customers
SELECT 
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- Step 12: Sales by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY Category;


-- Step 13: Profit by Category
SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM global_superstore
GROUP BY Category;


-- Step 14: Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY Region;


-- Step 15: Profit by Region
SELECT 
    Region,
    SUM(Profit) AS Total_Profit
FROM global_superstore
GROUP BY Region;


-- Step 16: Sales by Segment
SELECT 
    Segment,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY Segment;


-- Step 17: Sales by Ship Mode
SELECT 
    `Ship Mode`,
    SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY `Ship Mode`;