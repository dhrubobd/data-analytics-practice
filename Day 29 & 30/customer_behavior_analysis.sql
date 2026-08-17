#কোন Customer Group সবচেয়ে বেশি Revenue Generate করছে?
select gender, SUM(purchase_amount) as revenue
from customer
group by gender;

#কোন Product Category সবচেয়ে বেশি Sales বা Revenue তৈরি করছে?

SELECT
    Category,
    COUNT(*) AS Total_Sales,
    SUM(purchase_amount) AS Total_Revenue
FROM customer
GROUP BY Category
ORDER BY Total_Revenue DESC;


#Discount দিলে কি Customer-এর Purchase Amount বৃদ্ধি পায়?
SELECT
    discount_applied,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(purchase_amount),2) AS Avg_Purchase_Amount,
    SUM(purchase_amount) AS Total_Revenue
FROM customer
GROUP BY discount_applied;


#কোন Season-এ সবচেয়ে বেশি Revenue হয়েছে?

SELECT
    season,
    COUNT(*) AS total_sales,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY season
ORDER BY total_revenue DESC;

#কোন Payment Method সবচেয়ে বেশি ব্যবহার হয়েছে?
SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY payment_method
ORDER BY total_orders DESC;

#কোন Age Group কোম্পানির মোট Revenue-তে সবচেয়ে বেশি অবদান রাখছে?

SELECT age_group,
   

    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount),2) AS avg_purchase_amount

FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;