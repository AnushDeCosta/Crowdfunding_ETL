# Crowdfunding_ETL Mini Project
# BootCamp - Project 2
Student Name - Anush De Costa Module 13 Project 2

## Introduction
The Crowdfunding ETL Mini Project is a small-scale project that demonstrates the ETL (Extract, Transform, Load) process, which is a common method used to move data from one place to another. In this project, we will extract data from two Excel files, transform the data to create four CSV files, design an Entity Relationship Diagram (ERD), create a database schema, and then load the data into a PostgreSQL database.

## Project Structure
The project structure is organized into four major sections:

* Data Extraction
* Data Transformation
* Data Loading
* Creation of Entity Relationship Diagram (ERD) and Database Schema Design. 

## Data Extraction and Transformation
The first step in the ETL process is to extract data from the source, which in this case is two Excel files: crowdfunding.xlsx and contacts.xlsx. The data from the crowdfunding.xlsx file contains information on crowdfunding campaigns, while the data from the contacts.xlsx file contains information on campaign contacts.

## Data Transformation
In the data transformation step, the data extracted from the crowdfunding.xlsx and contacts.xlsx files is transformed into the desired format.
For the crowdfunding data, three dataframes are created: category, subcategory, and campaign. The category and subcategory dataframes are created by extracting unique category and subcategory values from the crowdfunding data. The campaign dataframe is created by combining data from multiple columns in the crowdfunding data, and converting some columns to a different data type.
For the contacts data, two options are provided for transforming the data. Option 1 involves iterating through each row of the contacts data, extracting values from each row, and creating a new dataframe from those values. Option 2 involves using regular expressions to extract specific columns from the contacts data, and then creating a new dataframe from those columns.

## Data Loading
In the data loading stage of this project, the transformed data from the previous stage is loaded into a PostgreSQL database. A new database named "crowdfunding_db" is created, and the schema defined in the previous stage is used to create the necessary tables. The CSV files containing the transformed data are loaded into their corresponding tables using the COPY command in PostgreSQL. Once the data is loaded, a series of queries are run to verify that the data has been loaded correctly into the database tables.

## Creation of Entity Relationship Diagram (ERD) and Database Schema Design
This section of the project involves creating an ERD based on the data extracted and transformed from Excel files, and designing a database schema based on the ERD. The schema is then used to create tables in a Postgres database, which will be used to load the transformed data.

## Tools
* Jupyter Notebook
* VSCode
* Quick DBD
* PostgreSQL
* pgAdmin4
* Microsoft Excel

## Files
* Data Extraction, Transformation and Loading -
    * [ETL_Mini_Project_ADe_Costa](./ETL_Mini_Project_A_De_Costa.ipynb)

* Data Modeling -
    * [ERD_Diagram](./Crowdfunding_ERD.png)
    * [ERD_Schema](./ERD_Schema.txt)

* Data Engineering - 
    * [SQL_Schema](./crowdfunding_db_schema.sql)

* CSV Output files -
    * [Campaign.csv](./Resources/campaign.csv)
    * [Category.csv](./Resources/category.csv)
    * [Subcategory.csv](./Resources/subcategory.csv)
    * [Contacts.csv](./Resources/contacts.csv)
    * [Category.csv (Using Regex)](./Resources/contacts_regex.csv)
    


## Notes
* The Tables were populated using the Import function in PostgreSQL 