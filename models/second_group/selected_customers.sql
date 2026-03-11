select
    customer_id,
    first_name || ' ' || last_name as full_name,
    email,
    signup_date,
    'selected' as status
from {{ ref('customers') }}
where signup_date >= '2024-04-01'

