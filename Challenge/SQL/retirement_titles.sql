Select
	employees.emp_no as "Emplyoee Num"
	,employees.first_name as "First Name"
	,employees.last_name as "Last Name"
	,title.title as "Title"
	,to_char(title.from_date, 'MM/DD/YYYY') as "Start Date"
	,to_char(title.to_date, 'MM/DD/YYYY') as "End Date"

INTO retirement_titles

From employees
left join title on title.emp_no = employees.emp_no

Where employees.birth_date between '1952-01-01' and '1955-12-31'

order by employees.emp_no Asc


