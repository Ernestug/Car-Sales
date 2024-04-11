# Car-Sales
## This project provides a detailed analysis on the sales of vehicles from a top automobile company in the United States. The data used for this project was sourced from [Kaggle](https://www.kaggle.com/datasets/syedanwarafridi/vehicle-sales-data), with major transformations carried out to derive key insights from the sales of over 400,000 units of vehicles.

## Project Background

The used car market represents a significant and dynamic sector of the automotive industry. Understanding sales trends, pricing patterns, and consumer preferences is crucial for businesses operating in this space. Data-driven insights are key for dealers to make informed decisions regarding inventory, pricing strategies, and targeted marketing efforts.

Greenwood Motors LLC, a leading used car dealership in the United States, recognizes the power of data analytics. With a commitment to providing customers with exceptional value and experiences, Greenwood Motors LLC has undertaken a comprehensive analysis of over 400,000 car sales records. This analysis aims to identify sales trends, optimize pricing, and understand customer preferences.

[Click to interact with Power BI report](https://app.powerbi.com/view?r=eyJrIjoiZTAxNzI4ZjktODFkMi00NDI0LWJiZmEtYmFkOGU0ZjZiYTAxIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

## Overview of the Data

The original data downloaded from Kaggle contained only one table having the sales records of different brands of vehicles. The data was cleaned and transformed using the Power Query Editor in Power BI. The major transformations carried out in the Power Query Editor inlcude:

- Removal of duplicates in the unique ID column (VIN).
- Removal of unwanted columns: The initial data had about 16 columns. 7 columns were removed due to inadequate information, and to allow for a more streamlined comprehensive analysis.
- Removal of blank rows: Blank rows were also removed from some columns to ensure 100% validity across all column distributions.
- Formatting columns with Text: The Clean, Trim, and Capitalize operations were also used for certain columns like "Brand" and "Colour" to ensure easy comprehension in the course of the analysis.
- Promoted Headers: Some columns having their headers in the first row were also promoted to ensure easy understanding of column names.
- Renaming Columns: Some columns were also renamed and capitalized for easy understanding in the course of the project.
- Replacing values: Values in the date column having values of 2014 and 2015 were replaced with 2022 and 2023 respectively.
- Appending Queries: A new query (CSV file) was generated from SQL and appended to the Car Prices Table. This query was imported to fill in for months that had zero sales.
- Importing New Query: A new query or data source (a CSV file) was imported. This query contained two columns. The query was renamed as "US States" and was sourced from the [US Bureau of Labor Statistics](https://www.bls.gov/respondents/mwr/electronic-data-interchange/appendix-d-usps-state-abbreviations-and-fips-codes.htm)

**The Car Prices Table** having the original data, after several transformations in the Power Query Editor was left with the following columns:

- Year: The manufacturing year of the vehicle.
- Brand: The brand or manufacturer of the vehicle.
- Transmission: The type of transmission in the vehicle.
- VIN: This stands for 'Vehicle Identification Number'. It is a unique code for each vehicle.
- State: The state where the vehicle is registered and sold. The state codes were used for this column.
- Colour: The exterior colour of the vehicle.
- Seller: The entity (company or individual) selling the vehicle.
- Sales: The price at which the vehicle was sold.
- Date Sold: The date the vehicle was sold.

**The US States Table** which was imported using the Power Query Editor has the following columns:
- Code: The state code (a 2-letter word) for each state.
- Region: The region where the state is situated.
- State Name: The name of the state.

***The CSV files and scripts generated from the Power Query Editor have been included in the repository for this project. The CSV file for the main table wasn't attached due to it's size, but it can be downloaded [here](https://www.kaggle.com/datasets/syedanwarafridi/vehicle-sales-data)***

## Tools and Technologies used

**1. Power BI:** This was the major tool used in this project. Power BI was used in coming up with the visualization and dashboards for the inisights generated from this project. Power BI service, a component of Power BI was also utilized in creating a web link that allows interactivity and navigation with the report.

**2. Power Query Editor:** This is an advanced feature of Power BI that allows transformation and cleaning to be carried out on a dataset. The Power Query Editor was used in carrying out transformations across different columns such as removing duplicates, removing blank rows, formatting columns, replacing values, etc.

**3. MySQL:** MySQL was used in creating a new table of 1000 rows which was appended in the Power Query Editor to the "Car Prices Table". This table was used to fill in for months that recorded no sales. Certain conditions were used in creating the table. The [SQL script] () for this was attached to this repository.

**4. Microsoft Excel:** This was the least used tool in the course of this project. Microsoft Excel was used at the start of the project to provide an understanding of the data structure, and to provide a guide on the steps to be carried out in transforming the data using the Power Query Editor.

### Project Workflow

A Project Workflow provides a good structure for every data analytics project. It helps to establish a clear roadmap of sequential steps from the initial problem to the final insights. This keeps the project organized and aligned with goals. It also outlines tasks within each project phase, preventing important elements from being overlooked and making the process more efficient. The workflow for this project is shown below:

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Project%20Workflow.png)

## Project Objective

The objective of the project was to analyze the trend of sales in 2022 and 2023 and derive key insights that will propel more sales in the coming year. From this project, it will be easy to understand sales trends, pricing patterns, and consumer preferences, which are crucial for the business operations. Insights from this project will be used in making informed decisions regarding inventory, pricing strategies, and targeted marketing efforts.

## Data Collection

The data for this project was collected from Kaggle. The data included sales records from various car dealers across 33 states in the United States. The data also included major metrics such as vehicle characteristics, date of sales, the vehicle identification number, and other metrics, as listed in the the data overview above.

## Data Cleaning & Preparation

The data cleaning process began in the Power Query Editor in Power BI. Here, some major operations such as removal of duplicates, removal of blank rows, and removal of unwanted columns were done. Other text operations such as capitalising, trimming, and replacing values were also carried out on some columns. The [M Query Codes] from the Power Query Editor have been attached to this repository. Please note that the Power Query Editor automatically writes/generates these codes based on the steps applied in the editor.

After data cleaning. it was observed that some months were not represented in the dataset. To correct this and ensure adequate trend analysis, I created a new table (car_prices_2) using SQL with certain conditions specified. This ensured that all months had sales values in the data visualization.

In addition, I created new measures and new columns to provide in-depth insights into the various sales records. Some of the measures and columns include:

- % MoM Variance: This measure was created to visualize the month-on-month percentage difference in sales and quantity sold.
- % YoY Variance: This was used to visualize the year-on-year percentage difference in sales and quantity sold.
- 2022 & 2023 Sales: These two measures were created to visualize the total sales generated in 2022 and 2023 respectively.
- Manufacture Year (Grouped): This column was created to group the manufacture years in 3s (1983 - 1985, 1986 - 1989, 1990 - 1992, etc.). This was done because there was a long range of manufacture years in the dataset (from 1983 to 2015).
- Day of Week: This new column was created to extract the specific day of the week from the sales date column.

I also created a Calendar Table to provide an extensive hierarchy from the "Date Sold" column - splitting the dates into Year, Month, Quarter, and Day. Click [here] to view the DAX functions used to create the measures, calculated columns, and table.

## Data Model

The Data Model was automatically created in Power BI. This clearly shows the relationship and cardinality between the various tables in this project.

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Data%20Model.png)

## Data Analysis & Visualization

After I completed the data cleaning and preparation, I proceeded to begin my analysis and visualization. To ensure easy navigation and adequate understanding of the project, I divided the visualizations into 4 dashboards. These dashboards were used to effectively visualize key insights from this analysis.

Some Key Insights from the data visualization are summarized below:

- **Overview:** The overview section shows that a total of $6.5bn was generated in sales from 478K vehicles sold. There was a huge increase in sales of 948.03% from 2022 to 2023. This was as a result of more units of vehicles sold in 2023. Also, "Ford" vehicles generated more revenue than any brand, while Florida had more sales than any other state. "Black" was the most preferred colour among buyers, followed by White, Gray, Silver, and Blue. For the monthly trend, January and February were the months with the highest sales, contributing to over 50% of the total revenue.

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Overview%20(Dashboard).jpg)

- **Time Analysis:** The Time Analysis Dashboard shows that the weekends generated more sales. Fridays, Saturdays, and Sundays cumulatively contributed to 90% of total sales. The Quarterly Trend shows a sharp decline in sales from Q1 to Q2, and from Q2 to Q3, but with a slight increase from Q3 to Q4. The MoM Variance shows that December 2022 recorded the highest increase in sales of 84K% from the previous month, while February 2022 showed the lowest drop in sales of -99.65%. For the vehicle manufacture year, most sales were made from the most recently manufactured vehicles; particularly from 2004 to 2015, with vehicles manufactured between 2013 to 2015 generating the most number of sales of over $3bn.

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Time%20Analysis%20(Dashboard).jpg)

- **Location Analysis:** 33 states in the United States were represented in this analysis across the 4 major regions. While Florida generated the most sales from all states, some locations showed a very huge growth in their numbers from 2022 and 2023. An example is Mississippi which showed a growth of over 100k%. This presents an opportunity for more marketing efforts channeled towards this state and similar states that showed large increase in year-on-year sales.

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Location%20Analysis%20(Dashboard).jpg)

- **Brands:** A total of 61 different brands of vehicles were analyzed in this project. These vehicles had 19 varying colours. The top brand which generated the highest sales of $1.2bn was Ford. Chevrolet, Nissan, Toyota, and BMW followed closely; all 5 brands contributing to 49% of the total sales. Some brands like Lincoln and Tesla showed huge increase in YoY sales. This presents an opportunity to procure more vehicles like these in 2024, specifically luxury and electric brands of cars. Specific vehicles like trucks were only sold once in 2022 and had no sales in 2023 - an indication that these options may need to be discontinued in 2024.

![](https://github.com/Ernestug/Car-Sales/blob/main/Images/Brands%20(Dashboard).jpg)

## Conclusiom

The analysis provides a solid foundation for optimizing Greenwood Motors' operations. Seasonal trends were clearly identified to guide inventory planning and promotional timing. The data unveils strong consumer preferences for common colours like black, white, gray, silver, and blue; informing future vehicle sourcing.  Additionally, the analysis provides details into vehicle categories and suggests improvements in future procurement of vehicles.

## Recommendations

From the analysis and key insights derived from this project, I was able to come up with the following recommendations to drive more sales in 2024:

- **Offer Specialized Product/Service Offerings and Promos:** From the daily trend of sales, the analysis shows that sales were low during weekdays, contributing to not more than 15% of total sales. Specialized offers such as discounted deliveries can be offered to buyers during these days, especially those unable to make sales at physical stores.
  In addition, the monthly trend shows low sales recorded from July to November which remained constant. "Black Friday" offers which usually can be introduced to drive sales within these periods. Announcement can be made in August or September to prepare prospective buyers ahead of the offers which could begin in November and end in the first week of December.
  
- **Partnership Deals with Car Manufacturers:** From the year of manufacture of cars sold, it is seen that cars manufactured from 2010 to 2015 generated more revenue for sellers - over 80% of the total revenue. Selers can boost sales in 2024 by partnering with manufacturers to exchange old manufactured cars (less than 2010 manufacture year) for recent ones at an agreed rate.

- **Engaging in Quarterly Analysis:** The month-on-month sales analysis revealed that sales always had a drop at the beginning of a new quarter, specifically in Q2 and Q3. In-depth sales analysis should be done before the end of every to identify bottlenecks in sales and proffer strategies to boost sales in the next quarter.

- **Procuring more cars with increased growth rate:** Vehicles such as Plymouth, Tesla, and Lincoln showed a very high growth rate (YoY) of over 1000%. This provides an opportunity to procure more brands like these, especially in the category of luxury and electric cars.

- **Cutting down on the sales of trucks:** The YoY variance revealed that most truck brands were only sold once in 2022 and had no sales in 2023. This tells that procurement of trucks which may substantially cost higher than cars should be discontinued as they generate little or no sales for sellers.

- **Market Expansion:** To boost sales in 2024, more marketing efforts should be directed to penetrate regions or countries surrounding the US such as Mexico, Canada, Cuba, The Bahamas, etc.
