-- Q1: Total customers
SELECT COUNT(*) AS total_customers FROM customers_cleaned;


-- Q2: Churn rate
SELECT 
    ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned;


-- Q3: Average revenue per user (ARPU)
SELECT ROUND(AVG(monthlycharges::numeric),2) AS avg_revenue FROM customers_cleaned;


-- Q4: Churn by contract type
SELECT contract, 
       COUNT(*) AS total, 
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY contract
ORDER BY churn_rate DESC;

-- Q5: Top 5 payment methods leading to churn
SELECT paymentmethod, 
       ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY paymentmethod
ORDER BY churn_rate DESC
LIMIT 5;


--INTERMEDIATE QUESTIONS
--Q. Find out if new customers churn more
SELECT 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-1 year'
        WHEN tenure BETWEEN 13 AND 24 THEN '1-2 years'
        WHEN tenure BETWEEN 25 AND 48 THEN '2-4 years'
        ELSE '4+ years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY tenure_group
ORDER BY churn_rate DESC;

--Q. Which internet service (DSL, Fiber Optic, None) causes higher churn?
SELECT internetservice,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY internetservice
ORDER BY churn_rate DESC;

--Q. Revenue contribution per customer = MonthlyCharges * Tenure
SELECT ROUND(AVG(monthlycharges * tenure),2) AS avg_lifetime_value
FROM customers_cleaned;

--Q. Average Lifetime Value (LTV)
--Revenue contribution per customer = MonthlyCharges * Tenure
SELECT ROUND(AVG(monthlycharges * tenure),2) AS avg_lifetime_value
FROM customers_cleaned;

--Q.Churn Rate by Payment Method
--Some payment methods may increase churn.
SELECT paymentmethod,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY paymentmethod
ORDER BY churn_rate DESC;

--Q. Identify High-Value Churners (Most Revenue Lost)
--Which churned customers contributed most?
SELECT customerid, tenure, monthlycharges, totalcharges
FROM customers_cleaned
WHERE churn = 'Yes'
ORDER BY totalcharges DESC
LIMIT 10;

--Churn by Services Used (Feature Combination)
--Which services are most common among churners?
SELECT 
    internetservice, 
    phoneservice, 
    streamingtv,
    COUNT(*) AS churned_customers
FROM customers_cleaned
WHERE churn = 'Yes'
GROUP BY internetservice, phoneservice, streamingtv
ORDER BY churned_customers DESC
LIMIT 10;

--Q. Contract Type vs Revenue vs Churn
--Compare average revenue and churn across contract types.
SELECT contract,
       ROUND(AVG(monthlycharges),2) AS avg_revenue,
       ROUND(AVG(tenure),2) AS avg_tenure,
       ROUND(100.0 * SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS churn_rate
FROM customers_cleaned
GROUP BY contract
ORDER BY churn_rate DESC;

--Q. Predictive Features for Churn (Data Prep for ML)
--Identify categorical + numeric features most correlated with churn.
SELECT gender, 
       COUNT(*) FILTER (WHERE churn='Yes') AS churned,
       COUNT(*) FILTER (WHERE churn='No') AS retained
FROM customers_cleaned
GROUP BY gender;

--Advanced Telecom SQL Challenges
-- Customer Retention Strategy Simulation
-- “If we give a 10% discount to high-risk customers, what is the potential revenue saved?”
SELECT SUM(monthlycharges * 0.10) AS potential_discount_cost,
       SUM(totalcharges) AS revenue_saved
FROM customers_cleaned
WHERE churn='Yes' AND contract='Month-to-month';

--Q. Churn Forecasting Dataset Preparation
--Create a labeled dataset for ML (features + churn column) directly in SQL.
CREATE VIEW churn_features AS
SELECT customerid,
       tenure,
       monthlycharges,
       totalcharges,
       contract,
       paymentmethod,
       internetservice,
       churn
FROM customers_cleaned;
 











