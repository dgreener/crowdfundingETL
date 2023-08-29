**Introduction**
The aim of this project is to utilize ETL (Extract, Transform, Load) methodology to consolidate crowdfunding data into a data warehouse. 

**Approach**
Creation of the ETL pipeline is done in this manner:
1) **Extract and Transform** Data is extracted from  two Excel files (crowdfunding.xlsx and contacts.xlsx) and transformed into four csv files (campaign.csv, category.csv, subcategory.csv, contacts.csv).
2) The CSV files are mapped into an ERD, with the corresponding schema (crowdfunding_db_schema.sql) stored as a PostgreSQL file.
3) **Load** CSV files are loaded into the corresponding schema tables.
   

**Tools and Resources**
Excel
Jupyter Notebook
Pandas
Python
SQL
