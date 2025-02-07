create database assesment
use assesment
select * from assessment_dataset

-- 1. Data Exploration and Cleaning
-- First, identify inconsistencies and clean the dataset.
-- Check for missing values and anomalies
-- Check for missing values and anomalies
SELECT * FROM assessment_dataset 
WHERE TransactionID IS NULL 
   OR CustomerID IS NULL 
   OR TransactionAmount IS NULL;

-- Standardize PaymentMethod values (e.g., 'DeltCard' to 'Delt Card')
UPDATE assessment_dataset 
SET PaymentMethod = 'Delt Card' 
WHERE PaymentMethod IN ('DeltCard', 'Delt Card');

-- Correct misplaced data (e.g., row 4)
UPDATE assessment_dataset 
SET PaymentMethod = 'UP', 
    TransactionAmount = 86465.63 
WHERE TransactionID = 4;

-- Remove rows with critical missing data (e.g., rows 21, 23, 24)
DELETE FROM assessment_dataset 
WHERE ProductName IS NULL OR City IS NULL;



-- 2. Aggregate Metrics
-- Calculate total sales, average transaction value, and more.

-- Total Sales
SELECT SUM(TransactionAmount) AS TotalSales 
FROM assessment_dataset;

-- Average Transaction Amount by Payment Method
SELECT PaymentMethod, AVG(TransactionAmount) AS AvgTransaction 
FROM assessment_dataset 
GROUP BY PaymentMethod;

-- Sales by Region
SELECT Region, SUM(TransactionAmount) AS TotalSales 
FROM assessment_dataset 
GROUP BY Region 
ORDER BY TotalSales DESC;

-- Most Sold Products
SELECT ProductName, SUM(Quantity) AS TotalQuantitySold 
FROM assessment_dataset 
GROUP BY ProductName 
ORDER BY TotalQuantitySold DESC;

-- 3. Drill-Down Analysis
-- Analyze customer behavior, product performance, and store metrics.

-- Sales by StoreType and Region
SELECT StoreType, Region, SUM(TransactionAmount) AS TotalSales 
FROM assessment_dataset 
GROUP BY StoreType, Region;

-- Customer Demographics (Age/Gender)
SELECT 
    CustomerGender, 
    AVG(CustomerAge) AS AvgAge, 
    COUNT(*) AS TotalTransactions 
FROM assessment_dataset 
GROUP BY CustomerGender;

-- Discount Impact on Sales
SELECT 
    CASE 
        WHEN DiscountPercent > 30 THEN 'High Discount'
        ELSE 'Low Discount'
    END AS DiscountCategory,
    SUM(TransactionAmount) AS TotalSales
FROM assessment_dataset 
GROUP BY DiscountCategory;

-- Return Rate by Product
SELECT 
    ProductName, 
    (SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS ReturnRate 
FROM assessment_dataset 
GROUP BY ProductName;


