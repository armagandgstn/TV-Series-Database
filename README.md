# TV-Series-Database
# SQL Homework – TV Series Database

This repository contains the SQL schema, data insertion scripts, and queries for a TV Series database homework assignment.

## Files

- `schema.sql`  
  Defines the database tables and constraints:  
  - `TvSeries`  
  - `Actor`  
  - `Director`  
  - `Episode`  
  - `Acts` (relationship between actors and episodes)

- `data.sql`  
  Inserts sample data into the tables for testing and querying.

- `queries.sql`  
  Contains 10 SQL queries demonstrating typical operations such as:  
  - Calculating average episode ratings  
  - Filtering actors by criteria  
  - Finding directors with specific characteristics  
  - Complex filtering using subqueries and aggregates



## Requirements

- Any SQL RDBMS supporting standard SQL (tested on SQLite, MySQL, PostgreSQL with minor adjustments).  
- Adjust `VARCHAR` sizes or data types as needed for your specific DBMS.

## Notes

- Primary and foreign keys are set to maintain relational integrity.  
- Sample data covers a mix of TV series genres, actors, directors, and episodes.  
- Queries include grouping, filtering, subqueries, joins, and aggregate functions.

--
