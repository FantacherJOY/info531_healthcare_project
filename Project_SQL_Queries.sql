
USE Healthcare;

-- 1) Show Top 10 Reocrds
SELECT * FROM Healthcare.Patient ORDER BY PatientID LIMIT 10;
SELECT * FROM Healthcare.Doctor ORDER BY DoctorID LIMIT 10;
SELECT * FROM Healthcare.Hospital ORDER BY HospitalID LIMIT 10;
SELECT * FROM Healthcare.Insurance ORDER BY InsuranceID;
SELECT * FROM Healthcare.Medication ORDER BY MedicationID;
SELECT * FROM Healthcare.PatientHospital ORDER BY PatientID, HospitalID LIMIT 10;
SELECT * FROM Healthcare.PatientDoctor ORDER BY PatientID, DoctorID LIMIT 10;
SELECT * FROM Healthcare.PatientInsurance ORDER BY PatientID, InsuranceID LIMIT 10;
SELECT * FROM Healthcare.PatientMedication ORDER BY PatientID, MedicationID LIMIT 10;

-- 2) INNER JOIN
SELECT P.PatientID, P.First_Name, P.Last_Name, D.DoctorID, D.DoctorFirstNm, D.DoctorLastNm
FROM Healthcare.Patient P
INNER JOIN Healthcare.PatientDoctor PD ON P.PatientID = PD.PatientID
INNER JOIN Healthcare.Doctor D ON PD.DoctorID = D.DoctorID
ORDER BY P.PatientID, D.DoctorID LIMIT 10;

-- 3) LEFT OUTER JOIN
SELECT P.PatientID, P.First_Name, P.Last_Name, D.DoctorID, D.DoctorFirstNm, D.DoctorLastNm
FROM Healthcare.Patient P
LEFT JOIN Healthcare.PatientDoctor PD ON P.PatientID = PD.PatientID
LEFT JOIN Healthcare.Doctor D ON PD.DoctorID = D.DoctorID
WHERE D.DoctorID IS NULL
ORDER BY P.PatientID LIMIT 10;

-- 4) Single-row subquery
SELECT PatientID, First_Name, Last_Name, Age
FROM Healthcare.Patient
WHERE Age = (SELECT MAX(Age) FROM Healthcare.Patient)
ORDER BY PatientID LIMIT 10;

-- 5) Multiple-row subquery
SELECT P.PatientID, P.First_Name, P.Last_Name, COUNT(DISTINCT PH.HospitalID) AS HospitalCount
FROM Healthcare.Patient P
INNER JOIN Healthcare.PatientHospital PH ON P.PatientID = PH.PatientID
GROUP BY P.PatientID, P.First_Name, P.Last_Name
HAVING HospitalCount > 1
ORDER BY P.PatientID LIMIT 10;

-- 6) Aggregation
SELECT BloodType, COUNT(*) AS TotalPatients
FROM Healthcare.Patient
GROUP BY BloodType
ORDER BY BloodType LIMIT 10;

-- 7) Subquery with NOT IN
SELECT PatientID, First_Name, Last_Name
FROM Healthcare.Patient
WHERE PatientID NOT IN (SELECT PatientID FROM Healthcare.PatientDoctor)
ORDER BY PatientID LIMIT 10;

-- 8) Query using CASE statement
SELECT PatientID, Age, CASE
  WHEN Age < 18 THEN 'Minor'
  WHEN Age BETWEEN 18 AND 65 THEN 'Adult'
  ELSE 'Senior'
END AS AgeGroup
FROM Healthcare.Patient
ORDER BY PatientID LIMIT 10;

-- 9) Query using NOT EXISTS
SELECT P.PatientID, P.First_Name, P.Last_Name
FROM Healthcare.Patient P
WHERE NOT EXISTS (
    SELECT 1
    FROM Healthcare.PatientHospital PH
    WHERE PH.PatientID = P.PatientID AND PH.AdmissionType = 'Elective'
)
ORDER BY P.PatientID LIMIT 10;

-- 10) Subquery using NOT NULL
SELECT P.PatientID, P.First_Name, P.Last_Name, M.MedicationName, PM.TestResult
FROM Healthcare.Patient P
INNER JOIN Healthcare.PatientMedication PM ON P.PatientID = PM.PatientID
INNER JOIN Healthcare.Medication M ON PM.MedicationID = M.MedicationID
WHERE PM.TestResult IS NOT NULL
ORDER BY P.PatientID LIMIT 10;

