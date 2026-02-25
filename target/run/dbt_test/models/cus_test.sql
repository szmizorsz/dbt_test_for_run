
  
    
    

    create  table
      "dbt_test"."main"."cus_test__dbt_tmp"
  
    as (
      -- This model transforms customer data from the seed


select
    customer_id,
    first_name,
    last_name,
    email,
    signup_date,
    'test' as purpose
from "dbt_test"."main"."customers"
    );
  
  