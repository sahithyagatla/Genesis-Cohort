# Databricks notebook source
# MAGIC %sql
# MAGIC REPLACE TABLE Customers1(
# MAGIC     CustomerID INT,
# MAGIC     CustomerName STRING,
# MAGIC     City STRING,
# MAGIC     AccountType STRING,
# MAGIC     Balance INT,
# MAGIC     LoanAmount INT
# MAGIC );
# MAGIC INSERT INTO Customers1 VALUES
# MAGIC (101,'John','Dallas','Savings',5000,10000),
# MAGIC (102,'Mary','Austin','Current',2500,5000),
# MAGIC (103,'David','Dallas','Savings',8000,0),
# MAGIC (104,'Emma','Houston','Savings',1500,3000),
# MAGIC (105,'Alex','Austin','Current',7000,12000),
# MAGIC (106,'Sophia','Dallas','Savings',5000,8000);
# MAGIC select * from Customers1;
# MAGIC
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT CustomerName, City, Balance, LoanAmount
# MAGIC FROM Customers1;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT DISTINCT City 
# MAGIC FROM Customers1;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT *
# MAGIC FROM Customers1
# MAGIC ORDER BY LoanAmount DESC;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT *
# MAGIC FROM Customers1
# MAGIC ORDER BY LoanAmount DESC
# MAGIC LIMIT 5;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT COUNT(*)As Total_Customers
# MAGIC FROM Customers1;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT SUM(LoanAmount) AS Total_Loan_Amount
# MAGIC FROM Customers1;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT MIN(Balance) AS Minimum_Balance
# MAGIC FROM Customers1;
# MAGIC
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT MAX(Balance) AS Maxmimum_Balance
# MAGIC FROM Customers1;
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT AVG(Balance) AS Average_Balance
# MAGIC FROM Customers1;
# MAGIC