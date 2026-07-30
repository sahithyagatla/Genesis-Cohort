REPLACE TABLE Customers1(
    CustomerID INT,
    CustomerName STRING,
    City STRING,
    AccountType STRING,
    Balance INT,
    LoanAmount INT
);
INSERT INTO Customers1 VALUES
(101,'John','Dallas','Savings',5000,10000),
(102,'Mary','Austin','Current',2500,5000),
(103,'David','Dallas','Savings',8000,0),
(104,'Emma','Houston','Savings',1500,3000),
(105,'Alex','Austin','Current',7000,12000),
(106,'Sophia','Dallas','Savings',5000,8000);
select * from Customers1;
SELECT CustomerName, City, Balance, LoanAmount
FROM Customers1;
SELECT DISTINCT City 
FROM Customers1;
SELECT *
FROM Customers1
ORDER BY LoanAmount DESC;
FROM Customers1
ORDER BY LoanAmount DESC
LIMIT 5;
SELECT COUNT(*)As Total_Customers
FROM Customers1;
SELECT SUM(LoanAmount) AS Total_Loan_Amount
FROM Customers1;
SELECT MIN(Balance) AS Minimum_Balance
FROM Customers1;
SELECT MAX(Balance) AS Maxmimum_Balance
FROM Customers1;