create database hospitaldb;
use hospitaldb;
CREATE TABLE Patients (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    contact VARCHAR(50));
CREATE TABLE Doctors (id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50) NOT NULL);
CREATE TABLE Appointments (id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(id));

insert into patients(name,age,gender,contact) values('kaushik',25,'male',6985321478),
('vikas',35,'male',7896541230),
('panda',55,'female',9856321047),
('kane',65,'female',7854123690);
select*from patients;

insert into doctors(name,specialization)values('vishnu','neurologist'),
('prithvi','dentist'),
('vikas','cardiologist'),
('nithya','orthologist');
select*from doctors;

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES(1, 1, '2024-11-25', 'Scheduled'),
(2, 2, '2024-11-26', 'Scheduled'),
(3, 3, '2024-11-27', 'Completed'),
(1, 2, '2024-11-28', 'Cancelled');
select*from appointments;

 #Show appointments with patient and doctor names.
 
SELECT A.id AS appointment_id,P.name AS patient_name,D.name AS doctor_name,A.appointment_date,A.status FROM Appointments A JOIN Patients P ON A.patient_id = P.id JOIN Doctors D ON A.doctor_id = D.id;

 SELECT D.name AS doctor_name,COUNT(A.id) AS appointment FROM Appointments A JOIN Doctors D ON A.doctor_id = D.id GROUP BY D.name;

 
select appointments.id as appointment_id,
doctors.name as doctor_name,patients.name as patient_name,
appointment_date,status from appointments join patients on appointments.patient_id=patient.id join doctors on appointments_id=doctor.id;




