-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON 
("Emplyoee Num") "Emplyoee Num"
,"First Name"
,"Last Name"
,"Title"

INTO unique_titles

FROM retirement_titles

ORDER BY "Emplyoee Num", "Title" DESC;