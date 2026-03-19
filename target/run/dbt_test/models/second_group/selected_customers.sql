
  
    
        create or replace table `dbt_test`.`dbt_models`.`selected_customers`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      select
    customer_id,
    first_name || ' ' || last_name as full_name,
    email,
    signup_date,
    'selected' as status
from `dbt_test`.`dbt_models`.`customers`
where signup_date >= '2024-04-01'
  