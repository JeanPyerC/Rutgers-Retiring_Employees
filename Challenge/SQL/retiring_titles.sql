-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT
("Emplyoee Num")
,"Title"

INTO retiring_titles

FROM unique_titles

GROUP BY "Title" 

ORDER BY COUNT("Title") DESC;