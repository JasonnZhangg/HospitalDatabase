SELECT * FROM room
    WHERE RoomType = 'Big Room'; 
SELECT * FROM patient
	WHERE height >= 155;
SELECT * FROM patient 
	where RoomNumber = 1;
SELECT MedicineID FROM medicine
    WHERE Price <= 100;
SELECT recordID FROM record
    WHERE DoctorNotes = 'Worried';
SELECT FirstName, LastName FROM doctor
    WHERE JobTitle = 'Main Doctor';
SELECT * FROM RecordManager; 

/*View Query*/
CREATE VIEW male_patient AS
    SELECT PatientID, FirstName, LastName, Gender, RoomNumber
    FROM Patient
    WHERE Gender = 'M';

SELECT * FROM male_patient;
    
--Create table with all patients not from Toronto who are male
CREATE VIEW not_toronto_mans AS
    SELECT PatientID, FirstName, LastName, Gender, Height, city
    FROM patient
    Where not city = 'Toronto'
            minus(SELECT PatientID, FirstName, LastName, Gender, Height, city
                FROM patient
                Where Gender='F');
    
SELECT * FROM not_toronto_mans;
    
/*Join Query */
--View all the patients with a room
SELECT patient.PatientID, patient.FirstName, room.RoomNumber, room.RoomType
FROM room
INNER JOIN patient ON patient.RoomNumber = room.RoomNumber;

--View all the patients and rooms
SELECT patient.PatientID, patient.FirstName, room.RoomNumber, room.RoomType
FROM room
LEFT JOIN patient ON patient.RoomNumber = room.RoomNumber;

/*Advanced Queries*/
SELECT MAX(Weight) FROM patient;
SELECT PatientID, FirstName, Weight
    FROM patient
    WHERE Weight BETWEEN 120 AND 150;
    
SELECT AVG(Height), city
    FROM patient
    GROUP BY city;
    
--View the number of doctors attending patient 1
SELECT count(DISTINCT DoctorID)
    from attends
    WHERE PatientID = 1;
   