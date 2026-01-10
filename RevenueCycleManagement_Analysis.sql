Create database RevenueCycleManagement_Analysis;
use RevenueCycleManagement_Analysis;

CREATE TABLE Patient (
    patient_registration_id VARCHAR(10) PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10),
    address VARCHAR(255),
    mobile_number VARCHAR(15),
    email_id VARCHAR(100)
);

CREATE TABLE Insurance (
    insurance_name VARCHAR(100),
    insurance_id VARCHAR(10) PRIMARY KEY,
    patient_registration_id VARCHAR(10),
    insurance_status VARCHAR(20),
    foreign key (patient_registration_id) references Patient(patient_registration_id)
);

CREATE TABLE Doctor (
    doctor_reg_id VARCHAR(10) PRIMARY KEY,
    doctor_name VARCHAR(100),
    degree VARCHAR(20),
    speciality VARCHAR(50),
    doctor_location VARCHAR(100),
    insurance_id VARCHAR(10),
    foreign key (insurance_id) references Insurance(insurance_id)
);

CREATE TABLE Appointment (
    AppointmentID VARCHAR(10) PRIMARY KEY,
    AppointmentStatus enum('Scheduled', 'Cancelled', 'Completed', 'No Show'),
    doctor_reg_id VARCHAR(10),
    foreign key (doctor_reg_id) references Doctor(doctor_reg_id )
);


CREATE TABLE Billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    AppointmentID VARCHAR(10),
    billing_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,
    doctor_reg_id VARCHAR(10),
    foreign key (patient_id) references patient(patient_registration_id),
    foreign key (AppointmentID) references Appointment(AppointmentID)
);





