#1. Display information of Factory where the location is Hydrabad
select *
from factory
where factory_location="Hydrabad  "

#2. Display information of all drivers whos salary is greater than 30k
select *
from drivers
where driver_salary>30000

#3. Display the emp id and dependent name of all dependent in a descending order by the emp id
select emp_id, dependent_name
from dependent
order by emp_id desc

#4. Display the id, name, contact no., and total days take for those where the number of days is greater than or equal to 5
select drivers.driver_id, driver_name,driver_co_number,loader_id,total_days_taken
from drivers,loader
where drivers.driver_id=loader.driver_id and total_days_taken>=5

#5. Display id, name, contact no. , and the number of stock for the factory which has the maximum no. of stock available
select factory_id, factory_name, factory_co_number, factory_stock
from factory
where factory_stock = (select max(factory_stock) from factory)

#6. Display information of all drivers whos id comes in between 205 to 210 using inner join
select *
from drivers natural inner join loader
where driver_id between '205' and '210'

#7. Write a query to find the total amount of bills generated
SELECT SUM(TOTAL_AMOUNT) as Total_Bill_Amount 
FROM BILLS;

#8. Write a query to find the name of the traders whose location is 'Goa'
SELECT TRADER_NAME 
FROM TRADERS 
WHERE TRADER_LOCATION = 'Goa';

#9. Write a query to find the names and salaries of the employees whose salary is greater than 700000.
SELECT EMP_FNAME, EMP_LNAME, EMP_SALARY 
FROM EMPLOYYEE 
WHERE EMP_SALARY > 700000;

#10.Write a query to find the traders who are also buyers.
SELECT TRADER_NAME 
FROM TRADERS 
WHERE TRADER_TYPE = 'Buyer';


#11. Write a SQL query to select all employees whose first name starts with the letter 'R'.
SELECT * 
FROM EMPLOYYEE 
WHERE EMP_FNAME LIKE 'R%';

#12. Write a query where the name of the employee contains the word Anuj 
SELECT * 
FROM EMPLOYYEE 
WHERE EMP_FNAME like '%Anuj%';

#13. Write an SQL query to retrieve the names of traders and factories located in the same city by taking the Cartesian product of TRADERS and FACTORY tables
SELECT TRADER_NAME, FACTORY_NAME, TRADER_LOCATION as LOCATION
FROM TRADERS, FACTORY
WHERE TRADERS.TRADER_LOCATION = FACTORY.FACTORY_LOCATION;

#14. Write an SQL query to find the minimum and maximum weight of items for each type of item.
SELECT ITEM_TYPE, MIN(ITEM_WEIGHT) as min_weight, MAX(ITEM_WEIGHT) as max_weight 
FROM ITEM 
GROUP BY ITEM_TYPE;

#15. Write an SQL query to find the average salary of all employees.
SELECT AVG(EMP_SALARY) as avg_salary 
FROM EMPLOYEE;

#16. Write an SQL query to display the details of all the employees who have dependents and whose dependent names starts from an I
SELECT *
FROM EMPLOYEE
WHERE EMP_ID IN (
    SELECT EMP_ID
    FROM DEPENDENT
    WHERE DEPENDENT_NAME like "I%"
);

#17. Create a view that displays the list of loaders with their respective driver names, the start location, and the total number of days taken.
CREATE VIEW loader_info AS
SELECT LOADER.LOADER_ID, DRIVERS.DRIVER_NAME, LOADER.START_LOC, LOADER.TOTAL_DAYS_TAKEN
FROM LOADER Inner JOIN DRIVERS 
ON LOADER.DRIVER_ID = DRIVERS.DRIVER_ID;

#18. Display the  view loaders_info created above
select *
from loader_info

#19. Find all cities with more than 2 factories in the same city
select FACTORY_LOCATION, count(*) as Num_Factories
from Factory
group by FACTORY_LOCATION
having count(*) > 2;

#20. Display the driver id and name who driver loaders which are chhattisgarh using nested subqueries
Select driver_id , driver_name
from drivers
where driver_id in (
select driver_id
from loader 
where LOADER_NUMBER like "CG%" 
);

#21. Display contact list of all drivers and traders using set operations
(select TRADER_CO_NUMBER as Contact_List ,TRADER_NAME as Contact_Names from traders)
union
(select DRIVER_CO_NUMBER,DRIVER_NAME from drivers)

#22.Write a query to Perform inner join on loader and drivers
select *
from loader inner join drivers
using (driver_id);

#23. Write a query to display Name and GSTIN whos billing amount is between 8k to 9k
select GSTIN,BILLING_NAME
from Bills
where TOTAL_AMOUNT between 8000 and 9000;


Select drivers.driver_id, driver_name,loader_number
from drivers,loader
where drivers.driver_id=loader.driver_id and LOADER_NUMBER like "MH%";


