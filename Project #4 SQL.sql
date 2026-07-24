-- ========================================================================================================================================================
-- Supply Chain Analytics SQL Project
-- Author : Pranshi Mishra
-- Database : supply_chain_analysis
-- Tool : MySQL Workbench
-- Total Business Questions : 20
-- ========================================================================================================================================================

CREATE DATABASE supply_chain_analysis;
USE supply_chain_analysis;
SELECT *
FROM DataCoSupplyChainDataset_Cleaned
LIMIT 10;
DESCRIBE DataCoSupplyChainDataset_Cleaned;

-- ========================================================================================================================================================
-- Question 1
-- What is the total number of orders?

SELECT COUNT(*) AS Total_Orders
FROM DataCoSupplyChainDataset_Cleaned;

-- ========================================================================================================================================================
-- Question 2
-- What is the total sales revenue?

SELECT ROUND(SUM(Sales),2) AS Total_Sales_Revenue
FROM DataCoSupplyChainDataset_Cleaned;

-- ========================================================================================================================================================
-- Question 3
-- What is the total profit generated?

SELECT ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM DataCoSupplyChainDataset_Cleaned;

-- ========================================================================================================================================================
-- Question 4
-- What is the average profit per order?

SELECT ROUND(AVG(`Order Profit Per Order`),2) AS Average_Profit
FROM DataCoSupplyChainDataset_Cleaned;

-- ========================================================================================================================================================
-- Question 5
-- Which customer segment generates the highest sales?

SELECT `Customer Segment`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Customer Segment`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 6
-- Which product category generates the highest sales?

SELECT `Category Name`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Category Name`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 7
-- Which department generates the highest profit?

SELECT `Department Name`,ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Department Name`
ORDER BY Total_Profit DESC;

-- ========================================================================================================================================================
-- Question 8
-- Which shipping mode is used the most?

SELECT `Shipping Mode`,COUNT(*) AS Total_Orders
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Shipping Mode`
ORDER BY Total_Orders DESC;

-- ========================================================================================================================================================
-- Question 9
-- Which region generates the highest sales?

SELECT `Order Region`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Order Region`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 10
-- Which country has the highest number of orders?

SELECT `Order Country`,COUNT(DISTINCT `Order Id`) AS Total_Orders
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Order Country`
ORDER BY Total_Orders DESC;

-- ========================================================================================================================================================
-- Question 11
-- Which city generates the highest sales revenue?

SELECT `Order City`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Order City`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 12
-- Which market contributes the highest revenue?

SELECT `Market`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Market`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 13
-- Which product generates the highest sales?

SELECT `Product Name`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Product Name`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 14
-- Which product category has the highest profit?

SELECT `Category Name`,ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Category Name`
ORDER BY Total_Profit DESC;

-- ========================================================================================================================================================
-- Question 15
-- Which order status occurs most frequently?

SELECT `Order Status`,COUNT(*) AS Total_Orders
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Order Status`
ORDER BY Total_Orders DESC;

-- ========================================================================================================================================================
-- Question 16
-- What is the average actual shipping time by shipping mode?

SELECT `Shipping Mode`,ROUND(AVG(`Days for shipping (real)`),2) AS Average_Shipping_Time
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Shipping Mode`
ORDER BY Average_Shipping_Time DESC;

-- ========================================================================================================================================================
-- Question 17
-- Which shipping mode generates the highest sales?

SELECT `Shipping Mode`,ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Shipping Mode`
ORDER BY Total_Sales DESC;

-- ========================================================================================================================================================
-- Question 18
-- Which customer segment generates the highest profit?

SELECT `Customer Segment`,ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Customer Segment`
ORDER BY Total_Profit DESC;

-- ========================================================================================================================================================
-- Question 19
-- Which department receives the highest number of orders?

SELECT `Department Name`,COUNT(DISTINCT `Order Id`) AS Total_Orders
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Department Name`
ORDER BY Total_Orders DESC;

-- ========================================================================================================================================================
-- Question 20
-- Which region has the highest average order value?

SELECT `Order Region`,ROUND(AVG(Sales),2) AS Average_Order_Value
FROM DataCoSupplyChainDataset_Cleaned
GROUP BY `Order Region`
ORDER BY Average_Order_Value DESC;


-- ========================================================================================================================================================
-- End of Supply Chain Analytics SQL Project
-- ========================================================================================================================================================
