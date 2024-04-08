# Iron-and-Steel-Trading-Management-System
Website for Steel and Iron Management Database System using MySQL, Python, Flask, HTML and CSS for analysing the existing data management process.

Components of Database Design-
1. Items: It is an entity which comprises all the items that a trader can sell or buy
Attributes: Item ID, Weight, Availability, Type
2. Trader: This entity gives us information about the trader i.e. whether he is a buyer or seller and
other vital information about the person
Attributes: Trader ID, Location, Type, Name, Contact Number
3. Factories: This entity tells us about different factories present across India
Attributes: Factory ID, Name, Stock, Contact Number, Location, Owner
4. Drivers: This entity lets us know about the details of the drivers who deliver the products from one
location to another
Attributes: Driver ID, Name, Salary, Contact Number
5. Loaders: They are the vehicles which are driven by drivers to deliver the orders
Attributes: Loader ID, Type, Loader Number, End_Loc, Start_Loc, Total Days Taken, DriverID(FK)
6. Bill: It tells us about the total amount of the bill and its details
Attributes: GSTIN, E-Invoice Number, Total Amount, Billing Name
7. Employee: This entity lets us know about the employees working currently
Attributes: Employee ID, Company Name, Salary, Number, Name (First Name, Last_Name)
8. Dependents: This tells us about the dependents of the employees that work for our company
Attributes: Name, Number, Insurance, Employee_ID (FK)


Relationships:
1. Sells/Buys: Traders and Items - One to Many
2. Orders: Traders and Drivers- One to Many
3. Drive: Drivers and Loaders- One to Many
4. Coordinates: Employee and Drivers: Many to Many
5. Works for: Trader to Employee: One to Many
6. Generates: Employee to Bill: One to One
7. Has: Employees to Dependents: One to Many
8. Buys from: Traders to Factories: One to Many
