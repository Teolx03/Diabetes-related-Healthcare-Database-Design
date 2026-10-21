CREATE DATABASE miniproject;
USE miniproject;
-- create lifestyle table 
CREATE TABLE Lifestyle (
    LifestyleID INT PRIMARY KEY AUTO_INCREMENT,
    Smoking varchar (100)
);

-- create symptoms table 
CREATE TABLE Symptoms (
    SymptomsID INT PRIMARY KEY AUTO_INCREMENT,
    ExcessiveThirst varchar(100)
);

-- creat LabTests table
CREATE TABLE LabTests (
    LabTestsID INT PRIMARY KEY AUTO_INCREMENT,
    SystolicBP DECIMAL(5,2)
);

-- create MedicalHistory table
CREATE TABLE MedicalHistory (
    HistoryID INT PRIMARY KEY AUTO_INCREMENT,
    Hypertension VARCHAR(100)
);

-- create Medication table
CREATE TABLE Medication (
    MedicationID INT PRIMARY KEY AUTO_INCREMENT,
    MedicationName VARCHAR(255)
);

-- create pateint table 
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Age INT,
    Gender ENUM('Male', 'Female'),
	LifestyleID INT,
    SymptomsID INT,
    LabTestsID INT,
    HistoryID INT,
    MedicationID INT,
    
    -- Foreign key constraints
    FOREIGN KEY (LifestyleID) 
        REFERENCES Lifestyle(LifestyleID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
    FOREIGN KEY (SymptomsID)
        REFERENCES Symptoms(SymptomsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
    FOREIGN KEY (LabTestsID)
        REFERENCES LabTests(LabTestsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
    FOREIGN KEY (HistoryID)
        REFERENCES MedicalHistory(HistoryID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
	FOREIGN KEY (MedicationID)
        REFERENCES Medication(MedicationID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Insert statements below --
INSERT INTO Lifestyle (Smoking) VALUES
('YES'),
('NO');
INSERT INTO Symptoms (ExcessiveThirst) VALUES
('YES'),
('NO');
INSERT INTO MedicalHistory (Hypertension) VALUES
('YES'),
('NO');
INSERT INTO Medication (MedicationName) VALUES
('Statins'),
('AntihypertensiveMedications');
INSERT INTO LabTests (SystolicBP) VALUES
('92'),
('90'),
('164'),
('144'),
('136'),
('91'),
('138'),
('123'),
('169'),
('143');

INSERT INTO Patient (PatientID, Age, Gender, LifestyleID, SymptomsID, HistoryID, MedicationID, LabTestsID) VALUES
(6200, 31, 'Male', 1, 2, 1, 1, 1),   -- EthnicityID=1 (White), SocioeconomicStatusID=2 (Middle), EducationLevelID=3 (Bachelor’s)
(6201, 30, 'Female', 2, 2, 2, 2, 2),  -- EthnicityID=2 (African American), SocioeconomicStatusID=1 (Low)
(6202, 45, 'Male', 2, 2, 2, 2, 3),
(6203, 86, 'Female', 2, 2, 1, 2, 4),
(6205, 56, 'Male', 2, 1, 2, 1, 5),     -- EducationLevelID=2 (High School)
(6206, 75, 'Female', 1, 1, 1, 2, 6),
(6207, 46, 'Male', 2, 1, 1, 2, 7),  
(6208, 48, 'Female', 1, 2, 2, 1, 8),
(6209, 90, 'Male', 2, 1, 2, 1, 9),
(6210, 66, 'Male', 2, 1, 2, 2, 10);


