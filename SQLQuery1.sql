CREATE TABLE Patient (
    PatientID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100)
);
CREATE TABLE Doctor (
    DoctorID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Appointment (
    AppointmentID INT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE
);
CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
);
CREATE TABLE MedicalRecord (
    RecordID INT,
    PatientID INT,
    RecordDate DATE,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255)
);
INSERT INTO Patient (PatientID, FirstName, LastName, DateOfBirth, Email) 
VALUES 
(1, 'aniket', 'awari', '1980-05-15', 'aniket.doe@hospital.com'), 
(2, 'harikesh', 'bhangare', '1990-07-22', 'hari.bhau@hospital.com'), 
(3, 'sanket', 'tapal', '1975-09-10', 'sanket@hospital.com');


INSERT INTO Doctor (DoctorID, FirstName, LastName, Specialty, Email) 
VALUES 
(1, 'raju', 'pawar', 'Cardiology', 'raju.brown@hospital.com'), 
(2, 'chhote', 'pandit', 'Orthopedics', 'chhote.padit@hospital.com'), 
(3, 'baburao', 'apte', 'Pediatrics', 'aburao.apte@hospital.com');

INSERT INTO Appointment (AppointmentID, PatientID, DoctorID, AppointmentDate) 
VALUES 
(1, 1, 1, '2023-09-01'), 
(2, 2, 2, '2023-09-02'), 
(3, 3, 3, '2023-09-03');


INSERT INTO Department (DepartmentID, DepartmentName, Location) 
VALUES 
(1, 'Cardiology', 'Building A'), 
(2, 'Orthopedics', 'Building B'), 
(3, 'Pediatrics', 'Building C');

INSERT INTO MedicalRecord (RecordID, PatientID, RecordDate, Diagnosis, Treatment) 
VALUES 
(1, 1, '2023-09-01', 'Hypertension', 'Medication'), 
(2, 2, '2023-09-02', 'Fracture', 'Cast'), 
(3, 3, '2023-09-03', 'Flu', 'Rest and Hydration');


SELECT * FROM Patient
WHERE LastName = 'awari'
ORDER BY FirstName;

SELECT a.AppointmentID, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName, 
       d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, a.AppointmentDate
FROM Appointment a
INNER JOIN Patient p ON a.PatientID = p.PatientID
INNER JOIN Doctor d ON a.DoctorID = d.DoctorID;

SELECT a.AppointmentID, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName, 
       d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, a.AppointmentDate
FROM Appointment a
LEFT JOIN Patient p ON a.PatientID = p.PatientID
LEFT JOIN Doctor d ON a.DoctorID = d.DoctorID;

--Joining 3 tables using Left Join:


SELECT p.PatientID, p.FirstName, p.LastName, d.FirstName AS DoctorFirstName, 
       d.LastName AS DoctorLastName, a.AppointmentDate
FROM Patient p
LEFT JOIN Appointment a ON p.PatientID = a.PatientID
LEFT JOIN Doctor d ON a.DoctorID = d.DoctorID;



--Joining 4 tables with CASE WHEN:

SELECT p.PatientID, p.FirstName, p.LastName, d.FirstName AS DoctorFirstName, 
       d.LastName AS DoctorLastName, a.AppointmentDate, mr.Diagnosis, mr.Treatment,
       CASE 
           WHEN d.Specialty = 'Cardiology' THEN 'Cardiology Specialist'
           ELSE 'Other Specialist'
       END AS SpecialtyCategory
FROM Patient p
INNER JOIN Appointment a ON p.PatientID = a.PatientID
INNER JOIN Doctor d ON a.DoctorID = d.DoctorID
INNER JOIN MedicalRecord mr ON p.PatientID = mr.PatientID;


--Join 4 tables with WHERE, CASE WHEN, and ORDER BY:

SELECT p.PatientID, p.FirstName, p.LastName, d.FirstName AS DoctorFirstName, 
       d.LastName AS DoctorLastName, a.AppointmentDate, mr.Diagnosis, mr.Treatment,
       CASE 
           WHEN d.Specialty = 'Cardiology' THEN 'Cardiology Specialist'
           ELSE 'Other Specialist'
       END AS SpecialtyCategory
FROM Patient p
INNER JOIN Appointment a ON p.PatientID = a.PatientID
INNER JOIN Doctor d ON a.DoctorID = d.DoctorID
INNER JOIN MedicalRecord mr ON p.PatientID = mr.PatientID
WHERE p.DateOfBirth > '1980-01-01'
ORDER BY p.LastName, p.FirstName;
