# Financial Risk Analytics Dashboard

## Project Overview
Analysis of 32,000+ loan applications to identify
default risk patterns using Python, SQL and Power BI.

## Tools Used
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- SQL (MySQL Workbench)
- Power BI (4-page interactive dashboard)

## Dataset
- Source: Kaggle Credit Risk Dataset
- Size: 32,000+ loan applications
- Features: Age, Income, Loan Amount, Grade, Purpose

## Key Findings
1. Overall default rate: 21.8%
2. Young borrowers (18-25) highest default risk
3. Low income group has 3x higher default rate
4. Debt consolidation loans default most
5. Grade G loans have 5x higher default than Grade A
6. Longer credit history = lower default risk

## Recommendations
1. Stricter eligibility for borrowers aged 18-25
2. Lower loan limits for low income segment
3. Higher interest rates for Grade D-G loans

## Dashboard Pages
- Page 1: Risk Overview
- Page 2: Customer Risk Profile
- Page 3: Loan Analysis
- Page 4: Risk Insights

## Project Structure
- risk_analysis.ipynb — Python analysis
- financial_risk_queries.sql — SQL queries
- Financial_Risk_Dashboard.pbix — Power BI
- final_risk_dataset.csv — Cleaned data
- output/ — All chart PNG files