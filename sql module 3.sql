use mydb2;
/*
DROP TABLE salesman;
DROP TABLE customer;
DROP TABLE orders;
DROP TABLE item_mast ;
DROP TABLE emp_details ;
*/
/*
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS salesman;
DROP TABLE IF EXISTS item_mast;
DROP TABLE IF EXISTS emp_details;
*/

/*1. write a SQL query to find customers who are either from the city 'NewYork' or who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.*/
/*SELECT customer_id, cust_name, city, grade, salesman_id
FROM customers
WHERE city = 'NewYork' OR grade <= 100 OR grade IS NULL;*/
/*2. write a SQL query to find all the customers in ‘New York’ city who have agrade value above 100. Return customer_id, cust_name, city, grade, and salesman_id. */
/*SELECT customer_id, cust_name, city, grade, salesman_id
FROM customers
WHERE city = 'NewYork' AND grade > 100;*/
/*3. Write a SQL query that displays order number, purchase amount, and the  achieved and unachieved percentage (%) for those orders that exceed 50%of the target value of 6000.*/
/*SELECT order_no,
       purch_amt,
       (purch_amt / 6000.0) * 100 AS achieved_percentage,
       100 - ((purch_amt / 6000.0) * 100) AS unachieved_percentage
FROM orders
WHERE purch_amt > 0.5 * 6000;*/
/*4. write a SQL query to calculate the total purchase amount of all orders. Return total purchase amount.*/
/*SELECT SUM(purch_amt) AS total_purchase_amount
FROM orders;*/
/* 5. write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount.*/
/*SELECT customer_id, MAX(purch_amt) AS maximum_purchase_amount
FROM orders
GROUP BY customer_id;*/
/*6. write a SQL query to calculate the average product price. Return average product price. */
/*SELECT AVG(price) AS average_product_price
FROM products;/
/*7. write a SQL query to find those employees whose department is located at ‘Toronto’. Return first name, last name, employee ID, job ID.*/
/*select 
 first_name,
employees last_name,
employees.employees_id,
employees.job_id,
employees departmeent_id,
locations.city
from employess
left joi departmeents on employees.departmeent =departmeent.departmeent_id
left joi locations employees.job_id,employees last_name,
gruop by employees last_name;
 */

/*8. write a SQL query to find those employees whose salary is lower than that of  employees whose job title is "MK_MAN". Exclude employees of the Jobtitle ‘MK_MAN’. Return employee ID, first name, last name, job ID. */
/*SELECT 
employee_id,
 first_name, 
 last_name, job_id
FROM employees
WHERE salary < (
    SELECT MIN(salary)
    FROM employees
    WHERE job_id = 'MK_MAN'
)
AND job_id <> 'MK_MAN';*/
 /*9. write a SQL query to find all those employees who work in department ID80or 40. Return first name, last name, department number and department name.*/

/*SELECT e.first_name, 
       e.last_name, 
       e.department_id, 
       d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IN (80, 40);*/
/*10.write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and number of employees.*/
/*SELECT department.department_name,
       AVG(e.salary) AS average_salary,
       COUNT(CASE WHEN employees.commission_pct IS NOT NULL THEN 1 END) AS number_of_employees_with_commission
FROM employees e
JOIN departments d ON employees.department_id = department.department_id
GROUP BY department.department_name;*/
/* 11.write a SQL query to find out which employees have the same designationas the employee whose ID is 169. Return first name, last name, department IDandjob ID.*/
/*SELECT first_name, 
       last_name, 
       department_id, 
       job_id
FROM employees
WHERE job_id = (
    SELECT job_id
    FROM employees
    WHERE employee_id = 169
);*/
/*12.write a SQL query to find those employees who earn more than the averagesalary. Return employee ID, first name, last name.*/
/*SELECT employee_id, 
       first_name, 
       last_name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);*/
/*13.write a SQL query to find all those employees who work in the Finance department. Return department ID, name (first), job ID and department name.*/ 
/*SELECT e.department_id,
       e.first_name,
       e.job_id,
       d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';*/
/*14. From the following table, write a SQL query to find the employees whoearnless than the employee of ID 182. Return first name, last name and salary. */
/*SELECT first_name, 
       last_name, 
       salary
FROM employees
WHERE salary < (
    SELECT salary
    FROM employees
    WHERE employee_id = 182
);*/
/*15.Create a stored procedure CountEmployeesByDept that returns the number of employees in each department*/
/*DELIMITER $$

CREATE PROCEDURE CountEmployeesByDept()
BEGIN
    SELECT department_id, 
           COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_id;
END$$

DELIMITER ;*/
/*16.Create a stored procedure AddNewEmployee that adds a new employee tothe database*/
/*DELIMITER $$

CREATE PROCEDURE AddNewEmployee(
    IN PROCEDURE_first_name VARCHAR(50),
    IN PROCEDURE_last_name VARCHAR(50),
    IN PROCEDURE_email VARCHAR(100),
    IN PROCEDURE_phone_number VARCHAR(20),
    IN PROCEDURE_hire_date DATE,
    IN PROCEDURE_job_id VARCHAR(10),
    IN PROCEDURE_salary DECIMAL(10,2),
    IN PROCEDURE_commission_pct DECIMAL(5,2),
    IN PROCEDURE_manager_id INT,
    IN PROCEDURE_department_id INT
)
BEGIN
    INSERT INTO employees (
        first_name, last_name, email, phone_number,
        hire_date, job_id, salary, commission_pct,
        manager_id, department_id
    )
    VALUES (
        PROCEDURE_first_name, PROCEDURE_last_name, PROCEDURE_email, PROCEDURE_phone_number,
        PROCEDURE_hire_date, PROCEDURE_job_id, PROCEDURE_salary, PROCEDURE_commission_pct,
        PROCEDURE_manager_id, PROCEDURE_department_id
    );
END$$

DELIMITER ;*/
/*17.Create a stored procedure DeleteEmployeesByDept that removes all employees from a specific department*/
/*DELIMITER $$

CREATE PROCEDURE DeleteEmployeesByDept(IN p_department_id INT)
BEGIN
    DELETE FROM employees
    WHERE department_id = p_department_id;
END$$

DELIMITER ;*/
/*CALL DeleteEmployeesByDept(60);*/
/*18.Create a stored procedure GetTopPaidEmployees that retrieves the highest-paid employee in each department. */
/*DELIMITER $$

CREATE PROCEDURE GetTopPaidEmployees()
BEGIN
    SELECT employee.employee_id,
           employee.first_name,
           employee.last_name,
           employee.salary,
           employee.department_id
    FROM employees e
    WHERE employee.salary = (
        SELECT MAX(salary)
        FROM employees
        WHERE department_id = employee.department_id
    )
    ORDER BY e.department_id;
END$$

DELIMITER ;
CALL GetTopPaidEmployees();*/
 /*19.Create a stored procedure PromoteEmployee that increases an employee’s salary and changes their job role.*/
/*DELIMITER $$

CREATE PROCEDURE PromoteEmployee(
    IN p_employee_id INT,
    IN p_new_salary DECIMAL(10,2),
    IN p_new_job_id VARCHAR(10)
)
BEGIN
    UPDATE employees
    SET salary = p_new_salary,
        job_id = p_new_job_id
    WHERE employee_id = p_employee_id;
END$$

DELIMITER ;
CALL PromoteEmployee(101, 8500.00, 'IT_MANAGER');*/
/*20.Create a stored procedure AssignManagerToDepartment that assigns a new manager to all employees in a specific department.*/ 
/*DELIMITER $$

CREATE PROCEDURE AssignManagerToDepartment(
    IN p_department_id INT,
    IN p_new_manager_id INT
)
BEGIN
    UPDATE employees
    SET manager_id = p_new_manager_id
    WHERE department_id = p_department_id;
END$$

DELIMITER ;
CALL AssignManagerToDepartment(60, 103);*/


















