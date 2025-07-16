# 🛒 Blinkit Grocery Sales Analysis

This project presents a complete **data analysis case study** on a grocery sales dataset from **Blinkit**, using tools like **SQL**, **Python**, and **Power BI**. The objective is to extract insights that help optimize inventory, understand customer behavior, and support data-driven decision-making.

## 📌 Project Objectives

- Analyze grocery sales across multiple dimensions: item type, outlet type, location, and fat content.
- Identify high-performing product categories and outlet formats.
- Build interactive dashboards and visualizations to present key insights.
- Support inventory and pricing strategy with data-backed recommendations.

## 🔧 Tools & Technologies Used

- **SQL** (MS SQL Server): Data cleaning, transformation, and querying
- **Python** (Pandas, Matplotlib, Seaborn): Exploratory Data Analysis (EDA)
- **Power BI**: Interactive dashboards and data visualizations
- **Excel**: Raw data management and inspection

## 📊 Key Features & Analysis Performed

### ✅ Data Cleaning & Transformation
- Standardized `Item_Fat_Content` categories (e.g., converting `LF`, `low fat` → `Low Fat`)
- Removed inconsistencies and handled missing/null values
- Created aggregate metrics (e.g., total sales, average ratings)

### ✅ SQL Analysis Highlights
- Total Sales, Average Sales, and Item Counts across:
  - `Item_Fat_Content`
  - `Item_Type`
  - `Outlet_Type`
  - `Outlet_Location_Type`
  - `Outlet_Establishment_Year`
- Pivoted sales by fat content across outlet locations
- Top/Bottom 5 product types by sales

### ✅ Python EDA Insights
- Visualized sales distribution and ratings using Seaborn and Matplotlib
- Correlation analysis between sales, ratings, item types, and outlet formats

### ✅ Power BI Dashboard
- Fully interactive dashboard showing:
  - Total and average sales by category
  - Outlet performance by year, type, and region
  - Comparative fat content sales performance

## 💡 Business Insights

- **Low Fat products** contribute to higher total sales and slightly better ratings.
- **Tier-1 outlet locations** generate significantly higher sales than Tier-2 or Tier-3.
- **Snack Foods** and **Dairy** are the top-performing item types.
- Outlets established after **2000** show steady sales growth, highlighting market expansion.
- Certain outlet types consistently outperform others in terms of sales and item diversity.

## 📁 Project Structure

```bash
│
├── BlinkIT Grocery Data.xlsx           # Raw dataset
├── Blinkit SQL.sql                     # SQL queries for data analysis
├── Blinkit Python.ipynb                # Python EDA notebook
├── Dashboard.pbix                      # Power BI dashboard file
├── README.md                           # This file

🙋‍♂️ Author
Tushar Srivastava
📧 tusharsvt30@gmail.com
