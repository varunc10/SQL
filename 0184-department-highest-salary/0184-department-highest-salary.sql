# Write your MySQL query statement below
SELECT Department.name AS Department, Employee.name AS Employee, Employee.salary as Salary
FROM Employee
JOIN Department
on  Employee.departmentId=Department.id
WHERE (Employee.DepartmentId, salary) IN
    (SELECT
         DepartmentId, MAX(salary)
     FROM
         Employee
     GROUP BY DepartmentId
    );
