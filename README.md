# DBT Test Project

A simple DBT project demonstrating how to use seeds and models.

## Project Structure

```
dbt_test/
├── dbt_project.yml       # Main project configuration
├── profiles.yml          # Database connection configuration
├── seeds/
│   └── customers.csv     # Sample customer data seed
└── models/
    └── customers_model.sql  # Model that transforms the seed data
```

## What's Included

- **Seed**: `customers.csv` contains sample customer data with 5 records
- **Model**: `customers_model.sql` transforms the seed data by:
  - Adding a `full_name` column combining first and last names
  - Filtering for signups from 2024 onwards

## Setup

1. Install DBT with DuckDB adapter:
   ```bash
   pip install dbt-core dbt-duckdb
   ```

2. Verify installation:
   ```bash
   dbt --version
   ```

## Running the Project

1. Load the seed data:
   ```bash
   dbt seed --profiles-dir .
   ```

2. Run the model:
   ```bash
   dbt run --profiles-dir .
   ```

3. Alternatively, run both in sequence:
   ```bash
   dbt seed --profiles-dir . && dbt run --profiles-dir .
   ```

## Results

After running the commands, you'll have:
- A `customers` table (from the seed)
- A `customers_model` table (from the model transformation)

Both tables will be stored in the `dbt_test.duckdb` database file.
