-- Australian Retail Sales Analysis
-- Munna Naharki | github.com/munluns451

-- Q1: Which city has the highest average daily sales?
SELECT Location, 
       ROUND(AVG("Daily Average Sales"), 2) AS avg_daily_sales
FROM retail_data
GROUP BY Location
ORDER BY avg_daily_sales DESC;

-- Q2: Which business type makes the most weekly revenue?
SELECT "Type of Business",
       ROUND(AVG("Weekly Average Sales"), 2) AS avg_weekly_sales
FROM retail_data
GROUP BY "Type of Business"
ORDER BY avg_weekly_sales DESC;

-- Q3: What is the most popular payment method?
SELECT "Payment Methods",
       COUNT(*) AS popular_method
FROM retail_data
GROUP BY "Payment Methods"
ORDER BY popular_method DESC;

-- Q4: Which business type has best customer satisfaction?
SELECT "Type of Business",
       COUNT(*) AS customer_satisfaction
FROM retail_data
WHERE "Customer Satisfaction" = 'Good'
GROUP BY "Type of Business"
ORDER BY customer_satisfaction DESC;

-- Q5: Which city has the most stores?
SELECT Location,
       COUNT(*) AS highest_store_city
FROM retail_data
GROUP BY Location
ORDER BY highest_store_city DESC;

-- Q6: Which business type is most profitable?
SELECT "Type of Business",
       COUNT(*) AS most_profitable
FROM retail_data
WHERE "Store Profitability" = 'Increased'
GROUP BY "Type of Business"
ORDER BY most_profitable DESC;