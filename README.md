# Performance Marketing Data Platform (dbt + BigQuery)

# Overview

This project demonstrates the design and implementation of an end-to-end performance marketing data platform using dbt and BigQuery.

The platform integrates multiple marketing data sources such as Meta Ads, Google Ads, conversions, and customer data to generate actionable business insights.


# Business Objective

The goal of this project is to enable data-driven decision-making by answering key business questions:

- Which campaigns are performing best?
- Which channel generates the highest return?
- What is the cost of acquiring customers?
- Where should marketing budget be optimized?


# Architecture

The project follows a modern analytics engineering approach using a layered architecture:

Raw Layer

Got Datasets from available resources across the internet.


# Staging Layer
  - Cleans and standardizes raw data
  - Handles schema inconsistencies

  # Intermediate Layer
  - Combines multiple data sources
  - Performs joins and transformations
  - Prepares data for metrics calculation

  # Marts Layer
  - Builds final business tables
  - Calculates KPIs like ROAS, CAC, CTR, ROI



# Key KPIs

- ROAS (Return on Ad Spend)
  Revenue generated per unit of spend

- CAC (Customer Acquisition Cost) 
  Cost required to acquire one customer

- CTR (Click-Through Rate)
  Ratio of clicks to impressions

- ROI (Return on Investment)  
  Profitability of campaigns


# Final Tables

# 1. `pf_fct_campaign_performance`
- Campaign-level metrics
- ROAS, CTR, ROI

# 2. `pf_fct_customer_acquisition`
- Customer-level insights
- CAC calculation

# 3. `pf_fct_channel_performance`
- Channel comparison (Meta vs Google)
- Performance aggregation



# Tech Stack

- dbt (Data Build Tool) – Transformation & modeling
- BigQuery – Data warehouse
- SQL – Query logic

---

# Data Quality & Testing

- Implemented dbt tests for data validation:
  - `not_null`
  - `accepted_values`
  - `unique` (where applicable)

- Ensures reliable and production-grade data pipelines



# Key Features

- Modular and scalable dbt architecture
- Multi-source data integration
- KPI-driven analytics design
- Customer-level data modeling
- Data validation using dbt tests



# Learnings & Challenges

During this project, real-world data engineering challenges were handled:

- Managing schema inconsistencies across sources
- Resolving data type mismatches during joins
- Handling duplicate and missing data
- Designing scalable transformations using dbt



# Conclusion

This project showcases how raw marketing data can be transformed into meaningful insights using modern data engineering practices.


