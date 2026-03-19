
  
    
        create or replace table `dbt_test`.`dbt_models`.`customers_model`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      -- This model transforms customer data from the seed
-- It adds a full_name column and filters for recent signups

select
    customer_id,
    first_name,
    last_name,
    first_name || ' ' || last_name as full_name,
    email,
    signup_date,
    'active' as status
from `dbt_test`.`dbt_models`.`customers`
where signup_date >= '2024-01-01'
  