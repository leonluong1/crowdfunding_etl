# Crowdfunding ETL

Project 2 -- Berkeley Data Analytics Boot Camp

This project is about practicing ETL (Extract Transform Load) on crowdfunding data and converting that data into csv files that we can import into Postgres tables. We have a python notebook that contains starter code which we updated to create dataframes that we can export. We also created an ERD (Entity-Relationship Diagram) for the table schemas and the corresponding sql file to create the tables in PostgresSQL. Finally, we have another sql file to select all the rows in each table.

## Project Description
This project is meant to test my ETL knowledge using Python, Pandas and Postgres. I imported two excel files, crowdfunding.xlsx and contacts.xlsx into the python notebook to create the dataframes. Then, I exported the dataframes as csv files. I created an ERD to represent the four tables and convert the file to an sql file that contains the "create table" queries for Postgres. Finally, I created an sql file that contains the "select" queries to select each table.

The file types in this repository are sql files, csv files, ipynb files, txt files, xlsx files and md files.

Here are snapshots of the database:  
[Creating the database](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/creating_db_snapshot.png)  
[Importing the data](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/importing_data_snapshot.png)  
[Selecting the category table](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/selecting_category.png)  
[Selecting the sub-category table](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/selecting_subcategory.png)  
[Selecting the contacts table](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/selecting_contacts.png)  
[Selecting the sub-contacts table](https://github.com/leonluong1/crowdfunding_etl/blob/main/Snapshots/selecting_campaign.png)
