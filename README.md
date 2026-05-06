# Retail-Growth-Analytics-Databricks
End-to-end data analytics project using SQL and Databricks to analyze retail growth trends, visualized in Power BI.
Retail Sales Performance & Growth Audit
Project Overview
This project analyzes a global retail dataset to identify profitability drivers and seasonal growth trends. I built a cloud-based ETL pipeline in Databricks and delivered an interactive executive dashboard in Power BI.

Tech Stack
Data Warehouse: Databricks (Lakehouse Architecture)

Language: SQL (SparkSQL)

Visualization: Power BI Desktop

Key Insights
SQL Logic: Utilized Window Functions (LAG) and CTEs to calculate Month-over-Month (MoM) growth across different product categories.

Business Impact: 
Identified High Volatility Patterns: Analysis revealed that all three product sectors (Technology, Furniture, and Office Supplies) experience frequent, sharp oscillations in month-over-month growth rather than steady trends.
Risk Detection: By implementing the 0% baseline in Power BI, I identified specific periods where all three categories dipped into negative growth simultaneously (e.g., early 2015 and early 2017), signaling broader market or seasonal downturns.
Segment Comparison: While all categories fluctuate, Technology (Navy line) shows the most extreme peaks, reaching nearly 400% growth in early 2017, suggesting high-impact but inconsistent promotional cycles compared to the more compressed fluctuations in Office Supplies.
Actionable Reporting: This dashboard allows stakeholders to move away from looking at "Total Revenue" (which sits at a healthy $2.30M) and instead focus on stabilizing these erratic growth cycles through better inventory or marketing planning.
