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
    recovery_status ENUM( "Ready_to_discharge", "Medical_attention_required"),
    payment_status VARCHAR(20),
    payment_date DATE,
    doctor_reg_id VARCHAR(10),
    foreign key (patient_id) references patient(patient_registration_id),
    foreign key (AppointmentID) references Appointment(AppointmentID)
);

INSERT INTO Patient VALUES
('P01','Arun Kumar','1988-05-12','Male','Adyar','9876543201','arunkumar@gmail.com'),
('P02','Suresh Raj','1990-08-21','Male','Saidapet','9876543202','sureshraj@gmail.com'),
('P03','Vijay Anand','1985-02-10','Male','Perambur','9876543203','vijayanand@gmail.com'),
('P04','Ramesh Babu','1992-11-18','Male','Vyasarpadi','9876543204','rameshbabu@gmail.com'),
('P05','Karthik','1995-07-30','Male','T Nagar','9876543205','karthik@gmail.com'),
('P06','Prakash','1987-03-14','Male','Velachery','9876543206','prakash@gmail.com'),
('P07','Mohan','1991-09-25','Male','Tambaram','9876543207','mohan@gmail.com'),
('P08','Senthil','1989-01-19','Male','Guindy','9876543208','senthil@gmail.com'),
('P09','Ganesh','1993-06-05','Male','Anna Nagar','9876543209','ganesh@gmail.com'),
('P10','Saravanan','1986-12-02','Male','Mylapore','9876543210','saravanan@gmail.com'),
('P11','Preethi','1994-04-11','Female','Triplicane','9876543211','priya@gmail.com'),
('P12','Divya','1996-08-19','Female','Kodambakkam','9876543212','divya@gmail.com'),
('P13','Kavitha','1989-10-09','Female','Ashok Nagar','9876543213','kavitha@gmail.com'),
('P14','Lakshmi','1985-02-17','Female','Vadapalani','9876543214','lakshmi@gmail.com'),
('P15','Anitha','1991-06-26','Female','Porur','9876543215','anitha@gmail.com'),
('P16','Arun Kumar','1990-01-12','Male','Ambattur','9876543216','arun.k2@gmail.com'),
('P17','Suresh Raj','1988-07-22','Male','Avadi','9876543217','suresh.r2@gmail.com'),
('P18','Shilpa','1995-09-03','Female','Kolathur','9876543218','priya2@gmail.com'),
('P19','Divya','1992-11-14','Female','Red Hills','9876543219','divya2@gmail.com'),
('P20','Karthik','1987-05-29','Male','Poonamallee','9876543220','karthik2@gmail.com'),
('P21','Manoj','1989-03-11','Male','Thiruvanmiyur','9876543221','manoj@gmail.com'),
('P22','Deepak','1993-07-24','Male','Besant Nagar','9876543222','deepak@gmail.com'),
('P23','Naveen','1991-12-02','Male','Royapettah','9876543223','naveen@gmail.com'),
('P24','Lokesh','1987-04-19','Male','Royapuram','9876543224','lokesh@gmail.com'),
('P25','Dinesh','1994-09-09','Male','Washermanpet','9876543225','dinesh@gmail.com'),
('P26','Harish','1986-06-14','Male','Mint','9876543226','harish@gmail.com'),
('P27','Vignesh','1992-10-21','Male','Broadway','9876543227','vignesh@gmail.com'),
('P28','Kiran','1995-02-17','Male','Nungambakkam','9876543228','kiran@gmail.com'),
('P29','Ashwin','1990-05-05','Male','Egmore','9876543229','ashwin@gmail.com'),
('P30','Surya','1988-11-29','Male','Kilpauk','9876543230','surya@gmail.com'),
('P31','Janani','1994-08-18','Female','Chetpet','9876543231','janani@gmail.com'),
('P32','Nithya','1996-03-26','Female','Ayanavaram','9876543232','nithya@gmail.com'),
('P33','Revathi','1989-01-15','Female','Madhavaram','9876543233','revathi@gmail.com'),
('P34','Shalini','1992-06-07','Female','Manali','9876543234','shalini@gmail.com'),
('P35','Bhavani','1987-09-12','Female','Ennore','9876543235','bhavani@gmail.com'),
('P36','Keerthi','1995-04-22','Female','Thoraipakkam','9876543236','keerthi@gmail.com'),
('P37','Aarthi','1991-07-19','Female','Sholinganallur','9876543237','aarthi@gmail.com'),
('P38','Sowmya','1993-10-30','Female','Medavakkam','9876543238','sowmya@gmail.com'),
('P39','Pavithra','1988-12-14','Female','Pallikaranai','9876543239','pavithra@gmail.com'),
('P40','Meenakshi','1990-02-05','Female','Perungudi','9876543240','meenakshi@gmail.com'),
('P41','Arun Kumar','1989-05-11','Male','OMR','9876543241','arun.k3@gmail.com'),
('P42','Suresh Raj','1992-08-23','Male','ECR','9876543242','suresh.r3@gmail.com'),
('P43','Sugandhapriya','1994-11-04','Female','Chromepet','9876543243','priya3@gmail.com'),
('P44','Divya','1996-01-27','Female','Pallavaram','9876543244','divya3@gmail.com'),
('P45','Karthik','1987-06-18','Male','Meenambakkam','9876543245','karthik3@gmail.com'),
('P46','Ganesh','1991-09-09','Male','Airport','9876543246','ganesh2@gmail.com'),
('P47','Saravanan','1986-03-16','Male','St Thomas Mount','9876543247','saravanan2@gmail.com'),
('P48','Ramesh Babu','1988-07-28','Male','Ramapuram','9876543248','rameshbabu2@gmail.com'),
('P49','Lakshmi','1990-12-02','Female','Mugalivakkam','9876543249','lakshmi2@gmail.com'),
('P50','Anitha','1993-04-20','Female','Nandambakkam','9876543250','anitha2@gmail.com'),
('P51','Mohan','1989-10-11','Male','Adyar','9876543251','mohan2@gmail.com'),
('P52','Senthil','1992-01-08','Male','Saidapet','9876543252','senthil2@gmail.com'),
('P53','Prakash','1987-05-26','Male','Perambur','9876543253','prakash2@gmail.com'),
('P54','Vijay Anand','1991-08-14','Male','Vyasarpadi','9876543254','vijayanand2@gmail.com'),
('P55','Siva','1994-02-19','Male','T Nagar','9876543255','siva@gmail.com'),
('P56','Deepa','1995-06-03','Female','Velachery','9876543256','deepa@gmail.com'),
('P57','Uma','1988-11-27','Female','Tambaram','9876543257','uma@gmail.com'),
('P58','Radha','1990-04-09','Female','Guindy','9876543258','radha@gmail.com'),
('P59','Kala','1992-09-16','Female','Anna Nagar','9876543259','kala@gmail.com'),
('P60','Malar','1987-12-30','Female','Mylapore','9876543260','malar@gmail.com'),
('P61','Arjun','1993-03-21','Male','Triplicane','9876543261','arjun@gmail.com'),
('P62','Kishore','1989-07-05','Male','Kodambakkam','9876543262','kishore@gmail.com'),
('P63','Rohit','1991-10-18','Male','Ashok Nagar','9876543263','rohit@gmail.com'),
('P64','Sanjay','1994-01-29','Male','Vadapalani','9876543264','sanjay@gmail.com'),
('P65','Balaji','1988-06-12','Male','Porur','9876543265','balaji@gmail.com'),
('P66','Muthu','1990-09-25','Male','Ambattur','9876543266','muthu@gmail.com'),
('P67','Raja','1992-02-07','Male','Avadi','9876543267','raja@gmail.com'),
('P68','Selvi','1995-05-19','Female','Kolathur','9876543268','selvi@gmail.com'),
('P69','Poornima','1987-11-08','Female','Red Hills','9876543269','poornima@gmail.com'),
('P70','Renuka','1991-04-14','Female','Poonamallee','9876543270','renuka@gmail.com'),
('P71','Vasanth','1989-08-02','Male','Thiruvanmiyur','9876543271','vasanth@gmail.com'),
('P72','Kannan','1993-12-11','Male','Besant Nagar','9876543272','kannan@gmail.com'),
('P73','Geetha','1990-03-27','Female','Royapettah','9876543273','geetha@gmail.com'),
('P74','Uma Devi','1988-06-16','Female','Royapuram','9876543274','umadevi@gmail.com'),
('P75','Naren','1995-09-01','Male','Washermanpet','9876543275','naren@gmail.com');

-- Q1. Update patient name to "Arun K" for patient registration ID "P01"
update patient
set patient_name = "Arun K"
where patient_registration_id = "P01";

-- Q2. Change the address of patients from "Saidapet" to "Guindy"
update patient
set address = "Guindy"
where address = "Saidapet";

-- Q3. Change the mobile number for patient "P10"
update patient
set mobile_number = "9003043090"
where patient_name = "Balaji";

-- Q4. Set address as "Vyasarpadi" for patient named "Karthik"
update patient
set address = "Vyasarpadi"
where patient_name = "Karthik";



