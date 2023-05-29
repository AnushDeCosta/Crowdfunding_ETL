# Crowd-Quest: An ETL Journey for Crowdfunding Data

![CrowdFund](https://github.com/AnushDeCosta/Crowdfunding_ETL/assets/67308030/774cd61e-ab45-48ed-8bfe-08bfe41d7290)

## Introduction
The Crowd-Quest is a concise venture that illustrates the ETL (Extract, Transform, Load) process, a prevalent data movement methodology. In this project, data will be extracted from two Excel files, transformed to yield four CSV files, an Entity Relationship Diagram (ERD) will be sketched, a database schema will be designed, and finally, data will be loaded into a PostgreSQL database.

## Project Outline
The structure of this project can be segmented into four major components:
- Data Extraction
- Data Transformation
- Data Loading
- Drafting of Entity Relationship Diagram (ERD) and Database Schema Design

## Data Extraction and Transformation
The initial step of the ETL process involves extracting data from the source. Here, we have two Excel files at hand: crowdfunding.xlsx and contacts.xlsx. The crowdfunding.xlsx file offers details on crowdfunding campaigns, while the contacts.xlsx file provides information about campaign contacts.

## Data Transformation
Data extracted from the crowdfunding.xlsx and contacts.xlsx files is then transformed to the required format. The transformation of the crowdfunding data results in three dataframes: category, subcategory, and campaign. Unique category and subcategory values from the crowdfunding data are used to create the category and subcategory dataframes. The campaign dataframe is assembled by merging data from several columns in the crowdfunding data and changing the datatype of some columns. Transformation of contacts data is handled in two alternative ways. The first option iterates through each row of the contacts data, extracting values and building a new dataframe from them. The second option employs regular expressions to pick specific columns from the contacts data and generates a new dataframe from those columns.

## Data Loading
In this project phase, the transformed data is funneled into a PostgreSQL database. A new database named "crowdfunding_db" is brought into existence, and the schema defined in the previous stage is employed to build the necessary tables. CSV files housing the transformed data are loaded into their matching tables via the COPY command in PostgreSQL. To verify the successful data loading into the database tables, a series of queries are executed.

## Crafting of Entity Relationship Diagram (ERD) and Database Schema Design
This project segment involves the creation of an ERD based on the data extracted and transformed from Excel files, followed by the design of a database schema conforming to the ERD. The schema is subsequently used to create tables in a Postgres database, ready for the loading of transformed data.

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
