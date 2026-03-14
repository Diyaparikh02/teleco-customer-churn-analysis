SELECT * FROM customers_churn LIMIT 10;

-- Phase 1 — Overall Business Health
--Business Question
--What percentage of customers are leaving the company?

SELECT 
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    COUNT(*) - SUM(churn_flag) AS retained_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate
FROM customers_churn;

-- Phase 2 — Contract Type Impact
-- Business Question
-- Which contract types are most likely to churn?

SELECT contract,COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(AVG(churn_flag) * 100, 2) AS churn_rate
FROM customers_churn
GROUP BY contract
ORDER BY churn_rate DESC ;

-- Phase 3 Revenue Risk from Churn
--Business Question
--How much monthly revenue is lost due to churn?

SELECT 
SUM(monthlycharges) AS monthly_revenue_loss
FROM customers_churn
WHERE churn = 'Yes';

-- Phase 4 — Tenure Impact on Churn
--Business Question
--Do new customers churn more than long-term customers?

SELECT CASE WHEN tenure <= 12 THEN '0-1 year'
            WHEN tenure > 12 AND tenure <= 24 THEN '1-2 years'
            WHEN tenure > 24 AND tenure <= 36 THEN '2-3 years'
            WHEN tenure > 36 AND tenure <= 48 THEN '3-4 years'
            WHEN tenure > 48 AND tenure <= 60 THEN '4-5 years'
            ELSE '5+ years' END AS tenure_group,
            COUNT(*) AS total_customers,
            SUM(churn_flag) AS churned_customers
FROM customers_churn
GROUP BY tenure_group
ORDER BY tenure_group;

-- Phase 5 — Internet Service Impact
--Business Question
--Which internet service types experience the highest churn?

SELECT internetservice, COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(AVG(churn_flag)*100,2 ) AS churn_rate
FROM customers_churn
GROUP BY internetservice
ORDER BY churn_rate DESC; 

--Phase 6 — Payment Method Risk
--Business Question
--Does payment method influence churn behaviour?

SELECT paymentmethod, COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,                               
ROUND(AVG(churn_flag)*100,2 ) AS churn_rate
FROM customers_churn
GROUP BY paymentmethod
ORDER BY churn_rate DESC; 

--Phase 8 — Customer Value vs Churn
--Business Question
--Are high-spending customers leaving?

SELECT CASE WHEN monthlycharges <=25 THEN 'Low Value'
            WHEN monthlycharges > 25 AND monthlycharges <= 50 THEN 'Medium Value'
            WHEN monthlycharges > 50 AND monthlycharges <= 75 THEN 'High Value'
            ELSE 'Very High Value' END AS customer_value,
            COUNT(*) AS total_customers,
            SUM(churn_flag) AS churned_customers,
            ROUND(AVG(churn_flag)*100,2 ) AS churn_rate 
FROM customers_churn
GROUP BY customer_value 
ORDER BY churn_rate DESC;

-- phase 9 Identify customers with highest spending within each contract type
-- Business Question
-- Who are the top paying customers within each contract category?

SELECT customerid, contract, monthlycharges, spending_rank
FROM (
    SELECT customerid, contract, monthlycharges,
    RANK() OVER (
        PARTITION BY contract
        ORDER BY monthlycharges DESC
    ) AS spending_rank
    FROM customers_churn
) ranked
WHERE spending_rank <= 5
ORDER BY contract, spending_rank;

-- Phase 10 Compare each customer's tenure to the average tenure
--Business Question
--Which customers have tenure lower than the company average (potential churn risk)?

SELECT customerid, tenure, average_tenure
FROM
(
    SELECT customerid, tenure,
    AVG(tenure) OVER () AS average_tenure
    FROM customers_churn
) AS tenure_comparison
WHERE tenure < average_tenure
ORDER BY tenure ASC;
