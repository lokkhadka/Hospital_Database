
CREATE DATABASE Hospital_Management;

USE Hospital_Management;


---CREATE TABLE PHYSICAN--1st
CREATE TABLE Physican(
    Phy_ID INT PRIMARY KEY  NOT NULL,
	First_Name VARCHAR(100) NOT NULL,
	Last_Name VARCHAR(100) NOT NULL,
	Phone_Number VARCHAR(15)
);

---CREATE TABLE TREATMENT--2
CREATE TABLE Treatment(
    Treat_ID INT PRIMARY KEY  NOT NULL,
	DateOfTreat Date NOT NULL,
	TreatTyPe Varchar(200) NOT NULL,
	Discharge_Date Date,
	IsDischarge bit
);

---------------CREATE TABLE Physican_Treatment---------3
CREATE TABLE Physican_Treatment(
  Treat_ID INT   FOREIGN KEY REFERENCES Treatment(Treat_ID),
  Phy_ID INT FOREIGN KEY REFERENCES Physican(Phy_ID)
);


---CREATE TABLE INVOICE--4
CREATE TABLE Invoice(
    Invoice_ID INT PRIMARY KEY NOT NULL,
	Amount_Due MONEY,
	Invoice_Date DATE,
	Due_Date DATE,
	Discount MONEY,
	Late_Fee MONEY,
	Room_Charge MONEY,
	Physican_Charge MONEY
);


---CREATE TABLE ROOM--5
CREATE TABLE Room(
   Room_ID INT PRIMARY KEY,
   NumOfBeds INT,
   Room_Location VARCHAR(100)

);

---CREATE TABLE PATIENT--6
 CREATE TABLE Patient(
    Patient_ID INT PRIMARY KEY NOT NULL,
	First_Name VARCHAR(200) NOT NULL,
	Last_Name VARCHAR(200) NOT NULL,
	Patient_DOB Date,
	Gender CHAR(1),
	Check_In_Date Date NOT NULL,
	[Address] VARCHAR(200),
	Patient_City VARCHAR(200),
	Patient_State CHAR(2),
	Patient_ZipCode INT,
	Phy_ID INT FOREIGN KEY REFERENCES Physican(Phy_ID),
	Room_ID INT FOREIGN KEY REFERENCES Room(Room_ID),
	Invoice_ID INT FOREIGN KEY REFERENCES Invoice(Invoice_ID)
);


 ----INSERT SOME DATA INTO PHYSICAN TABLE---------
INSERT INTO Physican VALUES 
              (22,'John','Wilson MD','502-294-2243'),
              (24,'Dr Robert','Adams','678-702-6229'),
			  (26,'katie','Fry','404-317-1170'),
			  (28,'Dr Justin','Peterson','502-620-2243'),
			  (30,'Shane','Fix','770-271-4450'),
			  (32,'William','Adams','404-220-4451'),
			  (34,'Lok','Khadka','673-221-3452'),
			  (36,'Sam','Pool','502-120-2449'),
			  (38,'Keshav','Joshep','919-250-6351'),
			  (42,'Pat','McDonald','619-223-6650'),
			  (44,'Ram','Subedi','404-221-7150'),
			  (46,'Steve','Hutchson','717-220-6125'),
			  (48,'Allen','Buck','678-718-2852'),
			  (50,'Ace','Travis','405-268-2853'),
			  (52,'Eve','Thronton','406-268-1850'),
			  (54,'Simon','Douglas','604-768-3859'),
			  (56,'Alonzo','Morrison','679-200-4853'),
			  (58,'Victoria','Pearson','770-678-6850'),
			  (60,'Jamiya','Wilkinson','670-578-8896'),
			  (62,'Desirae','Bautista','660-720-9856')

 


   ---INSERT SOME DATA INTO TREATMENT------
 INSERT INTO Treatment VALUES
             (201,'08-23-2020','Heart attack','10-30-2020',1),
			 (202,'07-20-2020','Ear Infection','',0),
			 (203,'05-10-2020','Migrant Headache','10-30-2020',1),
			 (204,'08-23-2020','Cancer','',0),
			 (205,'04-07-2020','Diabetes','10-02-2020',1),
			 (206,'09-20-2020','High blood Pressure','',0),
			 (207,'01-21-2020','Ear infection','',1),
			 (208,'05-20-2020','Arthritis','',0),
			 (209,'02-20-2020','Asthma','',1),
			 (210,'04-20-2020','Blood Sugar','',0),
			 (211,'03-20-2020','High blood Pressure','',1),
			 (212,'05-23-2020','Cancer','',1),
			 (213,'01-20-2020','Diabetes','',0),
			 (214,'06-23-2020','High blood Pressure','',1),
			 (215,'09-17-2020','Asthma','',0),
			 (216,'03-16-2020','High blood Pressure','',1),
			 (217,'07-20-2020','High blood Pressure','',1),
			 (218,'09-14-2020','Heart Attack','',1),
			 (219,'08-15-2020','Heart Attack','',0),
			 (220,'03-17-2020','Cancer','',1)

 
 
 ------INSERT SOME DATA INTO Physican_Treatment--------
 INSERT INTO Physican_Treatment VALUES
             (201,22),
			 (202,24),
			 (203,26),
			 (204,28),
			 (205,30),
			 (206,32),
			 (207,34),
			 (208,36),
			 (209,38),
			 (210,42),
			 (211,44),
			 (212,46),
			 (213,48),
			 (214,50),
			 (215,52),
			 (216,54),
			 (217,56),
			 (218,58),
			 (219,60),
			 (220,62)


      
-----INSERT SOME DATA INTO INVOICE TABLE----------------------------------
INSERT INTO Invoice(Invoice_ID, Amount_Due,Invoice_Date,Due_Date,Discount,Late_Fee,Room_Charge,Physican_Charge) VALUES 
                     (101,'25,263','01-26-2018','06-09-2019','0.00','450','250','460'),
					 (102,'800','05-22-2020','11-22-2020','150','0.00','280','680'),
					 (103,'5,000','04-15-2020','12-03-2020','200','0.00','360','600'),
					 (104,'12,100','09-11-2019','07-03-2020','0.00','250','190','680'),
					 (105,'25,163','02-26-2018','07-09-2019','0.00','450','452','720'),
					 (106,'10,261','06-26-2018','02-09-2019','0.00','450','452','720'),
					 (107,'5,140','01-25-2020','07-11-2020','250','0.00','285','160'),
					 (108,'14,140','06-25-2020','12-10-2020','170','0.00','285','160'),
					 (109,'860','08-22-2021','06-11-2020','150','0.00','170','200'),
					 (110,'1,700','09-26-2020','11-18-2020','0.00','650','230','360'),
					 (111,'7,000','03-24-2020','05-13-2020','0.00','.310','163','390'),
					 (112,'630','04-22-2020','09-10-2020','260','0.00','170','190'),
					 (113,'3,200','05-22-2020','10-10-2020','300','0.00','360','560'),
					 (114,'900','03-29-2020','06-06-2020','610','0.00','250','630'),
					 (115,'2,500','03-22-2020','08-10-2020','560','0.00','286','320'),
					 (116,'2,580','01-23-2020','06-10-2020','0.00','320','281','660'),
					 (117,'712','07-23-2020','06-10-2020','500','0.00','670','182'),
					 (118,'9,300','03-23-2020','09-10-2020','312','0.00','28','45'),
					 (119,'2,300','07-25-2020','11-10-2020','170','0.00','85','54'),
					 (120,'15,140','02-26-2020','09-10-2020','0.00','620','167','99')

-----------INSERT SOME DATA INTO ROOM TABLE--------
 INSERT INTO Room VALUES
               (45,3,'X-Ray room'),
               (50,2,'Surgery room'),
               (55,1,'ICU room'),
               (60,4,'Dentist'),
               (65,1,'Infant_room'),
               (70,1,'Laboratory'),
			   (75,2,'Recovery room'),
			   (80,3,'Radiology room'),
			   (85,1,'Infant room'),
			   (86,2,'Waiting area'),
			   (87,1,'Internist room'),
			   (90,2,'Pharmacy room'),
			   (91,3,'Nutrient room'),
			   (92,2,'Consulting room'),
			   (93,1,'ICCU room'),
			   (94,2,'Cardio room'),
			   (96,3,'Nursery room'),
			   (97,2,'Obstetric room'),
			   (98,1,'Emergency room'),
			   (99,1,'Admission room')

  

---------------INSERT SOME DATA INTO PATIENT TABLE--------
   INSERT INTO Patient( patient_ID,First_Name,Last_Name,Patient_DOB,Gender,Check_In_Date, [Address], Patient_City,Patient_State,Patient_ZipCode,Phy_ID,Room_ID,Invoice_ID) VALUES                         
			  (1, 'Melesa', 'Vautre', '10-15-2008','F','01-04-20', '24429 Paget Road', 'Saint Petersburg', 'FL', 33705,22,45,101),
              (2, 'Melli', 'Teal', '04-16-1981','M','02-14-2020', '2 Spenser Terrace', 'Nashville', 'TN', 37240,24,50,102),
              (3, 'Robby', 'Rolf', '05-30-1999','M','03-25-2020', '95228 Portage Junction', 'Albuquerque', 'NM', 87110,26,55,103),
              (4, 'Pearle', 'Padbery', '07-20-2009','F','04-25-2020', '14 Killdeer Road', 'Orlando', 'FL', 32825,28,60,104),
              (5, 'Marcia', 'Golsby', '06-17-2013','F','02-17-2020', '23071 Lighthouse Bay Circle', 'New York City', 'NY', 10155,30,65,105),
              (6, 'Paxton', 'Mynett', '11-01-1967','M','01-30-2020', '15463 Service Road', 'Green Bay', 'WI', 54305,32,70,106),
              (7, 'Warden', 'Shilstone', '09-18-2001','M','06-30-2020', '09796 Killdeer Drive', 'Canton', 'OH', 44710,34,75,102),
              (8, 'Elmer', 'Pitbladdo', '06-29-2019','F','08-20-2020', '9455 Hooker Lane', 'Jackson', 'MS', 39236,36,80,105),
              (9, 'Olenolin', 'Astley', '07-18-1996','M','07-20-2020', '78190 Corscot Way', 'Portsmouth', 'VA', 23705,38,85,104),
              (10, 'Elmira', 'Reisk', '02-23-2015','F','01-22-20', '19 Meadow Vale Road', 'Washington', 'DC', 20067,42,86,105),
              (11, 'Carly', 'Roundtree', '10-17-1976','M','02-13-2020', '22061 Eliot Terrace', 'Springfield', 'MA', 01114,44,87,103),
              (12, 'Saundra', 'Blaw', '03-24-1950','F','02-06-2020', '65 Swallow Road', 'Washington', 'DC', 20520,46,90,103),
			  (13, 'Madison', 'Thorouggood', '06-13-2016','M','03-04-2020', '5 Susan Point', 'Columbia', 'SC', 29215,48,91,105),
              (14, 'Pattie', 'Rothera', '10-17-2013','F','05-23-2020', '37843 La Follette Parkway', 'Sacramento', 'CA', 94250,50,92,101),
              (15, 'Rosemary', 'Mayne', '12-21-1987','M','06-28-2019', '59 High Crossing Point', 'Inglewood', 'CA', 90398,52,93,102),
              (16, 'Kile', 'Delucia', '08-26-2017','M','05-20-2019', '8863 Tomscot Crossing', 'Charleston', 'SC', 29403,54,94,101),
              (17, 'Abagael', 'Lenney', '09-15-2008','F','06-11-2019', '0 Blackbird Trail', 'Oakland', 'CA', 94627,56,96,105),
              (18, 'Hedy', 'Bohey', '11-25-1984','M','03-14-2019', '71933 1st Circle', 'Tucson', 'AZ', 85754,58,97,103),
              (19, 'Ruthann', 'Clegg', '09-17-2009','F','06-16-2020', '0735 Cardinal Trail', 'Mesa', 'AZ', 85215,60,98,102),
              (20, 'Vernor', 'Pickerill', '04-05-2006','M','08-22-2020', '9033 Doe Crossing Point', 'Wilmington', 'DE', 19886,62,99,104)


   INSERT INTO Patient VALUES
                (21, 'Mike', 'Adams', '11-15-2009','M','02-02-20', '6423 Saint Rd', 'Las Vegas', 'NV', 33705,22,45,101),
                (22, 'Sam', 'Pokrel', '09-14-2020','F','01-05-20', '222 Bardstown Rd', 'Atlanta', 'GA', 40252,22,50,101),
                (23, 'Jose', 'Jodan', '08-12-2009','M','03-06-20', '150 Fountain Dr', 'Louisville', 'KY', 43706,22,55,101),
			    (25, 'Alissa', 'Johnson', '09-11-2009','F','02-07-20', '60 Lean St', 'Louisville', 'KY', 53702,26,55,114),
				(26, 'Ram', 'Khadka', '01-12-2009','F','03-01-20', '70 Hospital Rd', 'Louisville', 'KY', 53702,28,55,114),
				(27, 'Sita', 'Thapa', '02-18-2020','M','05-06-20', '3025 Wood Ct', 'Louisville', 'KY', 53702,30,55,114),
				(28, 'Khana', 'Pokrel', '03-19-2009','F','08-07-20', '2323 Foundatin Sq', 'Louisville', 'KY', 53702,36,55,114),
				(29, 'Krishna', 'BK', '04-25-2009','M','06-03-20', '31 Cedar Branch Ct', 'Louisville', 'KY', 53702,44,55,114),
				(30, 'Shyam', 'Basnet', '05-27-2020','F','05-04-20', '61 Sam St', 'Louisville', 'KY', 53702,50,55,114),
				(31, 'Devi', 'Chettri', '06-30-2020','M','02-09-20', '523 Willow Ave', 'Louisville', 'KY', 53702,54,55,114),
				(32, 'Aelson', 'Khadka', '07-26-2009','F','08-06-20', '23 Bardstown Rd', 'Louisville', 'KY', 53702,48,55,114)






	--------SELECT query that uses a WHERE clause---
	SELECT * FROM Treatment
	WHERE TreatTyPe = 'Cancer';

	---SELECT query that uses an OR and an AND operator---
	SELECT * FROM Patient
	WHERE Gender = 'M' AND Patient_City = 'Nashville' OR Patient_City = 'Albuquerque'

	----------SELECT query that filters NULL rows using IS NOT NULL-----
	SELECT DISTINCT Discharge_Date FROM Treatment
	WHERE Discharge_Date IS NOT NULL;

	/*Write a DML statement that UPDATEs a set of rows with a WHERE clause. 
	The values used in the WHERE clause should be a variable*/

    Declare @TreatType varchar(20) = 'pneumonia'
    SELECT * 
    FROM Treatment
    WHERE treatType = @TreatType

	----------SELECT query that filters NULL rows using IS NOT NULL-----
	SELECT * FROM Patient
	WHERE Patient_State = 'CA' AND Gender = 'F' AND Patient_DOB  IS NOT NULL;

	---Write a  SELECT query that utilizes a GROUP BY clause along with an aggregate function---
	SELECT TreatTyPe, COUNT(*) As Disease 
	FROM Treatment
	GROUP BY TreatTyPe

	--------Write a SELECT query that utilizes a CALCULATED FIELD
	SELECT SUM(Amount_Due)AS Total_Amount FROM 
	Invoice
	 

	SELECT * 
	FROM Patient
	WHERE First_Name Like 'R%'
	AND Gender = 'F'
	OR Check_In_Date BETWEEN '2020-01-22' AND '2020-05-23'
	 
	 ------Write a  SELECT query that utilizes a GROUP BY clause along with an aggregate function
	SELECT Discharge_Date, COUNT(IsDischarge) As Not_DisCharge_Yet 
	FROM Treatment
	WHERE IsDischarge = 0
	GROUP BY Discharge_Date

	
	---Utilize Case Statement---
	SELECT TreatTyPe, DateOfTreat,Discharge_Date ,
	  CASE
	     WHEN Discharge_Date = '1900-01-01' THEN ' Not Yet Discharged'
	     ELSE 'Discharged'
		 END As DischargeDate
	FROM Treatment;

	
	----Find Male patient born before 2008-----
	SELECT * FROM Patient
	WHERE Gender = 'M' AND Patient_DOB < '10-15-2008';

	 --- Female patient and Male patient count-----------
	SELECT Gender, COUNT(*) AS Gender_Count
	FROM Patient
	GROUP BY Gender

	--------Find out the total Amount to pay after Distcount---
	Select Amount_Due, Discount, Amount_Due - Discount As Total_Due from Invoice 
	WHERE  Discount > 0 


	/*Select P.First_Name, P.Last_Name, I.Amount_Due,I.Discount, ((I.Amount_Due - I.Discount) As Total_Amount
	from Patient p
	LEFT JOIN Invoice I ON p.Invoice_ID = I.Invoice_ID
	WHERE I.Discount > 0*/

    ------Write a  SELECT query that utilizes a JOIN---------
	Select P.First_Name, P.Last_Name, I.Amount_Due,I.Discount,I.Room_Charge,I.Physican_Charge,
	((I.Amount_Due + I.Room_Charge +I.Physican_Charge) - (I.Discount)) As Total_Amount_Due
	from Patient p
	LEFT JOIN Invoice I ON p.Invoice_ID = I.Invoice_ID
	ORDER BY I.Physican_Charge DESC, I.Room_Charge DESC;

	----Design a NONCLUSTERED INDEX with TWO KEY COLUMNS that improves the performance of one of the above queries
	CREATE NONCLUSTERED INDEX ix_Invoice_Physican_Charge_Room_Charge
	ON Invoice( Physican_Charge DESC, Room_Charge DESC)
	      
	

	--------Write a  SELECT query that utilizes a LEFT JOIN-----
	Select P.First_Name, P.Last_Name, I.Amount_Due,I.Discount,I.Room_Charge,I.Physican_Charge,
	((I.Amount_Due + I.Room_Charge +I.Physican_Charge) - (I.Discount)) As Total_Amount_Due, 
	CONCAT(py.First_Name,' ',py.Last_Name) AS Physican_Name  
	from Patient p
	LEFT JOIN Invoice I ON p.Invoice_ID = I.Invoice_ID
	LEFT JOIN  Physican py ON p.Phy_ID = py.Phy_ID 
	ORDER BY P.Last_Name 
 

	                       
  -----	Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries
    CREATE NONCLUSTERED INDEX ix_Patient_Last_Name
	ON Patient(Last_Name);
	 
  /*Design a NONCLUSTERED INDEX with AT LEAST ONE KEY COLUMN and AT LEAST ONE INCLUDED COLUMN that improves the performance 
   of one of the above queries*/
    CREATE NONCLUSTERED INDEX ix_Patient_Name_Last_Name
	ON Patient(	
	            Last_Name)
	 
	 INCLUDE ( 
	           First_Name
	 );
	
/*Write a DML statement that DELETEs rows from a table that another table references. 
 This script will have to also DELETE any records that reference these rows.
 Both of the DELETE statements need to be wrapped in a single TRANSACTION.*/
	GO
    BEGIN TRANSACTION
	DELETE FROM Patient
	where Invoice_ID = 101

	DELETE FROM Invoice
	WHERE Invoice_ID = 101
    ROLLBACK;
	GO

	/*Write a DML statement that UPDATEs a set of rows with a WHERE clause. 
	The values used in the WHERE clause should be a variable*/
	DECLARE @Gender Char(2) = 'M'
	SELECT *
	FROM Patient
	WHERE Gender = @Gender
	SELECT  @Gender 
	
	DECLARE @Change_Gender CHAR(2) 
    UPDATE Patient
    SET Gender = 'M'
    WHERE Patient_ID = 1

	/*
	 Write a DML statement that DELETEs a set of rows with a WHERE clause. 
	 The values used in the WHERE clause should be a variable*/	 
	DECLARE @Remove_Row CHAR(20) 
    DELETE Patient
    WHERE Patient_ID = 20

	--Write a SELECT query that utilizes a SUBQUERY---
    Select p.First_Name, p.Last_Name,i.Discount
    from Invoice i
	LEFT JOIN Patient p ON i.Invoice_ID = p.Invoice_ID
    where Discount = (Select Max(Discount) from Invoice) 


	 /*Write a SELECT query that utilizes a JOIN, at least 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC) AND A GROUP BY clause 
	   with an aggregate function*/
    Select  P.Patient_State,
	SUM(I.Amount_Due) As Total_Amount_Due  
	from Patient p
	LEFT JOIN Invoice I ON p.Invoice_ID = I.Invoice_ID
	WHERE p.Patient_State IN('CA','AZ') OR Patient_State LIKE'M%'
	GROUP BY P.Patient_State

	/*Write a SELECT query that utilizes a JOIN with 3 or more tables, at 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC), 
	a GROUP BY clause with an aggregate function, and a HAVING clause*/
	Select p.First_Name, p.Last_Name,i.Physican_Charge, i.Invoice_Date,COUNT(p.Phy_ID) AS NumberOfPatient From 	
	Physican p
	LEFT JOIN Patient pt ON p.Phy_ID = pt.Phy_ID
	LEFT JOIN Invoice i ON pt.Invoice_ID = i.Invoice_ID
	WHERE I.Invoice_Date BETWEEN '2018-01-26'AND '2020-06-25' AND P.Last_Name LIKE 'Wil%'
	GROUP BY p.First_Name, p.Last_Name, i.Physican_Charge,i.Invoice_Date
    HAVING COUNT(p.Phy_ID) >3;
    








	