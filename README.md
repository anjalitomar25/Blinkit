# BlinkIt Data Analysis Dashboard in Power BI & MySQL

## Overview
This project contains a sales dashboard for Blinkit, India’s Last Minute App. The dashboard visualizes various key performance indicators (KPIs) related to sales data, including total sales, average sales, the number of items sold, and average ratings across different outlet types and locations.

## Setup
### Requirements
- Power BI Desktop
- MySQL Database

## Dashboard Highlights
- **Total Sales:** $1.2M
- **Average Sales per Item:** $141
- **Total Number of Items:** 85,823
- **Average Rating:** 3.9 stars

## Key Visualizations
1) **Fat Content Analysis:** The dashboard displays the distribution of sales between low-fat and regular items. Regular items account for $776.3K in sales, while low-fat items contribute $425.4K.

2) **Item Type Performance:** The highest-grossing categories are "Fruits and Vegetables" and "Snack Foods," each generating $0.18M in sales. Other significant categories include "Household," "Frozen Foods," and "Dairy."

3) **Outlet Establishment Timeline:** A line chart tracks the establishment of outlets over time, highlighting key milestones in sales growth from 2010 to 2020.

4) **Outlet Size Distribution:** Outlets are categorized by size: Medium, Small, and High.

5) **Outlet Location and Type:** Sales distribution across Tier 1, Tier 2, and Tier 3 cities shows that Tier 3 cities contribute the most, with $0.31M in sales. The dashboard also includes a breakdown of sales, average sales, number of items, and average ratings across different outlet types like Grocery Stores and various types of Supermarkets. The sales are most significant in Medium-sized outlets, contributing $507.9K to total sales.

## MySQL Analysis
This project also includes MySQL queries for data extraction and preprocessing. The queries perform:
- Data cleaning and transformation
- KPI calculations
- Aggregation of sales, ratings, and outlet performance

## How to Use
1. Import the dataset into MySQL and execute the queries from `queries.sql`.
2. Load the processed data into Power BI using `dashboard.pbix`.
3. Explore the visualizations and insights.



![Screenshot 2025-02-27 131137](https://github.com/user-attachments/assets/a501fd73-9b0f-4166-9e06-3575d0d3e984)

