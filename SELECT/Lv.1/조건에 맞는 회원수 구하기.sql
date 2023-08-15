SELECT
    count(user_id) as users
from user_info
where age >= 20 and age <= 29
and extract(year from joined) = 2021
