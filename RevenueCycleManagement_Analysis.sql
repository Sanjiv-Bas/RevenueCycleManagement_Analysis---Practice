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

-- Q5 Change email domain to outlook.com for Adyar patients
update patient
set email_id = REPLACE(email_id, "@gmail.com","@outlook.com")
where email_id like  "%gmailcom";

-- Q6 change patient_name as Divya and gender as female for the patient patient_registration_id P07
update patient
set gender = "Female", patient_name = "Divya"
where patient_registration_id = "P07";

-- Q6. Set address as Velachery for patients born after 1995
update patient
set address = "Velachery"
where dob >= "1995-01-01";

-- Q7. Update gender as Male for Tambaram patients
update patient
set gender = "Male"
where address = "Tambaram";

-- Q8 Update gender as Male for Tambaram patients
update patient
set gender = "Female"
where address = "Tambaram";

-- Q9. Set default email for patients with NULL email
UPDATE Patient
SET Email_id = 'default@example.com'
WHERE Email_id IS NULL;

-- Q10 Increase all patients’ mobile numbers by 1
update patient
set mobile_number = mobile_number+1;

-- Q11. Set address as Anna Nagar for patients from P20 to P30
update patient
set address = "Anna Nagar"
where patient_registration_id  between "P20" and "P30";

-- 🔹 DELETE – 10 Questions with Answers
-- Q1. Delete patient record P75
DELETE From patient
where patient_registration_id = "P75";

-- Q2. Delete patients from Red Hills
delete from patient
where address = "Royapuram";

-- Q3. Delete patients born before 1985
delete from patient
where dob <= "1985-01-01";

-- Q4. Delete patients with NULL email
delete from patient
where email_id is null;

-- Q5. Delete patients registeration who has the ID P08
delete from patient
where patient_registration_id = "P08";

-- Q6. Delete patients from Thiruvanmiyur
DELETE from patient
where address = "Thiruvanmiyur";

-- Q7. Retrive duplicate patient names (keep one record)
SELECT patient_name, email_id, COUNT(*) 
FROM  patient
GROUP BY patient_name, email_id
HAVING COUNT(*) > 1;

-- Q8. Delete last 5 inserted patients
delete from patient
order by patient_registration_id desc
limit 5;

-- 🔹 AND – 10 Questions with Answers
-- Q1. Male patients in Adyar
select *
from patient
where address = "Adyar" and 
	gender = "Male";
    
-- Q2. Female patients in Velachery
select *
from patient
where address = "Velachery"
	and gender = "Female";
    
-- Q3. Mohan from Tambaram
select *
from patient
where patient_name = "Mohan"
	and address = "Tambaram";
    
-- Q4. Male patients born after 1990
select *
from patient
where gender = "Male"
	and dob > "1990-01-01";
    
-- Q5. Male patients in Anna Nagar
select *
from patient
where gender = "Male"
	and address = "Anna Nagar";
    
-- Q6. Female Gmail users
select * 
from patient
where gender = "Female"
	and email_id like "%Gmail%";
    
-- Q7. Adyar patients born before 1995
select *
from patient
where address = "Adyar"
and dob > "1995-01-01";

-- Q8. Male patients from Guindy
select * 
from patient
where gender = "Male"
      and address = "Guindy";

-- Q9. Suresh Raj from Saidapet
select *
from patient
where patient_name = "Suresh Raj"
      and address = "Saidapet";
      
-- Q10. Male patients in Velachery
select *
from patient
where address = "Velachery"
	and gender = "Female";

-- 🔹 OR – 10 Questions with Answers
-- Q1. Patients from Adyar or Guindy
select *
from patient
where address = "Adyar"
	or address = "Guindy";
    
-- Q2. Patients from Velachery or Tambaram
select *
from Patient
where address = "Velachery" 
	or address = "Tambaram";
    
-- Q3. Arun Kumar or Suresh Raj
select * 
from patient
where patient_name = "Arun kumar"
	or patient_name = "Suresh Raj";
    
-- Q4. Male or Female patients
select *
from patient
where gender = "Male"
	or gender = "Female";
    
-- Q5. Patients from OMR or ECR
select *
from patient
where address = "OMR"
	or address = "ECR";
    
-- Q6. Born before 1990 or after 1995
select *
from patient
where dob < "1990-01-01"
	or dob > "1995-01-01";
    
-- Q7. Gmail or Yahoo users
select *
from patient
where email_id like "%gmail%"
	or email_id like "%Yahoo%";

-- Q8. Patients from Adyar or Female patients
select *
from patient
where address = "Adyar"
	or address = "Female";
    
-- Q9. Patient P01 or P02
select *
from patient
where patient_registration_id = "P01" or 
	  patient_registration_id = "P02";

-- Q10. Patients from Guindy or Anna Nagar
select *
from patient
where address = "Guindy" or
	  address = "Anna Nagar";

🔹 NOT – 10 Questions with Answers
-- Q1. Fetch patients who are NOT from Adyar
select *
from patient
where address != "Adyar";

-- Q2. Fetch patients who are NOT Male
select *
from patient
where gender != "Male";

-- Q3. Fetch patients NOT from Tambaram
select *
from patient
where address != "Tambaram";

-- Q4. Fetch patients whose name is NOT Arun Kumar
select *
from patient
where patient_name != "Arun Kumar";

-- Q5. Fetch patients who do NOT use Gmail
select *
from patient
where email_id not like "%gmail%";

-- Q6. Fetch patients NOT born after 1995
select *
from patient
where dob < "1995-01-01";

-- Q7. Fetch patients whose gender is NOT NULL
select *
from patient
where gender is not NULL;

-- Q8. Fetch patients NOT from Adyar or Guindy
select *
from patient
where address not in ("Adyar","Guindy");

-- Q9. Fetch patients except P10
select *
from patient
where patient_registration_id != "P10";

-- Q10. Fetch patients NOT born between 1990 and 1995
select *
from patient
where dob not between "1990-01-01" and "1995-01-01";
	  
-- 🔹 IN – 10 Questions with Answers
-- Q1. Fetch patients from Adyar and Guindy
select * 
from patient
where address in ("Adyar","Guindy");

-- Q2. Fetch Male and Female patients
select *
from patient
where gender in ("Male","Female");

-- Q3. Fetch patients with registration IDs P01, P05, P10
select *
from patient
where patient_registration_id in ("P01","P05","P10");

-- Q4. Fetch Gmail and Yahoo email users
select *
from patient
where email_id like "%Gmail%" or email_id like "%Yahoo%";

-- Q5. Fetch patients from Velachery and Tambaram
select *
from patient
where address in ("Velachery", "Tambaram");

-- Q6. Fetch patients named Arun, Mohan, or Suresh
select *
from patient
where patient_name in ("Arun","Mohan","Suresh");

-- Q7. Fetch patients from P20 to P25 using IN
select *
from patient
where patient_registration_id in ("P20","P22","P23","P24","P25");

-- Q8. Fetch patients from Anna Nagar and OMR
select *
from patient
where address in ("OMR","Anna Nagar");

-- Q9. Fetch Male patients from selected locations
select * 
from patient
where gender = "Male" and address in ("Vyasarpadi","perambur");

-- Q10. Fetch patients using Gmail or Outlook
select * 
from patient
where email_id in (
	select email_id
    from patient
    where email_id like "%gmail%" or
		  email_id like "%outlook%");

-- 🔹 BETWEEN – 10 Questions with Answers
-- Q1. Fetch patients born between 1990 and 1995
select * 
from patient
where dob > "1990-01-01" and 
	  dob < "1995-01-01";
      
-- Q2. Fetch patients with IDs between P10 and P20
select *
from patient
where patient_registration_id between "P10" and "P20";

-- Q3. Fetch patients born between 1985 and 1990
select *
from patient
where dob between "1985-01-01" and "1990-01-01";

-- Q4. Fetch patients with IDs between P30 and P40
select *
from patient
where patient_registration_id between "P30" and "P40";

-- Q5. Fetch patients born between 1998 and 2002
select *
from patient
where dob > "1998-01-01" and dob < "2002-01-02";

-- Q6. Fetch patients with IDs between P50 and P60
select *
from patient
where patient_registration_id between "P50" and "P60";

-- Q7. Fetch patients born between two given dates
select *
from patient
where dob between "1995-01-01" and "1995-10-01";

-- Q8. Fetch patients from P01 to P10
select *
from patient
where patient_registration_id between "P01" and "P10";

-- Q9. Fetch patients born between 2000 and 2005
select *
from patient
where dob between "1985-01-01" and "1990-01-01";

-- Q10. Fetch mid-range registered patients
select *
from patient
order by cast(substring(patient_registration_id,2) as unsigned)
limit 30,20;

-- 🔹 LIKE – 10 Questions with Answers
-- Q1. Fetch patients whose name starts with A
select *
from patient
where patient_name like "a%";

-- Q2. Fetch patients whose name ends with n
select *
from patient
where patient_name like "n%";

-- Q3. Fetch patients whose name contains Kumar
select *
from patient
where patient_name like "k%";

-- Q4. Fetch Gmail email users
select *
from patient
where email_id like "%gmail%";

-- Q5. Fetch patients whose address starts with V
select *
from patient
where address like "V%";

-- Q6. Fetch patients whose mobile number starts with 9
select *
from patient
where mobile_number like "9%";

-- Q7. Fetch patients whose second letter in name is 'a'
select *
from patient
where patient_name like "_a%";

-- Q8. Fetch patients whose address contains 'Nagar'
select *
from patient
where address like "%Nagar";

-- Q9. Fetch patients whose email contains their name
select *
from patient
where email_id like concat("%patient_name%");

-- Q10. Fetch patients whose name length is at least 4 characters
select *
from patient
where patient_name like "____%";


