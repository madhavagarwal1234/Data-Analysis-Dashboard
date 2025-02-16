# Ola BI SQL Project

## Project Overview
The **Ola BI SQL Project** is a comprehensive data analysis and business intelligence project focused on analyzing Ola cab ride data. The project demonstrates an end-to-end process that includes:
- **Data Ingestion & Management**: Importing and organizing ride data into a MySQL database using SQL.
- **Data Analysis**: Running SQL queries to extract key metrics such as successful bookings, average ride distances by vehicle type, and cancellation statistics.
- **Data Visualization**: Building interactive dashboards exclusively with **Power BI** to visualize and interpret the data.

## Files Included
- **`OLA Project.sql`**  
  Contains all SQL scripts necessary to:
  - Create the `ola` database along with its tables.
  - Populate tables with ride data.
  - Define views and execute queries to:
    - Retrieve successful bookings.
    - Calculate average ride distance per vehicle type.
    - Analyze canceled rides.

- **`BI ola project.pbix`**  
  A Power BI report file that offers:
  - Interactive dashboards.
  - Advanced filtering and drill-down capabilities.
  - Visualizations that summarize key insights from the SQL analysis.

## Database & Data Sources
- **Database**:  
  The project uses **MySQL** as its relational database management system. All SQL scripts are designed to work seamlessly within this environment.

- **Data Sources**:  
  - **Excel Sheets**: Original ride data was initially maintained in Excel files. This data was imported into MySQL for robust querying and analysis.
  - **Power BI**: Utilized exclusively for creating interactive dashboards that provide deeper insights into the ride data.

## Technologies & Tools
- **SQL**: For creating databases, managing data, and performing analytical queries.
- **MySQL**: Serves as the primary relational database for storing and querying ride data.
- **Power BI**: Used exclusively for data visualization, offering dynamic and interactive dashboards.
