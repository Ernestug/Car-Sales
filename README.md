# Car-Sales
## This project provides a detailed analysis on the sales of vehicles from a top automobile company in the United States. The data used for this project was sourced from [Kaggle](https://www.kaggle.com/datasets/syedanwarafridi/vehicle-sales-data), with major transformations carried out to derive key insights from the sales of over 400,000 units of vehicles.

## Project Background
The used car market represents a significant and dynamic sector of the automotive industry. Understanding sales trends, pricing patterns, and consumer preferences is crucial for businesses operating in this space. Data-driven insights are key for dealers to make informed decisions regarding inventory, pricing strategies, and targeted marketing efforts.

Greenwood Motors LLC, a leading used car dealership in the United States, recognizes the power of data analytics. With a commitment to providing customers with exceptional value and experiences, Greenwood Motors LLC has undertaken a comprehensive analysis of over 400,000 car sales records. This analysis aims to identify sales trends, optimize pricing, and understand customer preferences.

[Click to interact with Power BI report](https://app.powerbi.com/view?r=eyJrIjoiOTdhZThhYjktMWM3MC00NDdlLWIwNmEtNjZmMWFiMGQ1MTU4IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

## Overview of the Data
The original data downloaded from Kaggle contained only one table having the sales records of different brands of vehicles. The data was cleaned and transformed using the Power Query Editor in Power BI. The major transformations carried out in the Power Query Editor inlcude:
- Removal of duplicates in the unique ID column (VIN).
- Removal of unwanted columns: The initial data had about 16 columns. 7 columns were removed due to inadequate information, and to allow for a more streamlined comprehensive analysis.
- Removal of blank rows: Blank rows were also removed from some columns to ensure 100% validity across all column distributions.
- Formatting columns with Text: The Clean, Trim, and Capitalize operations were also used for certain columns like "Brand" and "Colour" to ensure easy comprehension in the course of the analysis.
- Promoted Headers: Some columns having their headers in the first row were also promoted to ensure easy understanding of column names.
- Renaming Columns: Some columns were also renamed and capitalized for easy understanding in the course of the project.
- Replacing values: Values in the date column having values of 2014 and 2015 were replaced with 2022 and 2023 respectively.
- Importing New Query: A new query or data source (a CSV file) was imported. This query contained two columns. The query was renamed as "US States" and was sourced from the [US Bureau of Labor Statistics](https://www.bls.gov/respondents/mwr/electronic-data-interchange/appendix-d-usps-state-abbreviations-and-fips-codes.htm)

**The Car Prices Table** having the original data, after several transformations in the Power Query Editor was left with the following columns:
- Year: The manufacturing year of the vehicle.
- Brand: The brand or manufacturer of the vehicle.
- Transmission: The type of transmission in the vehicle.
- VIN: This stands for 'Vehicle Identification Number'. It is a unique code for each vehicle.
- State: The state where the vehicle is registered. The state codes were used for this column.
- Colour: The exterior colour of the vehicle.
- Seller: The entity (company or individual) selling the vehicle.
- Sales: The price at which the vehicle was sold.
- Date Sold: The date the vehicle was sold.

**The US States Table** which was imported using the Power Query Editor has the following columns:
- Code: The state code (a 2-letter word) for each state.
- Region: The region where the state is situated.
- State Name: The name of the state.

***The CSV files and scripts generated from the Power Query Editor have been included in the repository for this project.***

## Tools and Technologies used

**1. Power BI:** This was the major tool used in this project. Power BI was used in coming up with the visualization and dashboards for the inisights generated from this project. Power BI service, a component of Power BI was also utilized in creating a web link that allows interactivity and navigation with the report.

**2. Power Query Editor:** This is an advanced feature of Power BI that allows transformation and cleaning to be carried out on a dataset. The Power Query Editor was used in carrying out transformations across different columns such as removing duplicates, removing blank rows, formatting columns, replacing values, etc.

**3. Microsoft Excel:** This was the least used tool in the course of this project. Microsoft Excel was used at the start of the project to provide an understanding of the data structure, and to provide a guide on the steps to be carried out in transforming the data using the Power Query Editor.

## Project Workflow

A Project Workflow provides a good structure for every data analytics project. It helps to establish a clear roadmap of sequential steps from the initial problem to the final insights. This keeps the project organized and aligned with goals. It also outlines tasks within each project phase, preventing important elements from being overlooked and making the process more efficient. The workflow for this project is shown below:

![](https://github.com/Ernestug/Staionery-Orders/blob/main/images/Project%20Workflow.jpg)

## Project Objective
