create database bank_database;
use bank_database;
CREATE TABLE bank_churn (
CustomerId SERIAL PRIMARY KEY,
Surname VARCHAR(50),
CreditScore INT,
Geography VARCHAR(50),
GENEDER VARCHAR(10),
Age INT,
Tenure INT,
Balance NUMERIC(18,2),
NumOfProducts INT,
HasCrCard BOOLEAN,
IsActiveMember BOOLEAN,
EstimatedSalary NUMERIC(18,2),
Excited BOOLEAN
);

SELECT * from bank_churn;


SHOW VARIABLES LIKE 'secure_file_priv'; -- knowing the file path

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bank_Churn.csv'
INTO TABLE bank_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
;


USE bank_database;
CREATE TABLE Bank_Churn_Data_Dictionary (
Feild VARCHAR(50),
Description VARCHAR(500)
);

ALTER TABLE Bank_Churn_Data_Dictionary
CHANGE COLUMN description Description VARCHAR(20000);


DESCRIBE Bank_Churn_Data_Dictionary;


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bank_Churn_Data_Dictionary.csv'
INTO TABLE Bank_Churn_Data_Dictionary
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


-- What attributes are more common among churners than non-churners? Can churn be predicted using the variables in the data?

SELECT
    Geography,
    GENEDER ,
    AVG(CreditScore) AS AvgCreditScore,
    AVG(Age) AS AvgAge,
    AVG(Balance) AS AvgBalance,
    AVG(EstimatedSalary) AS AvgSalary,
    AVG(NumOfProducts) AS AvgProducts
FROM
    bank_database.bank_churn
WHERE
Excited = 1 -- People who have churned out of the bank
GROUP BY
Geography , GENEDER
ORDER BY
    Geography, GENEDER;




-- What do the overall demographics of the bank's customers look like?

-- Count of customers by geography
SELECT 
    Geography, 
    COUNT(*) AS Total_Customers 
FROM 
    bank_database.bank_churn
GROUP BY 
    Geography;

-- Gender distribution
SELECT 
    Gender, 
    COUNT(*) AS Total_Customers 
FROM 
    bank_database.bank_churn
GROUP BY 
    Gender;

-- Average age of customers
SELECT 
    AVG(Age) AS Average_Age 
FROM 
    bank_database.bank_churn;

-- Average balance of customers
SELECT 
    AVG(Balance) AS Average_Balance 
FROM 
    bank_database.bank_churn;

-- Age and balance distribution by geography
SELECT 
    Geography, 
    AVG(Age) AS Average_Age, 
    AVG(Balance) AS Average_Balance 
FROM 
    bank_database.bank_churn
GROUP BY 
    Geography;


-- Is there a difference between German, French, and Spanish customers in terms of account behavior?

-- Analyze account behavior by geography
SELECT 
    Geography,
    AVG(CreditScore) AS Avg_CreditScore,
    AVG(Balance) AS Avg_Balance,
    AVG(NumOfProducts) AS Avg_NumOfProducts,
    SUM(HasCrCard) / COUNT(*) * 100 AS Percent_HasCreditCard,
    SUM(IsActiveMember) / COUNT(*) * 100 AS Percent_ActiveMembers
FROM 
    bank_database.bank_churn
GROUP BY 
    Geography;


-- What types of segments exist within the bank's customers?


-- Segment customers by behavior and geography
SELECT 
    CASE 
        WHEN Balance = 0 THEN 'Low Balance'
        WHEN Balance BETWEEN 1 AND 100000 THEN 'Mid Balance'
        ELSE 'High Balance'
    END AS Balance_Segment,
    Geography,
    CASE 
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Middle Age'
        ELSE 'Senior'
    END AS Age_Segment,
    AVG(CreditScore) AS Avg_CreditScore,
    AVG(NumOfProducts) AS Avg_NumOfProducts,
    SUM(Exited) / COUNT(*) * 100 AS Churn_Rate
FROM 
    bank_database.bank_churn
GROUP BY 
    Balance_Segment, Geography, Age_Segment;










