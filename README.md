# Diabetes Healthcare Database Design & SQL Analysis

**A MySQL-based relational database project for organizing and querying diabetes-related healthcare data.**

## Project Overview

This project focuses on designing and implementing a relational database to organize diabetes-related patient information, including demographics, lifestyle factors, symptoms, medical history, laboratory test results, and medications.

The objective is to develop a structured database that enables efficient data retrieval and filtering through SQL queries, demonstrating practical skills in database design, data management, and healthcare data analysis.

## Tools & Skills

- **Database:** MySQL
- **Database Design:** Entity-Relationship (ER) Diagram, Primary Keys, Foreign Keys
- **SQL:** CREATE TABLE, INSERT INTO, INNER JOIN, WHERE, BETWEEN
- **Concepts:** Relational Database Design, Data Organization, Data Retrieval

## Database Structure

The database consists of six interconnected tables:

| Table | Description |
|---|---|
| Patient | Patient ID, age, gender, and references to related records |
| Lifestyle | Smoking status |
| Symptoms | Excessive thirst information |
| MedicalHistory | Hypertension history |
| LabTests | Systolic blood pressure measurements |
| Medication | Prescribed medication information |

The database uses primary keys and five foreign-key relationships to connect patient records across the tables.

The complete ER diagram and database design explanation are available in the project report.

## SQL Queries & Use Cases

Four SQL query scenarios were implemented to demonstrate multi-table data retrieval and filtering.

**1. Comprehensive Patient Information**

Retrieve patient details by combining information from all six tables using SQL JOIN operations.

**2. Medical History Filtering**

Identify patients with a recorded history of hypertension using conditional filtering.

**3. Medication-Based Filtering**

Retrieve patients prescribed a specific medication, such as statins.

**4. Age-Based Patient Filtering**

Identify patients within a selected age range (40–60 years) using the BETWEEN operator.

The complete SQL queries are available in [use_cases.sql](./use_cases.sql), with screenshots of query outputs included in the project report.

## Project Files

| File | Description |
|---|---|
| [my_database.sql](./my_database.sql) | Database creation, table definitions, foreign-key relationships, and sample data |
| [use_cases.sql](./use_cases.sql) | Four SQL queries demonstrating multi-table JOINs and conditional filtering |
| [Report.pdf](./Report.pdf) | Complete project report, including ER diagram, database design explanation, SQL use cases, and query results |

## Project Highlights

- Designed a relational healthcare database containing six interconnected tables.
- Implemented primary keys and five foreign-key relationships.
- Populated the database with sample patient records.
- Developed four SQL query scenarios involving multi-table JOINs and conditional filtering.
- Demonstrated structured retrieval of patient information based on medical history, medication, and demographic characteristics.

## Data Source

The project report references the following publicly available diabetes-related dataset:

[Diabetes Healthcare Dataset — Heywhale](https://www.heywhale.com/mw/dataset/666a5579c32ba1f3df7b7e02/file)

The SQL database contains a small set of sample records for educational purposes and demonstrates database design and querying rather than clinical analysis.

## Project Context

This project was completed as part of the **Database and Software Technology** coursework at Zhejiang University–University of Edinburgh Institute.

It provided hands-on experience in relational database design, SQL programming, and structured healthcare data retrieval.
