**Project name: Data Warehouse Project**

**Instituion:** University of Westen Australia

**Unit:** Data Warehouse

**Authors:** Cedrus Dang 

**Date:** 07 April 2025

**Version:** 1.0

**🔐 Environment Setup**

Copy the PostgreSQL credentials template:

```bash
cp sample_postgressql_secretkeys.env postgressql_secretkeys.env
```

Remember to fill up all the secret keys

## 1. ETL:

MAIN ETL : After setting up the environment, you can use the ETL.ipynb jupyter notebook to run the ETL workflow.

The ETL is automatic set up, but if you want to use SQL scripts, then the scripts create_schema.sql and auto_insert.sql are where the SQL code is contained.

Changing in the create_schema.sql will changing the schema that been created in ETL.ipynb.

auto_insert can only be use after you active the flag in create_local_csv to True to create the csv files. 

## 2. Data analyse power BI file:

## 3. Data mining notebook:

## 4. Technical Report:
