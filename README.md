# Employee Database: A Mystery in Two Parts

## Background

It this scenario as a new data engineer at a large technology company, my first major task was a research project on employees of the corporation from the 1980s and 1990s. All that remained of the database of employees from that period were six CSV files.

Using this data, I designed the tables to hold data from the CSVs, imported the CSVs into a SQL database, and answered questions about the data. In other words, I performed:

1. Data Modeling
2. Data Engineering
3. Data Analysis

#### Data Modeling

I inspected the CSVs and sketched out an ERD of the tables. 

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

* Import each CSV file into the corresponding SQL table.

#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.
