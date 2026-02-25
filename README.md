# SQL
## **Car Dealership**
The dealership has mechanics, salespeople who can sell new and used cars, and can also service cars.
For each seller, we register a unique code, his last name and first name. A seller can sell many cars, but each car is sold by only one seller.
For each car, we register a unique code, the company that manufactured it, its model, its color, its year of manufacture, its serial number, 
as well as whether it is for sale (Y) or for repair only (N). For each customer, we register a unique code, his last name and first name, 
his contact phone number and his address (city, ZIP code, street, number). A customer can buy many cars, but each car is bought by only one customer.
A seller issues only one invoice for each car he sells. A customer receives an invoice for each car he buys. When an invoice is issued, its code number,
the date of issue, and the total value in euros are recorded. A customer can come to have his car repaired at the service department (without necessarily 
having purchased his car from the specific dealership). When a customer brings one or more cars for repair, a service ticket is issued for each car. 
When a service ticket is issued (and during the repair), a unique code for the ticket is recorded, the date the car was brought into the service department, 
the date the car was picked up by the service department, comments/observations about the repair, and the cost of the repair. A car that goes through service 
can be repaired by multiple mechanics, and each mechanic can work on multiple cars. For each mechanic, we enter a code, his last name and his first name. 
For each service performed and for each mechanic working on it, we enter the working hours required, as well as the mechanic's comments on the repair.
ER diagramm:
<img width="664" height="602" alt="Στιγμιότυπο οθόνης (2)" src="https://github.com/user-attachments/assets/21d52903-8385-41ea-8bba-5d783e65d8f5" />
Relational model:
<img width="651" height="567" alt="Στιγμιότυπο οθόνης (3)" src="https://github.com/user-attachments/assets/26e0218a-e7d1-417b-9f29-4bb91853ef69" />

The Car_dealership.sql file gives the SQL expressions for the following queries:
1. Display all the details of the cars whose model includes the word "Toyota".
2. Display a list of all invoices issued during the year 2021.
3. Calculate the total number of cars repaired at the service.
4. Display the codes and names of customers who purchased more than two cars.
5. Display the name of the mechanic who worked the most hours.
6. Calculate the total turnover of the dealership from its service department during the year 2021.
7. Display the code and name of the salesperson who made the most sales.
