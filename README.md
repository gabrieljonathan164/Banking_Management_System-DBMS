SWIFT BANK MANAGEMENT SYSTEM 

Problem Statement:

People in today's fast-paced world need a quick and secure way to manage their banking activities. With the growing popularity of online banking, a comprehensive system that provides customers with a user-friendly interface to manage their banking transactions is required. A banking management system database is required to centrally store and manage customer information, account details, transaction history, and merchant information.

With a user-friendly interface, the Banking Management System Database for Swift Bank aims to provide a solution that simplifies banking activities for customers and improves their experience. The project will provide a solution that caters to the needs of customers and merchants, enhancing their banking experience, by developing a comprehensive banking management system database.

The project will concentrate on creating a database system that is dependable, scalable, and adaptable to changing requirements. The system should be able to manage large amounts of data efficiently and provide customers with real-time updates. The database will store and provide easy access to entities such as User Credentials, Customer, Account, Savings Account, Checking Account, Merchant, and Transactions.

Functionality:

The Swift Banking Management System Database seeks to provide a comprehensive online banking solution that enables customers to manage their banking activities from any location at any time. User registration and login, customer and account management, merchant management, and transaction management are all available through the system. Customers can open various types of accounts, such as Savings Accounts and Checking Accounts, and conduct transactions such as depositing, withdrawing, transferring, and paying bills. Customers can use the system to make payments to merchants, and merchants can register and manage their payment details. The system records all transactions, keeps a transaction history, and provides real-time updates to customers. The project provides a user-friendly interface that improves the customer's banking experience and ensures that all customer information is secure.

Entities:
1)	Customers (has a unique customer ID)
2)	Merchants (has a unique merchant ID)
3)	User Credential (has a unique Login ID)
4)	Transactions (has a unique transaction ID, records a payment every time a customer pays a merchant)
5)	Account (has a unique Account ID)
6)	SavingAccount (SAccountID)
7)	CheckingAccount (CAccountID)

Relationship between entities:

UserCredentials	(1:1)	Customer
Customer	(1:M)	Account
Account	(1:M)	Transactions
Transactions	(M:1)	Merchant

Cardinalities of Relationships among entities:

User credentials (mandatory one)	Customers (optional one)
Customers (mandatory many)		Accounts (mandatory one) Account type savings checking (optional many)	Transactions (mandatory one) Transactions (mandatory one)		Merchants (optional many)

Attributes of all entities:
•	CustID
•	CustName
•	CustPhone
•	CustAddress
•	CustEmail
•	DateRegistered

•	LoginID
•	Passwd

•	AccountID
•	AccountName
•	DateOpened	•	AccountType
•	AccountBal
•	RoutingNum

•	Min_Bal
•	Interest_Rate

•	Monthly_fee
•	ATM_withdrawalcap
•	DebitCardNum
•	PIN	•	TransID
•	TransDate
•	TransAmount
•	TransStatus

•	Merchant_ID
•	Merchant_Name
•	Merchant_Phone
•	Merchant_email
•	Merchant_address

ER – Diagram:
Below is the final outcome of all the entities we chose along with the attribute names for the overall Use Case.

Entities:

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture1.jpg) 

Diagram:
![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture2.jpg) 
 
ER Diagram to Relational Schema:
Converting an ER diagram to a relational schema helps identify and mapping the entities and relationships in the ER diagram to tables, columns, and relationships in the relational schema. The goal of converting an ER diagram to a relational schema is to create a well-structured and normalized database schema that a database management system can easily implement and use. This enables developers and users to interact with data in a consistent and efficient manner, while reducing the risk of data redundancy and inconsistency. The relational schema can also be used to create the database tables and indexes in the database management system.

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture3.jpg) 

Data Normalization:
The process of organizing data in a database so that it is structured, efficient, and easy to use is known as data normalization. The primary goal of data normalization is to reduce data redundancy and improve data integrity, resulting in a more efficient and reliable database system. Data normalization is required because databases frequently contain a large amount of redundant data, which can lead to inconsistencies, errors, and inefficiencies. By normalizing data, redundant data can be eliminated or minimized, reducing storage requirements and improving database performance.
 
Normalization: 1st Normal Form (1NF) - contains only atomic values and ensures that each row in the table is unique.

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture4.jpg) 

Normalization: 2nd Normal Form (2NF) – eliminate partial dependencies and ensure that each column in the table is functionally dependent on the entire key.

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture5.jpg) 
 
Normalization: 3rd Normal Form (3NF) – eliminates transitive dependencies and ensure that each column in the table is directly related or has full dependency to the key.

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture6.jpg) 

Summary Table for each Entitiy:

![Alt text](https://github.com/gabrieljonathan164/Banking_Management_System-DBMS/blob/main/Images/Picture7.jpg) 

