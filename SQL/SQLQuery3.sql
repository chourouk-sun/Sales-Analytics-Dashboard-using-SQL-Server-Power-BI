CREATE DATABASE db_superStore;
GO
USE db_superStore;

CREATE TABLE Superstore (
    Row_ID INT,
    Order_ID NVARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode NVARCHAR(50),
    Customer_ID NVARCHAR(50),
    Customer_Name NVARCHAR(100),
    Segment NVARCHAR(50),
    Country NVARCHAR(50),
    City NVARCHAR(50),
    State NVARCHAR(50),
    Postal_Code NVARCHAR(20),
    Region NVARCHAR(50),
    Product_ID NVARCHAR(50),
    Category NVARCHAR(50),
    Sub_Category NVARCHAR(50),
    Product_Name NVARCHAR(150),
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT
);
/*cleaning the data */
SELECT TOP 10 * FROM Superstore;
SELECT COUNT(*) FROM Superstore;
SELECT * 
FROM INFORMATION_SCHEMA.TABLES;
SELECT TOP 10 * 
FROM [Sample - Superstore];

SELECT COUNT(*) 
FROM [Sample - Superstore];

DROP TABLE Superstore;
EXEC sp_rename '[Sample - Superstore]', 'Superstore';

SELECT TOP 10 * FROM Superstore;

/* 4:  (Data Cleaning) */ 
/* delete empty */
SELECT * 
FROM orders
WHERE sales IS NULL;




