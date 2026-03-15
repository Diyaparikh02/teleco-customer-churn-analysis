# Telco Customer Churn Analysis

# Python | SQL | Excel Dashboard

# Project Overview

Customer churn is one of the most critical challenges faced by telecommunications companies. When customers leave the service, companies lose recurring revenue and must spend significantly more resources to acquire new customers.

The objective of this project is to analyze telecom customer data to understand **why customers churn and which customer segments are most at risk**.

This project follows an end-to-end data analytics workflow:

• **Python** was used for data cleaning and exploratory data analysis (EDA).
• **SQL** was used to perform business-focused analysis and segmentation.
• **Microsoft Excel** was used to build an interactive dashboard to visualize insights.

The final outcome is a **business intelligence dashboard** that helps stakeholders monitor churn risk and design effective customer retention strategies.

# Business Objectives
This project aims to answer several important business questions related to customer churn.

1. What is the **overall customer churn rate**?
2. How many customers are **retained vs churned**?
3. How much **monthly revenue is lost due to churn**?
4. Which **contract types experience the highest churn**?
5. How does **customer tenure influence churn behavior**?
6. Do **internet services influence churn probability**?
7. How do **payment methods affect churn patterns**?
8. Who are the **highest paying customers within each contract type**?
9. Which customers have **low tenure but high monthly charges and are at risk of churn**?

Answering these questions helps businesses **identify high-risk customers and design better retention strategies**.


# Tools and Technologies
1 Python
Pandas
NumPy
Matplotlib
Seaborn

2 SQL
PostgreSQL

3 Microsoft Excel


# Project Workflow
The project was completed in the following stages:

1. Data Cleaning using Python
2. Exploratory Data Analysis (EDA)
3. Feature Engineering
4. SQL Business Analysis
5. Excel Dashboard Development
6. Business Insights and Recommendations


# Dataset Description
The dataset contains telecom customer information including:

• CustomerID
• Gender
• SeniorCitizen
• Tenure
• Contract
• InternetService
• PaymentMethod
• MonthlyCharges
• TotalCharges
• Churn
Each row represents **one telecom customer**.
The target variable is **Churn**, which indicates whether a customer has discontinued the service.


# Data Cleaning Process (Python)
Before performing analysis, the dataset required several preprocessing steps to ensure reliability.

### Handling Missing Values
The **TotalCharges** column contained missing values.
Steps taken:
• Converted the column into numeric format.
• Removed rows containing missing values.
This ensured that revenue calculations would remain accurate.

### Data Type Conversion
Some columns were stored as incorrect data types.
Adjustments included:
• Converting **TotalCharges** into numeric format
• Treating **SeniorCitizen** as a categorical variable
• Converting **Churn** into a binary flag for easier analysis

### Feature Engineering
Additional features were created to support deeper analysis.
**Churn Flag**
A binary variable was created:
1 → Customer churned
0 → Customer retained
This allowed churn calculations through aggregations.

**Tenure Groups**
Customers were categorized based on their tenure duration.
This helped analyze churn patterns across different customer lifecycle stages.

**Customer Value Segmentation**
Customers were categorized based on their monthly spending levels.
Segments include:
• Low Value
• Medium Value
• High Value
• Very High Value
This helps identify whether **high-revenue customers are leaving the service**.

# Exploratory Data Analysis (Python)
Exploratory Data Analysis was performed to understand relationships between variables and churn behavior.
The goal of EDA was to identify **patterns and drivers of churn**.

### Churn Distribution
The first step was analyzing the distribution of churned and retained customers.
This helped determine:
• overall churn proportion
• the scale of the retention problem

### Tenure vs Churn Analysis
Customer tenure was analyzed to determine how long customers typically stay before leaving.
Findings showed that:
• customers with **short tenure have significantly higher churn risk**
• long-term customers are more stable
This indicates that **early customer experience is critical for retention**.

### Monthly Charges vs Churn
Monthly charges were analyzed to determine whether pricing influences churn.
Observations showed that:
• customers paying **higher monthly charges tend to churn more frequently**
• these customers represent **high revenue risk segments**

### Contract Type vs Churn
Contract type was analyzed to determine its influence on customer retention.
Key insight:
• **Month-to-month contracts experience the highest churn rates**
Long-term contracts significantly reduce churn.

### Internet Service Impact
Internet service types were analyzed to identify service categories with higher churn.
This helps identify whether certain services require:
• pricing adjustments
• service improvements

### Payment Method Behavior
Customer payment methods were analyzed to detect behavioral patterns.
Findings showed that:
• customers using **manual payment methods churn more frequently**
Encouraging automated payments may improve retention.

# SQL Business Analysis
After cleaning and exploring the dataset in Python, SQL was used to perform business-focused analysis.
SQL allowed customer data to be aggregated and segmented efficiently.

### Overall Churn Measurement
SQL queries were used to calculate:
• total number of customers
• churned customers
• retained customers
• overall churn rate
This metric serves as the **primary performance indicator for customer retention**.

### Contract Type Analysis
Customers were grouped by contract type to analyze churn behavior.
Findings confirmed that:
• **month-to-month contracts have the highest churn risk**
Encouraging longer contracts can significantly improve retention.

### Revenue Loss from Churn
SQL analysis was used to calculate the total **monthly revenue lost due to churned customers**.
This metric quantifies the financial impact of churn and highlights the importance of customer retention.

### Service-Based Churn Analysis
Customer churn was analyzed across different internet service categories.
This analysis helps identify services that may require improvement or pricing adjustments.

### Payment Method Analysis
Customers were grouped by payment method to identify billing patterns.
Manual payment methods were associated with higher churn rates.
Encouraging automatic payment systems may reduce churn.


# Excel Dashboard Development
After completing Python and SQL analysis, an **interactive dashboard was built in Microsoft Excel** to visualize insights.

The dashboard was created using:

• Pivot Tables
• Pivot Charts
• Scatter Plots
• Conditional Formatting
• KPI Cards
• Slicers for interactive filtering

# Dashboard Sections

The dashboard is divided into multiple analytical sections.
# Section 1 — Overall Business Health
KPIs were created to provide a quick overview of churn performance.
KPIs included:

• Total Customers
• Churned Customers
• Retained Customers
• Churn Rate
• Monthly Revenue Lost
These metrics help stakeholders quickly evaluate **customer retention performance**.

# Section 2 — Contract Type Impact
This section analyzes churn rates across contract types.
A pivot table and column chart were used to visualize:
Contract Type vs Churn Rate
Insight:
Month-to-month customers show significantly higher churn.

# Section 3 — Revenue Risk from Churn
This section calculates the total revenue generated by customers who churned.
This helps quantify **financial loss caused by churn**.

# Section 4 — Tenure Impact on Churn
Customers were grouped into tenure ranges.
A line chart was created to visualize:
Tenure Group vs Churned Customers
Insight:
Customers within the **first year show the highest churn risk**.

# Section 5 — Internet Service Impact
Churn rates were analyzed across internet service types.
This helps identify service categories with higher churn.

# Section 6 — Payment Method Risk
Churn patterns were analyzed based on payment methods.
Bar charts show differences in churn behavior across payment categories.

# Section 7 — Customer Value vs Churn
Customers were segmented based on monthly spending.
A column chart visualizes churn rates across spending segments.
This helps monitor whether **high-value customers are leaving the service**.

# Section 8 — Top Paying Customers
This section identifies the highest paying customers within each contract type.
Process:

• dataset sorted by monthly charges
• top customers filtered per contract category
• table created with CustomerID, Contract, MonthlyCharges
Conditional formatting with **data bars** highlights high-value customers.

# Section 9 — Low Tenure Risk Customers
Customers with tenure below the company average were identified.
A scatter plot was created with:
X-axis → Tenure
Y-axis → Monthly Charges
This visualization helps detect **customers with low tenure but high monthly spending**, representing the highest churn risk.


# Key Insights

Major findings from the analysis include:

• Month-to-month contracts show the highest churn rates
• Customers with low tenure are more likely to leave
• High-value customers represent significant revenue risk
• Manual payment methods correlate with higher churn
• Certain internet services show higher churn behavior


# Business Recommendations (solutions)
Based on the analysis, companies should consider the following strategies:

* Encourage Long-Term Contracts
Offer incentives for annual or multi-year plans.

* Improve Customer Onboarding
Focus on improving experience during the first year.

* Promote Automatic Payments
Encourage auto-pay systems to reduce billing friction.

* Protect High-Value Customers
Implement retention programs for high-spending customers.

* Investigate High-Churn Services
Improve services that experience higher churn.


# Future Improvements
Future enhancements could include:

• Building an interactive dashboard using Power BI
• Implementing machine learning models for churn prediction
• Performing cohort analysis for deeper customer lifecycle insights



