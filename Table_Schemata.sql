CREATE TABLE "Departments" (
  "Dept_No" varchar(4),
  "Dept_Name" varchar(100) not null,
  PRIMARY KEY ("Dept_No")
);

CREATE TABLE "Dept_Emp" (
  "Emp_No" int references "Employees" ("Emp_No"),
  "Dept_No" varchar(4) references "Departments" ("Dept_No"),
  "From_Date" Date not null,
  "To_Date" Date not null
);

CREATE INDEX "DeptEmpFK" ON  "Dept_Emp" ("Emp_No", "Dept_No");

CREATE TABLE "Dept_Manager" (
  "Dept_No" varchar(4) references "Departments" ("Dept_No"),
  "Emp_No" int references "Employees" ("Emp_No"),
  "From_Date" Date not null,
  "To_Date" Date not null
);

CREATE INDEX "DeptMgrFK" ON  "Dept_Manager" ("Emp_No", "Dept_No");

CREATE TABLE "Employees" (
  "Emp_No" int,
  "Birth_Date" Date not null,
  "First_Name" varchar(100) not null,
  "Last_Name" varchar(100) not null,
  "Gender" varchar(1) not null,
  "Hire_Date" Date not null,
  PRIMARY KEY ("Emp_No")
);

CREATE TABLE "Salaries" (
  "Emp_No" int references "Employees" ("Emp_No"),
  "Salary" Int not null,
  "From_Date" Date not null,
  "To_Date" Date not null
);

CREATE INDEX "SalariesFK" ON  "Salaries" ("Emp_No");

CREATE TABLE "Titles" (
  "Emp_No" int references "Employees" ("Emp_No"),
  "Title" varchar(100) not null,
  "From_Date" Date not null,
  "To_Date" Date not null
);

CREATE INDEX "TitlesFK" ON  "Titles" ("Emp_No");