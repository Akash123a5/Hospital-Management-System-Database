

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100)
);


CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    Phone VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15)
);


CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    Date DATE,
    Time TIME,
    Status VARCHAR(50),
    DoctorID INT,
    PatientID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);


INSERT INTO Departments (Name, Location) VALUES 
('Cardiology', 'Block A'),
('Neurology', 'Block B'),
('Pediatrics', 'Block C'),
('Orthopedics', 'Block D'),
('Dermatology', 'Block E');


INSERT INTO Doctors (Name, Specialization, Phone, DepartmentID) VALUES 
('Dr. A', 'Cardiologist', '1234567890', 1),
('Dr. B', 'Neurologist', '0987654321', 2),
('Dr. C', 'Pediatrician', '1122334455', 3),
('Dr. D', 'Orthopedic', '6677889900', 4),
('Dr. E', 'Dermatologist', '5544332211', 5);


INSERT INTO Patients (Name, Age, Gender, Phone) VALUES 
('Patient 1', 25, 'Male', '9988776655'),
('Patient 2', 30, 'Female', '8877665544'),
('Patient 3', 35, 'Male', '7766554433'),
('Patient 4', 28, 'Female', '6655443322'),
('Patient 5', 40, 'Male', '5544332211');


INSERT INTO Appointments (Date, Time, Status, DoctorID, PatientID) VALUES 
('2024-12-21', '10:00:00', 'Confirmed', 1, 1),
('2024-12-22', '11:00:00', 'Pending', 2, 2),
('2024-12-23', '12:00:00', 'Cancelled', 3, 3),
('2024-12-24', '14:00:00', 'Confirmed', 4, 4),
('2024-12-25', '15:00:00', 'Pending', 5, 5);
