select 
	employeeid,
    firstname,
    lastname,
    concat(firstname, ' ', lastname) as full_name
from {{ source('landing', 'employee') }}