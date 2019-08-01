-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select "Employees"."Emp_No", "Last_Name", "First_Name", "Gender", "Salary"
from "Employees" left join "Salaries" on "Employees"."Emp_No" = "Salaries"."Emp_No";

-- List employees who were hired in 1986.
select * from "Employees"
where ("Hire_Date" >= '1986-01-01' and "Hire_Date" < '1987-01-01') --(I did it this way after research taught me that this was the best way to find dates in a range, rather than using BETWEEN for dates)
order by "Hire_Date" asc;

-- List the manager of each department with the following information: 
-- department #, department name, the manager's employee #, last/first names, and start/end employment dates.
select "Dept_Manager"."Dept_No", "Dept_Name", "Dept_Manager"."Emp_No", "Last_Name", "First_Name", "From_Date", "To_Date"
from "Dept_Manager"
	left join "Employees" on "Dept_Manager"."Emp_No" = "Employees"."Emp_No"
	left join "Departments" on "Dept_Manager"."Dept_No" = "Departments"."Dept_No";

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select "Employees"."Emp_No", "Last_Name", "First_Name", "Dept_Name"
from "Dept_Emp"
	left join "Employees" on "Dept_Emp"."Emp_No" = "Employees"."Emp_No"
	left join "Departments" on "Dept_Emp"."Dept_No" = "Departments"."Dept_No";

-- List all employees whose first name is "Hercules" and last names begin with "B."
select * from "Employees"
where ("First_Name" = 'Hercules' and "Last_Name" like 'B%');

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select "Employees"."Emp_No", "Last_Name", "First_Name", "Dept_Name"
from "Dept_Emp"
	left join "Employees" on "Dept_Emp"."Emp_No" = "Employees"."Emp_No"
	left join "Departments" on "Dept_Emp"."Dept_No" = "Departments"."Dept_No"
where "Dept_Name" = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select "Employees"."Emp_No", "Last_Name", "First_Name", "Dept_Name"
from "Dept_Emp"
	left join "Employees" on "Dept_Emp"."Emp_No" = "Employees"."Emp_No"
	left join "Departments" on "Dept_Emp"."Dept_No" = "Departments"."Dept_No"
where ("Dept_Name" = 'Sales' or "Dept_Name" = 'Development');

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select "Last_Name", count("Last_Name") as "Frequency"
from "Employees"
group by "Last_Name"
order by count("Last_Name") desc;
