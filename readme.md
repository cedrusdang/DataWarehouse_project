**Project name: Data Warehouse Project**

**Instituion:** University of Westen Australia

**Unit:** Data Warehouse

**Authors:** Cedrus Dang  Bhavesh Agarwal

**Date:** 07 April 2025

**Version:** 1.0

Report file: [Full PDF Report]([./report.pdf](https://github.com/cedrusdang/DataWarehouse_project/blob/main/Technical%20PDF%20Report/Technical_Report_24190901_23933845.pdf))

**🔐 Environment Setup**

Install Python and the needed libraries, and change the secret keys in postgressql_secretkeys.env for PostgresSQL to sign in. 

## 1. ETL:

MAIN ETL : After setting up the environment, you can use the ETL.ipynb Jupyter notebook to run the ETL workflow.

The ETL is automatic set up, but if you want to use SQL scripts, then the scripts create_schema.sql and auto_insert.sql are where the SQL code is contained.

Changing in the create_schema.sql will change the schema that has been created in ETL.ipynb.

auto_insert can only be used after you active the flag in create_local_csv to True to create the csv files. 

## 2. Data analysis power BI file:
It is automatically connected into the PostgrestSQL server, you can refesh the data after reconnect it with your server.
## 3. Data mining notebook:
This is automatically connected with PostgresSQL server.
## 4. Technical Report:
There are 1 main file of PDF for the report, and 1 for the powerBI visualization pdf. 
