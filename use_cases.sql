--- Use Case 1: Show the details of all patients with their lifestyle, symptoms, medical history, lab tests, and medication
SELECT p.PatientID, p.Age, p.Gender, 
       l.Smoking AS SmokingStatus, 
       s.ExcessiveThirst AS Symptoms, 
       mh.Hypertension AS MedicalHistory, 
       lt.SystolicBP AS LabTestSystolicBP, 
       m.MedicationName AS Medication
FROM Patient p
JOIN Lifestyle l ON p.LifestyleID = l.LifestyleID
JOIN Symptoms s ON p.SymptomsID = s.SymptomsID
JOIN MedicalHistory mh ON p.HistoryID = mh.HistoryID
JOIN LabTests lt ON p.LabTestsID = lt.LabTestsID
JOIN Medication m ON p.MedicationID = m.MedicationID;

--- Use Case 2: Show patients with a specific medical history (e.g., hypertension)
SELECT p.PatientID, p.Age, p.Gender, 
       l.Smoking AS SmokingStatus, 
       s.ExcessiveThirst AS Symptoms, 
       mh.Hypertension AS MedicalHistory, 
       lt.SystolicBP AS LabTestSystolicBP, 
       m.MedicationName AS Medication
FROM Patient p
JOIN Lifestyle l ON p.LifestyleID = l.LifestyleID
JOIN Symptoms s ON p.SymptomsID = s.SymptomsID
JOIN MedicalHistory mh ON p.HistoryID = mh.HistoryID
JOIN LabTests lt ON p.LabTestsID = lt.LabTestsID
JOIN Medication m ON p.MedicationID = m.MedicationID
WHERE mh.Hypertension = 'YES';

--- Use Case 3: Show patients who are prescribed a specific medication (e.g., Statins)
SELECT p.PatientID, p.Age, p.Gender, 
       l.Smoking AS SmokingStatus, 
       s.ExcessiveThirst AS Symptoms, 
       mh.Hypertension AS MedicalHistory, 
       lt.SystolicBP AS LabTestSystolicBP, 
       m.MedicationName AS Medication
FROM Patient p
JOIN Lifestyle l ON p.LifestyleID = l.LifestyleID
JOIN Symptoms s ON p.SymptomsID = s.SymptomsID
JOIN MedicalHistory mh ON p.HistoryID = mh.HistoryID
JOIN LabTests lt ON p.LabTestsID = lt.LabTestsID
JOIN Medication m ON p.MedicationID = m.MedicationID
WHERE m.MedicationName = 'Statins';

--- Use Case 4: Show patients based on a certain age range (e.g., patients aged 40-60) 
SELECT p.PatientID, p.Age, p.Gender, 
       l.Smoking AS SmokingStatus, 
       s.ExcessiveThirst AS Symptoms, 
       mh.Hypertension AS MedicalHistory, 
       lt.SystolicBP AS LabTestSystolicBP, 
       m.MedicationName AS Medication
FROM Patient p
JOIN Lifestyle l ON p.LifestyleID = l.LifestyleID
JOIN Symptoms s ON p.SymptomsID = s.SymptomsID
JOIN MedicalHistory mh ON p.HistoryID = mh.HistoryID
JOIN LabTests lt ON p.LabTestsID = lt.LabTestsID
JOIN Medication m ON p.MedicationID = m.MedicationID
WHERE p.Age BETWEEN 40 AND 60;

