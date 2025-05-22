
# Music Store Management System (MySQL)

A SQl-based Management System designed for Music Store to handle sales,customer transactions, employee records and artists & albums details.



## 📌Project Overview

This project showcases a fully structured relational database using MySQL, focusing on data storage, relationships and query-driven analysis.

Key components include:
- Database Schema(ER Diagram) for clear data relationships.
- Bulk Data Import via CSV files.
- Query-driven insights for sales & business decisions


## 📂Project Structure

Music_store_MS/

- Database_schema.sql   -> Define database tables & relationships
- Import_CSV_Data.sql   -> Loads CSV data into tables
- Inserting_payments_data.sql -> Inserts payment transactions
- Inserting_sales_data.sql -> Inserts sales records
- Query_Analysis.sql -> SQL queries for business insights
- ER_diagram.png -> Visual Represantaion of Schema
- Datasets/ -> CSV files for bulk data import
- README.md -> Documentation of the project

## 📊SQL Queries and Business Insights

### Sales & Revenue Analysis
- Which Genre had the most sales this months?
- Which artist generated the highest revenue?
- Top 3 best-selling albums.
- Total & Average revenue per sale.

### Customer & Transaction Insights
- Top 5 customers by spending.
- Total number of sales made.
- Which day of the month had the highest number of sales?

## 🚀How to Run This Project
1. Install MySQl on your local system.
2. Create the database using Database_schema.sql 
3. Import CSV data using Import_CSV_Data.sql 
4. Run business queries from Query_Analysis.sql
5. View Insights and Analyze data.

## 📝Future Enhancements

- Implement stored procedures for automated calculations.
- Introduce optimization techniques such as indexes and triggers.
- Integrate a front-end application for user interaction.