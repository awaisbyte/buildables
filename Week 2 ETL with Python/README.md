# Week 2: My First ETL Project in Python 

Welcome to **Week 2** of my Python data journey! This folder contains my first **ETL (Extract → Transform → Load)** project using a real estate dataset.

---

##  Folder Contents

- **Week 2 ETL with Python.ipynb** – >Jupyter notebook with all ETL exercises, from data ingestion to cleaning, transformation, and visualization.  
- **README.md** –> this file, giving a summary of the project.

---

##  Project Overview

This notebook walks through a typical ETL pipeline:

### Extract / Load
- Load CSV data into Pandas  
- Inspect schema (rows, columns, data types)  

### Transform / Clean
- Rename columns to `snake_case` for consistency  
- Handle missing values (median for numeric, mode for categorical)  
- Convert dates to proper `datetime`  
- Remove duplicates  
- Derive KPIs like `price_per_sqft`  
- Partition dataset by year/month for easier analysis  

### Visualize / Analyze
- Histograms & boxplots to inspect distributions and outliers  
- Pie charts for categorical distributions  
- Line plots for trends over time  
- Pivot tables and correlation heatmaps for deeper insights  

### Load / Save
- Save cleaned data as CSV and Parquet  
- Create a reusable Python function for ETL automation  

---

## Key Learnings
- How to handle **real-world messy data**: missing values, duplicates, and inconsistent formats  
- How to **derive meaningful metrics** for analysis  
- How to **prepare data for downstream dashboards or ML pipelines**  
- Visualization techniques to **quickly spot trends and anomalies**  

---

## Why This Matters
Even though this is a mini-project, it simulates **professional ETL workflows** used in data engineering:  
- Ensures data is clean and reliable  
- Makes datasets analysis ready  
- Demonstrates how Python + Pandas can power real-world pipelines
