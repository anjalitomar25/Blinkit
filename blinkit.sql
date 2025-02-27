use blinkit;
select count(*) from grocery;


---'DATA CLEANING'
UPDATE blinkit_data
SET Item_Fat_Content = 
    CASE 
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
    END;

'KPI'
'Total Sales'

SELECT CAST(SUM(`Total Sales`) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM grocery;

'Average Sales'
SELECT ROUND(AVG(`Total Sales`),2)  AS Avg_Sales
FROM 
grocery;

'No. of orders'
SELECT COUNT(*) AS No_of_Orders
FROM grocery

'Average Rating'
SELECT CAST(AVG(Rating) AS DECIMAL(10,1)) AS Avg_Rating
FROM grocery;

'Total Sales by Fat Content'
SELECT Item_Fat_Content, CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS Total_Sales
FROM grocery
GROUP BY Item_Fat_Content

'Total Sales by Item Type'
SELECT `Item Type`, CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS Total_Sales
FROM grocery
GROUP BY `Item Type`
ORDER BY Total_Sales DESC

'Total Sales by Outlet Establishment'
SELECT Outlet_Establishment_Year, CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS `Total Sales`
FROM grocery
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year

'Percentage of Sales by Outlet Size'
SELECT 
    Outlet_Size, 
    CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS `Total Sales`,
    CAST((SUM(`Total Sales`) * 100.0 / SUM(SUM(`Total Sales`)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM grocery
GROUP BY Outlet_Size
ORDER BY `Total Sales` DESC

'Sales by Outlet Location'
SELECT Outlet_Location_Type, CAST(SUM(`Total Sales`) AS DECIMAL(10,2)) AS `Total Sales`
FROM grocery
GROUP BY Outlet_Location_Type
ORDER BY `Total Sales` DESC

