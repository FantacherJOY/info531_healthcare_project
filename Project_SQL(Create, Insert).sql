CREATE DATABASE Healthcare;
USE Healthcare;

-- Patient Table Creation and Data Insertion
CREATE TABLE Healthcare.Patient (
    PatientID INT PRIMARY KEY,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Age TINYINT NOT NULL,
    Gender VARCHAR(15) NOT NULL,
    BloodType CHAR(5),
    Medical_Condition VARCHAR(40)
);
SHOW CREATE TABLE Healthcare.Patient;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.Patient;
SELECT * FROM Healthcare.Patient ORDER BY PatientID LIMIT 5;

-- Doctor Table Creation and Data Insertion
CREATE TABLE Healthcare.Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorFirstNm VARCHAR(20) NOT NULL,
    DoctorLastNm VARCHAR(20) NOT NULL
);
SHOW CREATE TABLE Healthcare.Doctor;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.Doctor;
SELECT * FROM Healthcare.Doctor ORDER BY DoctorID LIMIT 5;

-- Insurance Table Creation and Data Insertion
CREATE TABLE Healthcare.Insurance (
    InsuranceID VARCHAR(5) PRIMARY KEY,
    ProviderName VARCHAR(30) NOT NULL
);
SHOW CREATE TABLE Healthcare.Insurance;

INSERT INTO Healthcare.Insurance (InsuranceID, ProviderName)
VALUES ('I1', 'Blue Cross'),
       ('I2', 'Medicare'),
       ('I3', 'Aetna'),
       ('I4', 'UnitedHealthcare'),
       ('I5', 'Cigna');
       
SELECT COUNT(*) FROM Healthcare.Insurance;
SELECT * FROM Healthcare.Insurance ORDER BY InsuranceID LIMIT 5;

-- Hospital Table Creation and Data Insertion
CREATE TABLE Healthcare.Hospital (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(30) NOT NULL
);
SHOW CREATE TABLE Healthcare.Hospital;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.Hospital;
SELECT * FROM Healthcare.Hospital ORDER BY HospitalID LIMIT 5;

-- Medication Table Creation and Data Insertion
CREATE TABLE Healthcare.Medication (
    MedicationID VARCHAR(5) PRIMARY KEY,
    MedicationName VARCHAR(15) NOT NULL
);
SHOW CREATE TABLE Healthcare.Medication;

INSERT INTO Healthcare.Medication (MedicationID, MedicationName)
VALUES ('M1', 'Paracetamol'),
       ('M2', 'Ibuprofen'),
       ('M3', 'Aspirin'),
       ('M4', 'Penicillin'),
       ('M5', 'Lipitor');
       
SELECT COUNT(*) FROM Healthcare.Medication;
SELECT * FROM Healthcare.Medication ORDER BY MedicationID LIMIT 5;

-- PatientHospital Junction Table Creation and Data Insertion
CREATE TABLE Healthcare.PatientHospital (
    PatientID INT,
    HospitalID INT,
    DateOfAdmission DATE NOT NULL,
    DischargeDate DATE NOT NULL,
    RoomNumber INT NOT NULL,
    AdmissionType VARCHAR(20) NOT NULL,
    BillingAmount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (PatientID, HospitalID),
    FOREIGN KEY (PatientID) REFERENCES Healthcare.Patient(PatientID),
    FOREIGN KEY (HospitalID) REFERENCES Healthcare.Hospital(HospitalID)
);
SHOW CREATE TABLE Healthcare.PatientHospital;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.PatientHospital;
SELECT * FROM Healthcare.PatientHospital ORDER BY PatientID,HospitalID LIMIT 5;

-- Create PatientDoctor Junction Table Creation and Data Insertion
CREATE TABLE Healthcare.PatientDoctor (
    PatientID INT,
    DoctorID INT,
    PRIMARY KEY (PatientID, DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Healthcare.Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Healthcare.Doctor(DoctorID)
);
SHOW CREATE TABLE Healthcare.PatientDoctor;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.PatientDoctor;
SELECT * FROM Healthcare.PatientDoctor ORDER BY PatientID, DoctorID LIMIT 5;

-- PatientInsurance Junction Table Creation and Data Insertion
CREATE TABLE Healthcare.PatientInsurance (
    PatientID INT,
    InsuranceID VARCHAR(5),
    PRIMARY KEY (PatientID, InsuranceID),
    FOREIGN KEY (PatientID) REFERENCES Healthcare.Patient(PatientID),
    FOREIGN KEY (InsuranceID) REFERENCES Healthcare.Insurance(InsuranceID)
);
SHOW CREATE TABLE Healthcare.PatientInsurance;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.PatientInsurance;
SELECT * FROM Healthcare.PatientInsurance ORDER BY PatientID,InsuranceID LIMIT 5;

-- PatientMedication Junction Table Creation and Data Insertion
CREATE TABLE Healthcare.PatientMedication (
    PatientID INT,
    MedicationID VARCHAR(5),
    TestResult VARCHAR(40),
    PRIMARY KEY (PatientID, MedicationID),
    FOREIGN KEY (PatientID) REFERENCES Healthcare.Patient(PatientID),
    FOREIGN KEY (MedicationID) REFERENCES Healthcare.Medication(MedicationID)
);
SHOW CREATE TABLE Healthcare.PatientMedication;

-- Data Inserted using Mysql Workbench Table Data Import Wizard
SELECT COUNT(*) FROM Healthcare.PatientMedication;
SELECT * FROM Healthcare.PatientMedication ORDER BY PatientID, MedicationID LIMIT 5;

