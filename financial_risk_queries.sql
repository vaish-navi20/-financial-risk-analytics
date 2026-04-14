-- Financial Risk Analysis SQL Queries
-- Author: Vaishnavi Gajula
-- Database: MySQL

USE financial_risk_db;

-- Query 1: Business Overview
SELECT
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS total_defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate,
    ROUND(AVG(loan_amnt), 2)         AS avg_loan_amount,
    ROUND(AVG(loan_int_rate), 1)     AS avg_interest_rate,
    ROUND(AVG(person_income), 2)     AS avg_income
FROM loan_data;

-- Query 2: Default by Age Group
SELECT
    age_group,
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate
FROM loan_data
GROUP BY age_group
ORDER BY default_rate DESC;

-- Query 3: Default by Loan Purpose
SELECT
    loan_intent                      AS loan_purpose,
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate,
    ROUND(AVG(loan_amnt), 2)         AS avg_loan_amount
FROM loan_data
GROUP BY loan_intent
ORDER BY default_rate DESC;

-- Query 4: Default by Income Group
SELECT
    income_group,
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate,
    ROUND(AVG(person_income), 2)     AS avg_income
FROM loan_data
GROUP BY income_group
ORDER BY default_rate DESC;

-- Query 5: Default by Loan Grade
SELECT
    loan_grade,
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate,
    ROUND(AVG(loan_int_rate), 1)     AS avg_interest_rate
FROM loan_data
GROUP BY loan_grade
ORDER BY loan_grade;

-- Query 6: Home Ownership Analysis
SELECT
    person_home_ownership            AS home_ownership,
    COUNT(*)                         AS total_loans,
    SUM(loan_status)                 AS defaults,
    ROUND(AVG(loan_status)*100, 1)   AS default_rate,
    ROUND(AVG(loan_amnt), 2)         AS avg_loan_amount
FROM loan_data
GROUP BY person_home_ownership
ORDER BY default_rate DESC;

-- Query 7: High Risk Customers
SELECT
    person_age,
    person_income,
    loan_amnt,
    loan_int_rate,
    loan_intent,
    loan_grade,
    risk_label
FROM loan_data
WHERE loan_status = 1
ORDER BY loan_amnt DESC
LIMIT 10;