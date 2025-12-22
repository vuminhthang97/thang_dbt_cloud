select 
	EMPLOYEEID,
    FIRSTNAME,
    LASTNAME,
    concat(FIRSTNAME, ' ', LASTNAME) as full_name
from {{ source('landing', 'employees') }}