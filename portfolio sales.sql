-- 1️⃣ Total Revenue by Country
SELECT 
  COUNTRY,
  SUM(SALES) AS total_revenue
FROM `sodium-diode-467901-v4.retail_sales.sales_data`
GROUP BY COUNTRY
ORDER BY total_revenue DESC;


-- 2️⃣ Monthly Revenue Trend
SELECT 
  YEAR_ID AS year,
  MONTH_ID AS month,
  SUM(SALES) AS total_revenue
FROM `sodium-diode-467901-v4.retail_sales.sales_data`
GROUP BY year, month
ORDER BY year, month;


-- 3️⃣ Top 10 Most Profitable Product Lines
SELECT 
  PRODUCTLINE,
  SUM(SALES) AS total_revenue
FROM `sodium-diode-467901-v4.retail_sales.sales_data`
GROUP BY PRODUCTLINE
ORDER BY total_revenue DESC
LIMIT 10;


-- 4️⃣ Average Sales by Deal Size
SELECT 
  DEALSIZE,
  ROUND(AVG(SALES), 2) AS avg_sales
FROM `sodium-diode-467901-v4.retail_sales.sales_data`
GROUP BY DEALSIZE
ORDER BY avg_sales DESC;


-- 5️⃣ Top 10 Customers by Total Sales
SELECT 
  CUSTOMERNAME,
  COUNTRY,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sodium-diode-467901-v4.retail_sales.sales_data`
GROUP BY CUSTOMERNAME, COUNTRY
ORDER BY total_sales DESC
LIMIT 10;
