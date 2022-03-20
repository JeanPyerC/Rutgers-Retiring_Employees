-- Write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON(employees.emp_no) employees.emp_no 
    ,employees.first_name as "First Name"
    ,employees.last_name as "Last Name"
    ,employees.birth_date as "Birth Date"
    ,to_char(dept_emp.from_date, 'MM/DD/YYYY') as "From Date"
    ,to_char(dept_emp.to_date, 'MM/DD/YYYY') as "To Date"
    ,title.title as "Title"

INTO mentorship_eligibilty

FROM employees

Left Join dept_emp ON employees.emp_no = dept_emp.emp_no

Left Join title ON employees.emp_no = title.emp_no

WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

ORDER BY employees.emp_no;