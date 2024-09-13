# sql-challenge


## Description

It’s been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That means I’ll perform data modeling, data engineering, and data analysis, respectively.


## Overview

This project includes 2 key deliverables:
1. `schema.sql`
2. `Data Analysis.sql`


## Setup

To setup your environment similar to mine, follow the instructions below:

1. Create a new DB in PostgreSQL
2. Run the `schema.sql` file against your new DB, this will create all required tables
3. Import the files in the `/data` folder into the corresponding tables.
4. Open the `Data Analysis.sql` file and run the provided queries