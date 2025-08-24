-- 1️⃣ Create Database
CREATE DATABASE PakNavyDB;
USE PakNavyDB;

-- 2️⃣ Create Commissioned Officers Table with Salary
CREATE TABLE CommissionedOfficers (
    OfficerID INT PRIMARY KEY,        -- Unique ID for each officer
    Rank VARCHAR(20),                 -- Rank (LT, CDR, CAPT)
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Age INT,
    Branch VARCHAR(30),
    ServiceYears INT,
    City VARCHAR(30),
    Salary DECIMAL(10,2)              -- Monthly Salary
);

-- 3️⃣ Insert Sample Officers (Including LT Nauman Tariq)
INSERT INTO CommissionedOfficers (OfficerID, Rank, FirstName, LastName, Age, Branch, ServiceYears, City, Salary) VALUES
(1, 'LT', 'Nauman', 'Tariq', 25, 'Operations', 3, 'Karachi', 80000),
(2, 'CDR', 'Ali', 'Khan', 40, 'Engineering', 18, 'Lahore', 150000),
(3, 'CAPT', 'Sara', 'Malik', 38, 'Logistics', 16, 'Islamabad', 180000),
(4, 'LT', 'Ahmed', 'Sheikh', 27, 'Operations', 4, 'Rawalpindi', 85000),
(5, 'CAPT', 'Ayesha', 'Raza', 35, 'Engineering', 12, 'Faisalabad', 170000),
(6, 'LT', 'Bilal', 'Hussain', 26, 'Logistics', 3, 'Multan', 80000),
(7, 'CDR', 'Hina', 'Shah', 42, 'Operations', 20, 'Peshawar', 160000),
(8, 'LT', 'Usman', 'Ali', 28, 'Engineering', 5, 'Gujranwala', 90000),
(9, 'CAPT', 'Fatima', 'Iqbal', 36, 'Operations', 15, 'Hyderabad', 175000),
(10, 'LT', 'Danish', 'Akhtar', 27, 'Logistics', 4, 'Faisalabad', 80000);

-- 4️⃣ Update Salaries for Officers from Faisalabad (FSD)
-- LT officers get 100,000
UPDATE CommissionedOfficers
SET Salary = 100000
WHERE Rank = 'LT' AND City = 'Faisalabad';

-- CDR officers from FSD (if any)
UPDATE CommissionedOfficers
SET Salary = 150000
WHERE Rank = 'CDR' AND City = 'Faisalabad';

-- CAPT officers from FSD
UPDATE CommissionedOfficers
SET Salary = 170000
WHERE Rank = 'CAPT' AND City = 'Faisalabad';

-- 5️⃣ Select Queries to check
-- Show all officers
SELECT * FROM CommissionedOfficers;

-- Show all LT officers
SELECT * FROM CommissionedOfficers WHERE Rank = 'LT';

-- Show all officers from Faisalabad
SELECT * FROM CommissionedOfficers WHERE City = 'Faisalabad';

-- Order officers by Salary
SELECT * FROM CommissionedOfficers ORDER BY Salary DESC;
