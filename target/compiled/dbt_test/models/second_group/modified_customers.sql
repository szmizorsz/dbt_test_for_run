select
    customer_id,
    first_name || ' ' || last_name as full_name,
    email,
    signup_date,
    'modified' as status
from `datapao_cns`.`dbt_test`.`customers`