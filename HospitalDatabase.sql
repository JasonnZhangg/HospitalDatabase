DROP TABLE patient CASCADE CONSTRAINTS;
DROP TABLE record CASCADE CONSTRAINTS;
DROP TABLE doctor CASCADE CONSTRAINTS;
DROP TABLE room CASCADE CONSTRAINTS;
DROP TABLE medicine CASCADE CONSTRAINTS;
DROP TABLE RecordManager CASCADE CONSTRAINTS;
DROP TABLE attends CASCADE CONSTRAINTS;
DROP TABLE perscribed CASCADE CONSTRAINTS;


CREATE TABLE RecordManager(
    NameQ VARCHAR(10) PRIMARY KEY
);

CREATE TABLE doctor(
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(15),
    LastName VARCHAR(15) NOT NULL,
    JobTitle VARCHAR(15),
    NameQ VARCHAR(10)
);

ALTER TABLE doctor
    ADD CONSTRAINT FK_NameQ FOREIGN KEY(NameQ) references RecordManager(NameQ);

CREATE TABLE patient(
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(15) NOT NULL,
    LastName VARCHAR(15) NOT NULL,
    Gender VARCHAR(1),
    BloodType VARCHAR(2),
    Height NUMBER(3),
    Weight NUMBER(3),
    DateofBirth DATE,
    
    /* Address */
    Street VARCHAR(25),
    City VARCHAR(15),
    Province VARCHAR(3),
    PostalCode VARCHAR(6),
    
    /* Contact Info */
    PhoneNumber NUMBER(10),
    Email VARCHAR(30),
    EmergencyContact VARCHAR(30),
    
    RoomNumber INT
    
);


CREATE TABLE record(
    RecordID INT PRIMARY KEY,
    PreExistingCondition VARCHAR(20),
    PreviousMedication VARCHAR(15),
    DoctorNotes VARCHAR(200),
    Outcome VARCHAR(25),
    PatientID INT,
    NameQ VARCHAR(10),
    
    CONSTRAINT FK_has FOREIGN KEY (PatientID) REFERENCES patient(PatientID),
    CONSTRAINT FK_Updates FOREIGN KEY (NameQ) REFERENCES recordManager(NameQ)
);


CREATE TABLE room(
    RoomNumber NUMBER(3) PRIMARY KEY,
    RoomType VARCHAR(15)
);

ALTER TABLE patient
    ADD CONSTRAINT FK_assigned FOREIGN KEY (RoomNumber) REFERENCES room(RoomNumber);

CREATE TABLE medicine(
    MedicineID INT PRIMARY KEY,
    Price NUMBER(6),
    Dosage NUMBER(1)
);

CREATE TABLE attends(
    PatientID INT,
    DoctorID INT,
    CONSTRAINT PK_attends PRIMARY KEY(PatientID, DoctorID),
    CONSTRAINT FK_attends_patient FOREIGN KEY(PatientID) REFERENCES patient(PatientID),
    CONSTRAINT FK_attends_doctor FOREIGN KEY(DoctorID) REFERENCES doctor(DoctorID)
);

CREATE TABLE perscribed(
    MedicineID INT,
    PatientID INT,
    CONSTRAINT PK_perscribed PRIMARY KEY(PatientID, MedicineID),
    CONSTRAINT FK_perscribed_patient FOREIGN KEY(PatientID) REFERENCES patient(PatientID),
    CONSTRAINT FK_perscribed_medicine FOREIGN KEY(MedicineID) REFERENCES Medicine(MedicineID)
);
