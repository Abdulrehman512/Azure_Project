# End-to-End Azure Data Engineering Pipeline

## Project Overview

This project demonstrates an end-to-end data engineering pipeline built on Azure, following industry-standard practices and a **Medallion Architecture (Bronze, Silver, Gold)**. The pipeline ingests raw CSV data, performs scalable transformations using Apache Spark, and prepares analytics-ready datasets for reporting and querying using Azure Synapse Analytics.

The objective of this project is to simulate a real-world cloud data platform used by data engineering teams for reliable, scalable, and maintainable data processing.

---

## Architecture Overview

The pipeline follows a layered architecture:

### Bronze Layer
- Raw data ingestion from source files  
- Data stored as-is in Azure Data Lake Storage (ADLS Gen2)

### Silver Layer
- Data cleaning and transformations using PySpark  
- Schema enforcement, null handling, and data normalization

### Gold Layer
- Business-ready, analytics-optimized tables  
- Created using SQL and consumed by Azure Synapse Analytics

---

## Technology Stack

- Azure Data Lake Storage Gen2 (ADLS)
- Azure Databricks
- Apache Spark (PySpark)
- Azure Synapse Analytics
- SQL
- GitHub

---

## Data Ingestion

- Raw CSV datasets are ingested into the **Bronze layer** in ADLS.
- Ingestion is handled using Databricks notebooks.
- The process is designed to be repeatable and scalable for new datasets.

---

## Data Transformation

- PySpark is used to transform Bronze data into the **Silver layer**.
- Key transformation steps include:
  - Data type casting
  - Column standardization
  - Handling missing or invalid records
  - Deduplication where required

---

## Gold Layer & Analytics

- The **Gold layer** contains curated, analytics-ready tables.
- SQL is used to:
  - Join transformed datasets
  - Apply business logic
  - Optimize tables for reporting
- These tables are queried using **Azure Synapse Analytics** for analytical workloads.

---

## Repository Structure

-- Data_Ingestion.ipynb
-- Data_Transformation.ipynb
-- SQL To Gold Layer.sql
-- README.md

## Key Learnings

- Designing cloud-based data pipelines using Azure services
- Implementing Medallion Architecture for scalable data platforms
- Using PySpark for distributed data processing
- Integrating Azure Databricks with ADLS and Azure Synapse
- Writing SQL for analytics-focused data models
