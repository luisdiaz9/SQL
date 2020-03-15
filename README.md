# SQL
### Summary<br>
This repository shows the appropriate syntax for a research project on employees of Pewlett Hackard from the 1980s and 1990s.<br>
### Technical Details<br>
In order to run the code, it is required postgre sql.<br>
### Screenshots<br>
LastNamesCount.JPG<br>
![LastNamesCount](LastNamesCount.JPG)<br>
EmployeesSalary.JPG<br>
![EmployeesSalary](EmployeesSalary.JPG)<br>
LastNamesCount.JPG<br>
![LastNamesCount](LastNamesCount.JPG)<br>
499942.JPG<br>
![499942](499942.JPG)<br>
### Explanations<br>
The outcome is shown in screenshots for reference purpose of the public.<br>

# SQL

Research project on employees of Pewlett Hackard from the 1980s and 1990s. <br>
The database of employees from that period are in six CSV files.<br>
Design the tables to hold data in the CSVs (Data Modeling): Sketch out an ERD of the tables with http://www.quickdatabasediagrams.com<br>
Import the CSVs into a SQL data base (Data Engineering): Create a table schema for each of the six CSV files and specify data types, primary keys, foreign keys, and other constraints. Import each CSV file into the corresponding SQL table.<br>
Answer questions about the data (Data Analysis): <br>
* List the following details of each employee: employee number, last name, first name, gender, and salary.<br>
* List employees who were hired in 1986.<br>
* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.<br>
* List the department of each employee with the following information: employee number, last name, first name, and department name.<br>
* List all employees whose first name is "Hercules" and last names begin with "B."<br>
* List all employees in the Sales department, including their employee number, last name, first name, and department name.<br>
* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.<br>
* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.<br>

Be sure to make any necessary modifications for your username, password, host, port, and database name in Jupyter Notebook:<br>
from sqlalchemy import create_engine <br>
engine = create_engine('postgresql://localhost:5432/<your_db_name>') <br>
connection = engine.connect() <br>

Consult SQLAlchemy documentation for more information.<br>
See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://martin-thoma.com/configuration-files-in-python/ for more information.<br>
Create a bar chart of average salary by title.<br>
Look down with a sly grin and see that your employee ID number is 499942.<br>
