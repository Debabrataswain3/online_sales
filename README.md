# 🛒 Online Sales Data Analysis using MySQL

## 📘 Project Overview

This project aims to analyze online sales performance using **MySQL** to identify key business trends such as monthly revenue, sales volume, and time-based performance. It demonstrates real-world data analysis using SQL techniques like **aggregation**, **grouping**, **date extraction**, and **filtering**.

---

## 🎯 Project Objective

The main objective of this project is to:

* Analyze sales performance trends over time
* Calculate total revenue and sales volume per month
* Identify the most profitable periods
* Build SQL-based insights to support business decision-making

---

## 📊 Dataset Used

**Dataset Name:** `online_sales`
**Table:** `orders`
**Columns:**

* `order_id` – Unique order identifier
* `order_date` – Date of order placed
* `product_id` – Product identifier
* `amount` – Order amount (Revenue)

**Dataset Link:**
[Download online_sales_dataset.sql](https://github.com/Debabrataswain3/online_sales/blob/main/online_sales_dataset.sql)

---

## ❓ Business Questions / KPIs

The following **KPIs** and **business questions** were analyzed:

| # | KPI / Question                                    | SQL Concept Used                                     |
| - | ------------------------------------------------- | ---------------------------------------------------- |
| 1 | Monthly and yearly revenue                        | `EXTRACT(YEAR/MONTH FROM order_date)`, `SUM(amount)` |
| 2 | Total number of unique orders per month           | `COUNT(DISTINCT order_id)`                           |
| 3 | Highest revenue month                             | `ORDER BY total_revenue DESC LIMIT 1`                |
| 4 | Sales trends over time                            | `GROUP BY` and `ORDER BY`                            |
| 5 | Revenue for a specific time period (e.g. Q1 2024) | `WHERE order_date BETWEEN ...`                       |

---

## ⚙️ Process Followed

1. **Data Creation:**
   Created the `online_sales` database and `orders` table with sample transaction data.

2. **Data Exploration:**
   Verified dataset using `SELECT * FROM orders;`

3. **Data Analysis (SQL Queries):**

   * Extracted month and year using `EXTRACT()`
   * Aggregated sales using `SUM()` and `COUNT()`
   * Grouped data by month and year
   * Filtered specific date ranges
   * Sorted and limited results for analysis

4. **Dashboard Creation (Optional):**
   The SQL results were visualized using **Power BI** to create an interactive sales dashboard.

---


## 💡 Project Insights

* The highest sales occurred in **March 2024**.
* Revenue showed consistent growth from **January to May 2024**.
* Most transactions were concentrated in the **first quarter (Q1)**, indicating seasonal demand.
* Top-selling products can be identified by linking sales with product tables (in extended versions).

---

## 🏁 Final Conclusion

This MySQL-based analysis provided valuable insights into sales performance across months and years.
Using SQL functions like `EXTRACT`, `SUM`, and `COUNT(DISTINCT)` helped identify revenue trends, high-performing months, and order volume efficiently.

The project demonstrates how **SQL alone** can be used for powerful **data-driven decision-making** before moving to visualization tools like **Power BI** or **Tableau**.

---

## 🧠 Tech Stack

* **Database:** MySQL
* **Language:** SQL
* **Visualization Tool:** Power BI
* **Data Source:** Custom simulated dataset

---

## 📂 Folder Structure

```
📁 Online_Sales_MySQL_Project
 ┣ 📄 online_sales_dataset.sql
 ┣ 📄 README.md
 ┣ 📄 dashboard_screenshot.png
 ┗ 📁 queries
     ┗ 📄 analysis_queries.sql
```

---

