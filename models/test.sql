


select
* 
from {{ source ('my_source','bike')}}
limit 10;