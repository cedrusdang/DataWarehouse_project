# 📊 **Data Warehouse Project: Australian Road Fatality 2024**

**Institution:** University of Western Australia  
**Unit:** Data Warehouse  
**Authors:** Cedrus Dang, Bhavesh Agarwal  
**Date:** 07 April 2025  
**Version:** 1.0  

📄 **[Download Full Technical Report (PDF)](https://github.com/cedrusdang/DataWarehouse_project/blob/main/Technical%20PDF%20Report/Technical_Report_24190901_23933845.pdf)**

---

## 📘 Project Summary

This technical report presents the **design**, **implementation**, and **usage** of a data warehouse for analyzing **Australian road fatality data in 2024**.  
Following the **Kimball dimensional modeling methodology**, the system integrates **historical crash data** and **population statistics** into a **Star Schema** structure.

Key features include:

- A centralized **analytical cube** for **OLAP operations** and **multidimensional queries**.
- Seamless integration with **Power BI** for interactive visualization.
- **Association rule mining** to uncover behavioral patterns by road user type.

The system offers a robust and scalable platform for data-driven decision-making and road safety policy evaluation.

---

## 🔐 Environment Setup

Before running the project:

- Install Python and required libraries (see `requirements.txt` or notebook).
- Set appropriate environment variables in `postgressql_secretkeys.env` for database access.

---

## ⚙️ 1. ETL Pipeline

- The ETL workflow is managed in `ETL.ipynb` (Jupyter Notebook).
- For SQL-based execution:
  - `create_schema.sql`: defines the PostgreSQL data warehouse schema.
  - `auto_insert.sql`: inserts data from CSVs (requires `create_local_csv = True` beforehand).

Changes to `create_schema.sql` will directly modify the warehouse structure executed via the notebook.

---

## 📈 2. Power BI Dashboard

- The Power BI report is pre-connected to the PostgreSQL data warehouse.
- To refresh: reconfigure the database source to match your server and click **Refresh** in Power BI.

---

## 🔍 3. Data Mining

- The `DataMining.ipynb` notebook performs association rule mining.
- Queries are run live from PostgreSQL, enabling dynamic analysis.

---

## 📄 4. Reports

Two PDF files are provided:

1. **[Technical Report](https://github.com/cedrusdang/DataWarehouse_project/blob/main/Technical%20PDF%20Report/Technical_Report_24190901_23933845.pdf)** — system architecture, schema design, ETL strategy, and analytical outcomes.
2. **Power BI Visual Summary** — dashboard screenshots and key visuals (available in the same folder).
