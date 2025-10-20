# 🧠 SQL-Based Data Cleaning & Reporting (Portfolio Project)

## 📋 Project Overview
This project demonstrates **SQL-based data modeling, data cleaning, and reporting** using **PostgreSQL**.  
It simulates a retail sales data warehouse designed using a **Star Schema** and focuses on data wrangling, business reporting, and analytical SQL techniques.

---

## 🧾 Dataset
- **Name:** [Sales Data for Economic Data Analysis](https://www.kaggle.com/datasets/abhishekrp1517/sales-data-for-economic-data-analysis)  
- **Source:** Kaggle  
- **Description:**  
  This dataset contains synthetic retail sales data for economic analysis. It includes customer demographics, product categories, location information, sales quantity, cost, revenue, and profit.  
- **Usage:**  
  Used as the base dataset for building the SQL data warehouse (`warehouse` schema) and performing data cleaning, analysis, and reporting tasks.

---

## 🧱 Data Warehouse Schema
The warehouse follows a **Star Schema** design:

- **Fact Table:** `warehouse.sales`  
- **Dimension Tables:**  
  - `warehouse.date`  
  - `warehouse.customer`  
  - `warehouse.location`  
  - `warehouse.product`

Each dimension connects to the fact table through foreign keys to enable flexible business reporting.

📄 **File:** [`DDL.sql`](./DDL.sql)  
Defines the full database schema and relationships for all tables in the `warehouse` schema.

---

## 🧮 Analytical SQL Queries

| File | Description |
|------|--------------|
| [`Revenue by Month (Year = 2015).sql`](./Revenue%20by%20Month%20(Year%20=%202015).sql) | Calculates total revenue and profit by month for 2015 using aggregation. |
| [`Profit Trend by Product Category.sql`](./Profit%20Trend%20by%20Product%20Category.sql) | Tracks monthly profit trends across product categories using `LAG()` window function. |
| [`Top 10 Customers.sql`](./Top%2010%20Customers.sql) | Lists the top 10 customers ranked by total sales and profit. |
| [`Profit Margin by Product.sql`](./Profit%20Margin%20by%20Product.sql) | Computes profit margin percentages per product category. |
| [`Department Sales Performance Report.sql`](./Department%20Sales%20Performance%20Report.sql) | Summarizes total revenue and profit per country and product category. |
| [`view_sales.sql`](./view_sales.sql) | Creates a consolidated view combining all dimension and fact tables using CTEs. |
| [`Check Null Values.sql`](./Check%20Null%20Values.sql) | Identifies missing or null values across key columns in all tables. |
| [`Check Duplicate Records.sql`](./Check%20Duplicate%20Records.sql) | Detects duplicate rows in fact and dimension tables using grouping and counts. |

---

## 🧰 Tools Used
- **Database:** PostgreSQL  
- **Query Editor:** DBeaver / pgAdmin  
- **Version Control:** Git & GitHub  

---

## 💡 Key SQL Concepts Demonstrated
| Concept | Description |
|----------|--------------|
| **DDL (Data Definition Language)** | Used to design normalized tables with constraints and foreign keys. |
| **CTE (Common Table Expression)** | Used for modular query structure in `view_sales.sql`. |
| **Window Functions** | Implemented in queries like `LAG()` and `RANK()` for time-series and ranking analytics. |
| **Data Cleaning** | Performed with `CASE` and `COALESCE` to standardize missing or inconsistent values. |
| **Aggregation** | `SUM()`, `COUNT()`, `ROUND()` used to compute business KPIs like revenue, profit, and margin. |

---

## 📈 Example Output
| year | month | total_revenue | total_profit |
|------|--------|----------------|---------------|
| 2015 | January | 154,300.00 | 45,200.00 |
| 2015 | February | 161,700.00 | 48,900.00 |
| 2015 | March | 172,400.00 | 51,800.00 |

---

## 🧩 Project Goals
- Practice **data modeling, cleaning, and reporting** using SQL only.  
- Demonstrate mastery of **window functions, joins, and CTEs**.  
- Build clean, analytical queries suitable for business reporting.
