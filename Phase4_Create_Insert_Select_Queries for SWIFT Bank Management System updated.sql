/*************************IF TABLES EXIST ALREADY**************************/
drop table UserCredentials	 CASCADE CONSTRAINTS;
drop table Customer CASCADE CONSTRAINTS;
drop table Account CASCADE CONSTRAINTS;
drop table SavingAccount CASCADE CONSTRAINTS;
drop table CheckingAccount CASCADE CONSTRAINTS;
drop table Merchant CASCADE CONSTRAINTS;
drop table Transactions CASCADE CONSTRAINTS;

/*************************CREATION OF TABLES STARTED**************************/
/*************************CUSTOMERS Table**************************/

CREATE TABLE Customer
(
CustID INT NOT NULL PRIMARY KEY Auto_Increment,
CustName VARCHAR(50) NOT NULL,
CustPhone VARCHAR(20) NOT NULL,
CustAddress VARCHAR(50) NOT NULL,
CustEmail VARCHAR(50) NOT NULL,
DateRegistered DATE NOT NULL
) ;

/*************************APP_CREDENTIALS Table**************************/

CREATE TABLE UserCredentials
(
LoginId VARCHAR(10) NOT NULL UNIQUE,
CustID INT NOT NULL,
Passwd VARCHAR(20) NOT NULL,
CONSTRAINT UserCredentials_PK PRIMARY KEY(LoginId),
CONSTRAINT UserCredentials_FK FOREIGN KEY(CustID) REFERENCES Customer(CustID)
) ;

/*************************ACCOUNTS Table**************************/

CREATE TABLE Account
(
AccountID INT NOT NULL PRIMARY KEY Auto_Increment,
AccountName VARCHAR(50) NOT NULL,
DateOpened DATE NOT NULL,
AccountType VARCHAR(20) NOT NULL,
AccountBalance DECIMAL(10,2) NOT NULL,
RoutingNum VARCHAR(20) NOT NULL,
CustID INT NOT NULL,
CONSTRAINT Account_FK FOREIGN KEY(CustID) REFERENCES Customer(CustID)
) ;


/*************************SAVINGS_ACCOUNT Table**************************/

CREATE TABLE SavingAccount
(
AccountID INT NOT NULL PRIMARY KEY,
Min_Bal DECIMAL(10,2) NOT NULL,
Interest_Rate DECIMAL(5,2) NOT NULL,
CONSTRAINT SavingAccount_FK FOREIGN KEY(AccountID) REFERENCES Account(AccountID)
);





/*************************CHECKING_ACCOUNTS Table**************************/

CREATE TABLE CheckingAccount
(
AccountID INT NOT NULL PRIMARY KEY,
Monthly_fee DECIMAL(10,2) NOT NULL,
ATM_withdrawalcap INT NOT NULL,
DebitCardNum VARCHAR(20) NOT NULL,
PIN VARCHAR(4) NOT NULL,
CONSTRAINT Checking_Account_FK FOREIGN KEY(AccountID) REFERENCES Account(AccountID)
);

/*************************MERCHANTS Table**************************/

CREATE TABLE Merchant (
    Merchant_ID INT NOT NULL PRIMARY KEY,
    Merchant_Name VARCHAR(50) NOT NULL,
    Merchant_Phone VARCHAR(15) NOT NULL,
    Merchant_email VARCHAR(50) NOT NULL,
    Merchant_address VARCHAR(100) NOT NULL
);

/*************************TRANSACTIONS Table**************************/

CREATE TABLE Transactions (
    TransID INT NOT NULL PRIMARY KEY,
    TransDate DATE NOT NULL,
    TransAmount DECIMAL(10,2) NOT NULL,
    TransStatus VARCHAR(20) NOT NULL,
    AccountID INT NOT NULL,
    Merchant_ID INT NOT NULL,
    CONSTRAINT FK_Transaction_Account FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
    CONSTRAINT FK_Transaction_Merchant FOREIGN KEY (Merchant_ID) REFERENCES Merchant(Merchant_ID)
);


/***********************CREATION OF TABLES COMPLETED**************************/
/*************************INSERTION OF DATA***********************************/

/*************************CUSTOMERS Table**************************/

INSERT INTO Customer (CustName, CustPhone, CustAddress, CustEmail, DateRegistered)
VALUES
('John Doe', '123-456-7890', '123 Main St, Anytown, USA', 'johndoe@email.com', '2020-01-01'),
('Jane Smith', '987-654-3210', '456 Oak Ave, Somecity, USA', 'janesmith@email.com', '2019-05-15'),
('Bob Johnson', '555-123-4567', '789 Elm St, Anothercity, USA', 'bobjohnson@email.com', '2022-02-10'),
('Samantha Brown', '555-555-1212', '432 Pine St, Bigcity, USA', 'samanthabrown@email.com', '2021-12-01'),
('Tom Wilson', '555-555-5555', '111 Cherry Ave, Smalltown, USA', 'tomwilson@email.com', '2018-10-20'),
('Mary Jackson', '555-789-1234', '222 Cedar Blvd, Nowhereville, USA', 'maryjackson@email.com', '2023-01-01'),
('David Lee', '555-888-7777', '444 Maple Dr, Anytown, USA', 'davidlee@email.com', '2020-03-15'),
('Karen Davis', '555-444-5555', '567 Birch St, Somecity, USA', 'karendavis@email.com', '2022-05-01'),
('James Brown', '555-123-7890', '999 Oak Ln, Anothercity, USA', 'jamesbrown@email.com', '2019-08-15'),
('Megan Williams', '555-321-4567', '333 Pine Dr, Bigcity, USA', 'meganwilliams@email.com', '2022-01-01');


/*************************APP_CREDENTIALS Table**************************/

INSERT INTO UserCredentials (LoginId, CustID, Passwd)
VALUES
    ('user1', 1, 'password1'),
    ('user2', 2, 'password2'),
    ('user3', 3, 'password3'),
    ('user4', 4, 'password4'),
    ('user5', 5, 'password5'),
    ('user6', 6, 'password6'),
    ('user7', 7, 'password7'),
    ('user8', 8, 'password8'),
    ('user9', 9, 'password9'),
    ('user10', 10, 'password10');


/*************************ACCOUNTS Table**************************/

INSERT INTO Account (AccountName, DateOpened, AccountType, AccountBalance, RoutingNum, CustID)
VALUES
('John Doe', '2020-01-01', 'Checking', 5000.00, '123456789', 1),
('Jane Smith', '2019-05-15', 'Savings', 10000.00, '234567890', 2),
('Bob Johnson', '2022-02-10', 'Checking', 7500.00, '345678901', 3),
('Samantha Brown', '2021-12-01', 'Savings', 15000.00, '456789012', 4),
('Tom Wilson', '2018-10-20', 'Checking', 1000.00, '567890123', 5),
('Mary Jackson', '2023-01-01', 'Savings', 20000.00, '678901234', 6),
('David Lee', '2020-03-15', 'Checking', 3000.00, '789012345', 7),
('Karen Davis', '2022-05-01', 'Savings', 5000.00, '890123456', 8),
('James Brown', '2019-08-15', 'Checking', 2500.00, '901234567', 9),
('Megan Williams', '2022-01-01', 'Savings', 12000.00, '012345678', 10)


/*************************SAVINGS_ACCOUNT Table**************************/

INSERT INTO SavingAccount (AccountID, Min_Bal, Interest_Rate)
VALUES
(1, 1000.00, 0.50),
(2, 5000.00, 0.75),
(3, 2500.00, 0.25),
(4, 10000.00, 1.00),
(5, 500.00, 0.50),
(6, 10000.00, 0.75),
(7, 1000.00, 0.25),
(8, 2000.00, 0.50),
(9, 1500.00, 0.25),
(10, 8000.00, 0.75);


/*************************CHECKING_ACCOUNTS Table**************************/

INSERT INTO CheckingAccount (AccountID, Monthly_Fee, ATM_WithdrawalCap, DebitCardNum, PIN)
VALUES
(1, 10.00, 500, '1234567890123456', '1234'),
(2, 5.00, 250, '2345678901234567', '2345'),
(3, 15.00, 750, '3456789012345678', '3456'),
(4, 10.00, 500, '4567890123456789', '4567'),
(5, 0.00, 0, '5678901234567890', '5678'),
(6, 5.00, 250, '6789012345678901', '6789'),
(7, 10.00, 500, '7890123456789012', '7890'),
(8, 5.00, 250, '8901234567890123', '8901'),
(9, 15.00, 750, '9012345678901234', '9012'),
(10, 5.00, 250, '0123456789012345', '0123');


/*************************MERCHANTS Table**************************/

INSERT INTO Merchant (Merchant_ID, Merchant_Name, Merchant_Phone, Merchant_email, Merchant_address)
VALUES
(1, 'Amazon', '+1-800-201-7575', 'support@amazon.com', '410 Terry Ave. North Seattle, WA 98109'),
(2, 'Walmart', '+1-800-925-6278', 'help@walmart.com', '702 SW 8th St, Bentonville, AR 72712'),
(3, 'Target', '+1-800-440-0680', 'guest.service@target.com', '1000 Nicollet Mall, Minneapolis, MN 55403'),
(4, 'Best Buy', '+1-888-237-8289', 'customerservice@bestbuy.com', '7601 Penn Ave S, Richfield, MN 55423'),
(5, 'Apple Inc.', '+1-800-275-2273', 'feedback@apple.com', '1 Apple Park Way, Cupertino, CA 95014'),
(6, 'Microsoft Corporation', '+1-800-642-7676', 'support@microsoft.com', 'One Microsoft Way, Redmond, WA 98052'),
(7, 'Nike', '+1-800-344-6453', 'nikestore@nike.com', '1 Bowerman Dr, Beaverton, OR 97005'),
(8, 'Adidas', '+1-800-448-1796', 'customercare@adidas.com', '5055 N Greeley Ave, Portland, OR 97217'),
(9, 'Starbucks', '+1-800-782-7282', 'info@starbucks.com', '2401 Utah Ave S, Seattle, WA 98134'),
(10, 'McDonald''s', '+1-800-244-6227', 'customerservice@mcdonalds.com', '2111 McDonald''s Dr, Oak Brook, IL 60523');

/*************************TRANSACTIONS Table**************************/

INSERT INTO Transactions(TransID, TransDate, TransAmount, TransStatus, AccountID, Merchant_ID)
VALUES
(1, '2023-03-01', 100.00, 'Approved', 1, 1),
(2, '2023-03-02', 50.00, 'Approved', 2, 2),
(3, '2023-03-03', 200.00, 'Approved', 3, 3),
(4, '2023-03-04', 150.00, 'Approved', 4, 4),
(5, '2023-03-05', 75.00, 'Approved', 5, 5),
(6, '2023-03-06', 300.00, 'Approved', 6, 6),
(7, '2023-03-07', 25.00, 'Declined', 7, 7),
(8, '2023-03-08', 400.00, 'Approved', 8, 8),
(9, '2023-03-09', 80.00, 'Approved', 9, 9),
(10, '2023-03-10', 500.00, 'Declined', 10, 10);


/*************************INSERTION OF DATA COMPLETED*******************************************/


select * from Customer;
select * from UserCredentials;
select * from Account;
select * from SavingAccount;
select * from CheckingAccount;
select * from Merchant;
select * from Transactions;


