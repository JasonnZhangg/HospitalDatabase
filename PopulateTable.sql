INSERT INTO RecordManager
	VALUES('ZZ');

INSERT INTO doctor
	VALUES('17', 'Kevin', 'Levin', 'Main Doctor', 'ZZ');
INSERT INTO doctor
	VALUES('18', 'Ben', 'Tenison', 'Main Doctor', 'ZZ');  
INSERT INTO doctor
    VALUES('19', 'Jimmy', 'Fnag', 'Side Doctor', 'ZZ');
    
 
INSERT INTO room
	VALUES('1', 'Big Room');
INSERT INTO room
	VALUES('2', 'Small Room'); 
INSERT INTO room
	VALUES('3', 'Small Room'); 
 
    
INSERT INTO patient
	VALUES('1', 'Kaitlyn', 'Zhu', 'F', 'B', '196', '160', '1999-04-04', 'Dundas', 'Toronto', 'ON', 'M4G4H9', '2249997087', 'kaitemail@gmail.com', 'Dad 7092942018', '1');
INSERT INTO patient(PatientID, FirstName, LastName, Gender, BloodType, Height, Weight, DateofBirth, City, PhoneNumber, Email, RoomNumber)
	VALUES('2', 'Kevin', 'Fu', 'M', 'A', '167', '120', '2000-10-04', 'Toronto', '5224218987', 'kevinemail@gmail.com', '1');
INSERT INTO patient(PatientID, FirstName, LastName, Gender, BloodType, Height, Weight, DateofBirth, City, PhoneNumber, Email, RoomNumber)
	VALUES('3', 'Tyler', 'Zee', 'M', 'A', '177', '150', '1998-02-22', 'Markham', '4242252387', 'Zeemail@gmail.com', '2');
INSERT INTO patient(PatientID, FirstName, LastName, Gender, BloodType, Height, Weight, DateofBirth, City, PhoneNumber, Email, RoomNumber)
	VALUES('4', 'Gwen', 'Fu', 'F', 'O', '153', '90', '2004-12-14', 'Etobicoke', '5252189487', 'Gwen@gmail.com', '1');    
    
INSERT INTO attends(PatientID, DoctorID)
    values('1', '17');
INSERT INTO attends(PatientID, DoctorID)
    values('1', '19');


INSERT INTO record(RecordID, DoctorNotes, PatientID, NameQ)
	VALUES('1', 'Looks good', '1', 'ZZ');
INSERT INTO record(RecordID, DoctorNotes, PatientID, NameQ)
	VALUES('2', 'Worried', '2', 'ZZ');
INSERT INTO record(RecordID, DoctorNotes, PatientID, NameQ)
	VALUES('3', 'Hard case', '3', 'ZZ');



INSERT INTO medicine
	VALUES('12', '100', '1');
INSERT INTO medicine
	VALUES('13', '120', '1');
INSERT INTO medicine
	VALUES('14', '99', '1');


