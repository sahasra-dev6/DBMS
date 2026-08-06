
CREATE DATABASE Pharmacy;

USE Pharmacy;



CREATE TABLE Tablets
(
    Tablet_ID INT PRIMARY KEY,
    Tablet_Name VARCHAR(50),
    Tablet_Weight DECIMAL(6,2),
    Disease VARCHAR(100),
    Symptom VARCHAR(50)
);



ALTER TABLE Tablets
ADD COLUMN Cost DECIMAL(8,2);

ALTER TABLE Tablets
RENAME COLUMN Cost TO Tablet_Cost;

INSERT INTO Tablets
(Tablet_ID, Tablet_Name, Tablet_Weight, Disease, Symptom, Tablet_Cost)
VALUES
(101, 'Paracetamol', 500.50, 'Fever', 'High Temperature', 20.00),
(102, 'Dolo 650', 650.00, 'Body Pain', 'Muscle Pain', 30.00),
(103, 'Cetirizine', 10.00, 'Allergy', 'Sneezing', 15.00),
(104, 'Crocin', 500.90, 'Headache', 'Head Pain', 25.00),
(105, 'Azithromycin', 250.00, 'Throat Infection', 'Sore Throat', 50.00),
(106, 'Amoxicillin', 500.00, 'Infection', 'Fever', 45.00),
(107, 'Ibuprofen', 400.00, 'Pain', 'Joint Pain', 35.00),
(108, 'Aspirin', 350.00, 'Heart Disease', 'Chest Pain', 20.00),
(109, 'Metformin', 850.00, 'Diabetes', 'High Sugar', 30.00),
(110, 'Omeprazole', 20.00, 'Acidity', 'Stomach Pain', 25.00),
(111, 'Vitamin C', 500.00, 'Vitamin Deficiency', 'Weakness', 15.00),
(112, 'Levocetirizine', 5.00, 'Allergy', 'Sneezing', 20.00),
(113, 'Pantoprazole', 40.00, 'Acidity', 'Burning Sensation', 30.00),
(114, 'Ciprofloxacin', 500.00, 'Bacterial Infection', 'Fever', 60.00),
(115, 'Zinc Tablet', 50.00, 'Immunity', 'Weakness', 18.00),
(116, 'Amlodipine', 5.00, 'Hypertension', 'High BP', 22.00),
(117, 'Losartan', 50.00, 'Hypertension', 'High BP', 28.00),
(118, 'Diclofenac', 50.00, 'Pain', 'Body Pain', 40.00),
(119, 'Montelukast', 10.00, 'Asthma', 'Breathing Problem', 45.00),
(120, 'ORS Tablet', 500.00, 'Dehydration', 'Weakness', 10.00);

SELECT * FROM Tablets;


UPDATE Tablets
SET Tablet_Cost = 22.00
WHERE Tablet_ID = 101;

UPDATE Tablets
SET Tablet_Cost = 50.00
WHERE Tablet_ID = 102;

ALTER TABLE Tablets
ADD COLUMN Temp_Column VARCHAR(20);

ALTER TABLE Tablets
DROP COLUMN Temp_Column;

ALTER TABLE Tablets
ADD COLUMN Age INT;

UPDATE Tablets SET Age = 10 WHERE Tablet_ID = 101;
UPDATE Tablets SET Age = 18 WHERE Tablet_ID = 102;
UPDATE Tablets SET Age = 15 WHERE Tablet_ID = 103;
UPDATE Tablets SET Age = 20 WHERE Tablet_ID = 104;
UPDATE Tablets SET Age = 25 WHERE Tablet_ID = 105;
UPDATE Tablets SET Age = 30 WHERE Tablet_ID = 106;
UPDATE Tablets SET Age = 35 WHERE Tablet_ID = 107;
UPDATE Tablets SET Age = 40 WHERE Tablet_ID = 108;
UPDATE Tablets SET Age = 45 WHERE Tablet_ID = 109;
UPDATE Tablets SET Age = 50 WHERE Tablet_ID = 110;
UPDATE Tablets SET Age = 20 WHERE Tablet_ID = 111;
UPDATE Tablets SET Age = 25 WHERE Tablet_ID = 112;
UPDATE Tablets SET Age = 30 WHERE Tablet_ID = 113;
UPDATE Tablets SET Age = 35 WHERE Tablet_ID = 114;
UPDATE Tablets SET Age = 40 WHERE Tablet_ID = 115;
UPDATE Tablets SET Age = 45 WHERE Tablet_ID = 116;
UPDATE Tablets SET Age = 50 WHERE Tablet_ID = 117;
UPDATE Tablets SET Age = 55 WHERE Tablet_ID = 118;
UPDATE Tablets SET Age = 60 WHERE Tablet_ID = 119;
UPDATE Tablets SET Age = 65 WHERE Tablet_ID = 120;

SELECT
    Symptom,
    COUNT(*) AS Number_of_Tablets
FROM Tablets
GROUP BY Symptom;


-- STEP 15: HAVING clause based on Age
SELECT
    Age,
    COUNT(*) AS Number_of_Tablets
FROM Tablets
GROUP BY Age
HAVING Age >= 18;

SELECT * FROM Tablets;

SELECT
    MIN(Tablet_Weight) AS Minimum_Weight
FROM Tablets;


SELECT
    MAX(Tablet_Weight) AS Maximum_Weight
FROM Tablets;

ALTER TABLE Tablets
ADD COLUMN Qty INT;

UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 101;
UPDATE Tablets SET Qty = 5  WHERE Tablet_ID = 102;
UPDATE Tablets SET Qty = 20 WHERE Tablet_ID = 103;
UPDATE Tablets SET Qty = 8  WHERE Tablet_ID = 104;
UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 105;
UPDATE Tablets SET Qty = 15 WHERE Tablet_ID = 106;
UPDATE Tablets SET Qty = 12 WHERE Tablet_ID = 107;
UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 108;
UPDATE Tablets SET Qty = 20 WHERE Tablet_ID = 109;
UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 110;
UPDATE Tablets SET Qty = 15 WHERE Tablet_ID = 111;
UPDATE Tablets SET Qty = 8  WHERE Tablet_ID = 112;
UPDATE Tablets SET Qty = 5  WHERE Tablet_ID = 113;
UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 114;
UPDATE Tablets SET Qty = 20 WHERE Tablet_ID = 115;
UPDATE Tablets SET Qty = 8  WHERE Tablet_ID = 116;
UPDATE Tablets SET Qty = 15 WHERE Tablet_ID = 117;
UPDATE Tablets SET Qty = 5  WHERE Tablet_ID = 118;
UPDATE Tablets SET Qty = 10 WHERE Tablet_ID = 119;
UPDATE Tablets SET Qty = 12 WHERE Tablet_ID = 120;



SELECT
    Tablet_ID,
    Tablet_Name,
    Tablet_Weight * Qty AS Total_Weight,
    Symptom
FROM Tablets;

SELECT
    Tablet_ID,
    Tablet_Name,
    Tablet_Weight,
    Disease,
    Symptom
FROM Tablets
WHERE Tablet_Weight >= 100
AND Age >= 18;

SELECT * FROM Tablets;

