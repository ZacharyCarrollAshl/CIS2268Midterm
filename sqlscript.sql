REM   Script: ZacharyCarrollAshley_Midterm
REM   Have:
Check Constraint, Column Alias, Range Criteria (Between), Using IN operator, Using LIKE operator with Wildcards

create table Inventory ( 
    GameTitle varchar2(50) not null, 
    Platform varchar2(20) not null, 
    Price number not null, 
    Publisher varchar2(50) not null, 
    Quantity number not null 
);

create table Employee ( 
    Name varchar2(4000) not null, 
    EmployeeID varchar2(4000) not null constraint employee_pk primary key, 
    Address varchar2(4000) not null, 
    PositionName varchar2(4000) not null 
);

create table Distributor ( 
    Address varchar2(50) not null, 
    PhoneNumber varchar2(4000) not null, 
    DistributorCaseID varchar2(50) not null constraint distributor_pk primary key 
);

create table Customer ( 
    CustomerID number not null constraint customer_pk primary key, 
    PhoneNumber varchar2(4000) not null, 
    Name varchar2(50) not null, 
    Address varchar2(50) not null 
);

create table Shipment ( 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    EmployeeID number not null, 
    ShipmentID number not null, 
    CarrierCompany varchar2(4000) not null, 
    CustomerID number not null, 
    Quantity number not null, 
    ShipmentDate date not null 
);

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Persona 5', 'PS4', '60.00', 'Atlus', '10');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Pokemon Sword', 'Nintendo Switch', '60.00', 'Game Freak', '5');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Overwatch', 'Xbox One', '30.00', 'Blizzard', '1');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Super Smash Bros Ultimate', 'Nintendo Switch', '60.00', 'Sora Limited', '19');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Tony Hawk Underground', 'Gamecube', '250.00', 'Activision', '1');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Pokemon Shield', 'Nintendo Switch', '60.00', 'Game Freak', '9');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Jet Set Radio', 'Xbox 360', '100.00', 'Microsoft', '1');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Half Life Alyx', 'PC', '60.00', 'Valve', '5');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Smash Bros For The Wii U', 'Wii U', '60.00', 'Sora Limited', '100');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY) 
Values ('Pokemon Platnium', 'Nintendo DS', '60.00', 'Game Freak', '7');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('123456', '(937)-123-4567', 'Zachary Carroll-Ashley', '54321 House Avenue');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('654321', '(937)-678-9101', 'Martha Taylor', '72117 Fake Place Street');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('546000', '(202)-555-0192', 'Joseph Carey Jr', '90909 Sergeant Place');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('724085', '(423)-916-7627', 'Tom Baker', '51324 Dalek Street');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('216057', '(829)-869-3508', 'River Song', '62134 Smith Place');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('281602', '(808)-555-0108', 'Theresa Uzhca Perez', '67811 Alexa Avenue');

select * from CUSTOMER;

delete from CUSTOMER 
where NAME = 'Theresa Uzhca Perez';

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('743974', '(307)-929-0156', 'Theresa Uzhca Perez', '67811 Alexa Avenue');

ALTER TABLE DISTRIBUTOR     
      ADD (PUBLISHER VARCHAR2(4000));

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('785207', '(314)-716-9554', 'Amy Pond', '67811 Tardis Street');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('602552', '(360)-731-1163', 'Rory Pond', '120683 Doctor Place');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('587051', '(524)-710-8577', 'Peter Capaldi', '11112 Tennant Street');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('391327', '(771)-426-2320', 'Missy Master', '10103 Gallifrey Avenue');

SELECT * FROM CUSTOMER 
 
;

ALTER TABLE EMPLOYEE 
MODIFY POSITIONNAME DEFAULT 'Stocker';

ALTER TABLE INVENTORY 
MODIFY QUANTITY DEFAULT '1';

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('616129', '(313)-222-1817', 'Annabelle Carroll', '1234 Yellav Street');

insert into CUSTOMER (CUSTOMERID, PHONENUMBER, NAME, ADDRESS) 
Values ('212139', '(313)-181-7222', 'Jay Carroll', '1234 Yellav Street');

SELECT * FROM CUSTOMER 
;

DELETE 
FROM 
    CUSTOMER 
WHERE 
    NAME = 'Jay Carroll';

DELETE 
FROM 
    CUSTOMER 
WHERE 
    NAME = 'Annabelle Carroll';

select * from user_recyclebin;

alter table SHIPMENT add constraint pk_shipment primary key (GAMETITLE);

alter table INVENTORY add constraint pk_inventory primary key (GAMETITLE);

SELECT * FROM inventory;

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Dashie Wilders', '100000', '12345 Alexa Avenue', 'Stocker');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Lavender Socair', '654321', '54321 Tempus Avenue', 'Manager');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Erica Pixxington', '712567', '23321 Snowflake Place', 'Retail Staff');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Kayleigh Three', '619295', '33123 Spooky Street', 'Senior Game Advisor');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Ari Mars', '431109', '20132 River Avenue', 'Manager');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('River Doctor', '241845', '52956 Kael Avenue', 'Retail Staff');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Alice Capaldi', '657899', '20204 Raggedy Place', 'Manager');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Jillian Sable', '909021', '54790 Fionna Avenue', 'Senior Game Advisor');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Jordan Pandy', '616178', '56900 Xenia Avenue', 'Senior Advisor');

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('Amy Goats', '453125', '95777 Secret Street', 'Game Advisor');

SELECT * FROM EMPLOYEE 
;

ALTER TABLE INVENTORY 
ADD CHECK (QUANTITY>=1);

ALTER TABLE SHIPMENT 
ADD CHECK (QUANTITY>=1);

select  
    "NAME", 
    "EMPLOYEEID", 
    "ADDRESS", 
    "POSITIONNAME" 
from "EMPLOYEE";

ALTER TABLE EMPLOYEE 
ADD AGE NUMBER(3);

ALTER TABLE EMPLOYEE 
ADD CHECK (Age>=18);

insert into EMPLOYEE (AGE) 
Values ('18');

ALTER TABLE EMPLOYEE 
DROP COLUMN AGE;

ALTER TABLE INVENTORY 
ADD CHECK (PRICE>=1.00);

CREATE TABLE CUSTOMERSHIPMENTS AS 
   SELECT [ GAMETITLE, PLATFORM, SHIPMENTID, CUSTOMERID] 
   FROM SHIPMENT 
    
;

CREATE TABLE CUSTOMERSHIPMENTS AS 
   SELECT [GAMETITLE, PLATFORM, SHIPMENTID, CUSTOMERID] 
   FROM SHIPMENT 
   [CUSTOMERSHIPMENTS] 
;

create table CUSTOMERSHIPMENTS AS 
['GAMETITLE', 'PLATFORM', 'SHIPMENTID', 'CUSTOMERID'] 
FROM SHIPMENT 
;

SELECT * INTO CUSTOMERSHIPMENTS FROM SHIPMENT WHERE 1 = 0;

SELECT * INTO CUSTOMERSHIPMENTS FROM SHIPMENT;

select  
    "GAMETITLE", 
    "PLATFORM", 
    "EMPLOYEEID", 
    "SHIPMENTID", 
    "CARRIERCOMPANY", 
    "CUSTOMERID", 
    "QUANTITY", 
    "SHIPMENTDATE" 
from "SHIPMENT";

CREATE TABLE CUSTOMERACCOUNT AS 
   SELECT [NAME, ADDRESS, PHONENUMBER, CUSTOMERID] 
   FROM CUSTOMER;

   [ WHERE 0 = 1]


CREATE TABLE CUSTOMERACCOUNT AS 
   SELECT [NAME, ADDRESS, PHONENUMBER, CUSTOMERID] 
   FROM CUSTOMER 
   [ WHERE 0 = 1];

CREATE TABLE CUSTOMERACCOUNT AS 
SELECT [NAME, ADDRESS] 
FROM CUSTOMER;

CREATE TABLE CUSTOMERACCOUNT AS SELECT [NAME, ADDRESS] 
FROM CUSTOMER;

CREATE TABLE CUSTOMERACCOUNT AS  
SELECT NAME, ADDRESS 
FROM CUSTOMER;

DROP TABLE CUSTOMERACCOUNT;

UPDATE CUSTOMER 
SET NAME = Zachary Ashley, ADDRESS = 444 West Third Street, 
WHERE CUSTOMERID = 123456 
SELECT * FROM CUSTOMER;

UPDATE CUSTOMER 
SET NAME = Zachary Ashley, ADDRESS = 444 West Third Street, 
WHERE CUSTOMERID = 123456;

UPDATE CUSTOMER 
SET NAME = 'Zachary Ashley', ADDRESS = '444 West Third Street', 
WHERE CUSTOMERID = 123456;

UPDATE EMPLOYEE 
SET NAME = 'Theresa Abbington', POSITIONNAME= 'Retail Staff' 
WHERE EMPLOYEEID = 100000;

UPDATE EMPLOYEE  
SET NAME = 'Erica Pixx', ADDRESS = '23321 Snowfields Place'  
WHERE EMPLOYEEID = 712567 
SELECT * FROM EMPLOYEE;

UPDATE EMPLOYEE  
SET NAME = 'Erica Pixx', ADDRESS= '23321 Snowflake Place'  
WHERE EMPLOYEEID = 100000 
SELECT * FROM EMPLOYEE;

UPDATE EMPLOYEE  
SET NAME = 'Erica Pixx', ADDRESS= '23321 Snowflake Place'  
WHERE EMPLOYEEID = 712567 
SELECT * FROM EMPLOYEE;

UPDATE EMPLOYEE  
SET NAME = 'Erica Pixx', ADDRESS= '23321 Snowflake Place'  
WHERE EMPLOYEEID = 712567;

UPDATE EMPLOYEE  
SET EMPLOYEEID = '431189', POSITIONNAME= 'Senior Manager'  
WHERE NAME = Ari Mars;

UPDATE EMPLOYEE  
SET EMPLOYEEID = '431189', POSITIONNAME= 'Senior Manager'  
WHERE NAME = 'Ari Mars';

DELETE FROM CUSTOMER 
WHERE PHONENUMBER = (937)-123-4567 
ROLLBACK 
SELECT * FROM CUSTOMER;

DELETE FROM CUSTOMER 
WHERE PHONENUMBER = (937)-123-4567 
ROLLBACK;

delete CUSTOMER where PHONENUMER = (937)-123-4567;

delete CUSTOMER where PHONENUMBER = (937)-123-4567;

delete CUSTOMER where PHONENUMBER =(937)-123-4567;

delete CUSTOMER where CUSTOMERID =>123456;

delete CUSTOMER where CUSTOMERID > 123456;

rollback


SELECT * FROM CUSTOMER;

insert into EMPLOYEE (NAME, EMPLOYEEID, ADDRESS, POSITIONNAME) 
Values ('777111', '(934)-823-1212', 'Jake Robertts', '67812 Alexa Avenue');

DELETE FROM EMPLOYEE WHERE NAME = 777111;

DELETE FROM EMPLOYEE WHERE NAME = '777111';

SELECT CustomerID AS ID, Name AS Customer 
FROM Customers;

SELECT CustomerID AS ID, Name AS Customer 
FROM Customer;

SELECT CUSTOMERID 
FROM EMPLOYEE 
WHERE CUSTOMERID BETWEEN 1 AND 10;

SELECT PRICE 
FROM INVENTORY 
WHERE PRICE BETWEEN 1 AND 1000;

SELECT * FROM INVENTORY 
WHERE GAMETITLE IN ('Persona 5');

SELECT * FROM EMPLOYEE 
WHERE EMPLOYEEID LIKE '123%';

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE 
SELECT * FROM EMPLOYEE 
WHERE EMPLOYEEID LIKE '%0';

SELECT * FROM EMPLOYEE 
WHERE EMPLOYEEID LIKE '%0';

SELECT * FROM DISTRIBUTOR;

ALTER TABLE INVENTORY 
ADD DISTRIBUTORCASEID VARCHAR2(50);

insert into INVENTORY (DISTRIBUTORCASEID) 
Values ('7777');

ALTER TABLE INVENTORY 
ALTER COLUMN GAMETITLE varchar(4000) NULL;

ALTER TABLE INVENTORY 
ALTER COLUMN GAMETITLE varchar(4000) NOT NULL;

ALTER TABLE INVENTORY 
MODIFY GAMETITLE varchar(4000) NULL;

ALTER TABLE INVENTORY 
MODIFY PLATFORM varchar(4000) NULL;

ALTER TABLE INVENTORY 
MODIFY PRICE varchar(4000) NULL;

ALTER TABLE INVENTORY 
MODIFY PRICE varchar2(4000) NULL;

ALTER TABLE INVENTORY 
MODIFY PRICE varchar2(22) NULL;

ALTER TABLE INVENTORY 
MODIFY PUBLISHER varchar2(50) NULL;

ALTER TABLE INVENTORY 
MODIFY QUANTITY NUMBER(22) NULL;

select * from INVENTORY;

CREATE TABLE STOREINVENTORY AS 
   SELECT [ GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID] 
   FROM INVENTORY;

create table STOREINVENTORY ( 
    GAMETITLE varchar2(50) constraint storeinventory_pk primary key, 
    PLATFORM varchar2(20), 
    PRICE number, 
    PUBLISHER varchar2(50), 
    QUANTITY number, 
    DISTRIBUTORCASEID number 
);

alter table STOREINVENTORY add constraint storeinventory_distributorc_uq unique (DISTRIBUTORCASEID);

ALTER TABLE DISTRIBUTOR 
DROP COLUMN DISTRIBUTORCASEID;

ALTER TABLE DISTRIBUTOR 
ADD DISTRIBUTORCASEID varchar2(50) ;

alter table DISTRIBUTOR add constraint pk_caseid primary key (DISTRIBUTORCASEID) 
;

ALTER TABLE DISTRIBUTOR  
DROP COLUMN DISTRIBUTORCASEID;

ALTER TABLE DISTRIBUTOR  
ADD DISTRIBUTORCASEID NUMBER(22);

alter table DISTRIBUTOR add constraint pk_caseid primary key (DISTRIBUTORCASEID);

ALTER TABLE STOREINVENTORY 
ADD CONSTRAINT fk_storeinventory 
    FOREIGN KEY (DISTRIBUTORCASEID) 
    REFERENCES DISTRIBUTOR (DISTRIBUTORCASEID);

select  
    "GAMETITLE", 
    "PLATFORM", 
    "PRICE", 
    "PUBLISHER", 
    "QUANTITY", 
    "DISTRIBUTORCASEID" 
from "STOREINVENTORY";

insert into STOREINVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Tony Hawk Underground', 'Gamecube', '250.00', 'Activision', '1', '777');

SELECT * FROM STOREINVENTORY;

drop table "STOREINVENTORY" cascade constraints;

insert into INVENTORY (DISTRIBUTORCASEID) 
Values ('777');

SELECT * FROM INVENTORY;

drop table "INVENTORY" cascade constraints;

create table INVENTORY ( 
    GAMETITLE varchar2(50) not null constraint inventory_pk primary key, 
    PLATFORM varchar2(20) not null, 
    PRICE number not null, 
    PUBLISHER varchar2(50) not null, 
    QUANTITY number not null, 
    DISTRIBUTORCASEID number not null 
);

ALTER TABLE INVENTORY 
DROP FOREIGN KEY FK_inventory;

ALTER TABLE INVENTORY 
DROP CONSTRAINT FK_inventory;

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Tony Hawk Underground', 'Gamecube', '250.00', 'Activision', '1', '777');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Persona 5', 'PS4', '60.00', 'Atlus', '10', '711');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Pokemon Sword', 'Nintendo Switch', '60.00', 'Game Freak', '5', '921');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Overwatch', 'Xbox One', '30.00', 'Activision', '1', '231');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Super Smash Bros Ultimate', 'Nintendo Switch', '60.00', 'Sora Limited', '19', '676');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Pokemon Shield', 'Nintendo Switch', '60.00', 'Game Freak', '7', '456');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Jet Set Radio', 'Sega Dreamcast', '100.00', 'Sega', '1', '717');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Half Life Alyx', 'Oculus Rift', '60.00', 'Valve', '5', '222');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Smash Bros For The Wii U', 'Wii U', '60.00', 'Sora Limited', '100', '619');

insert into INVENTORY (GAMETITLE, PLATFORM, PRICE, PUBLISHER, QUANTITY, DISTRIBUTORCASEID) 
Values ('Gears Of War', 'Xbox One', '60.00', 'Microsoft', '7', '169');

SELECT * FROM INVENTORY 
;

ALTER TABLE INVENTORY 
ADD CONSTRAINT fk_inventory 
    FOREIGN KEY (DISTRIBUTORCASEID) 
    REFERENCES DISTRIBUTOR (DISTRIBUTORCASEID);

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle));

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle));

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle);

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle), 
);

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle), 
);

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle), 
));

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle), 
)));

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY(GameTitle) REFERENCES INVENTORY(GameTitle)), 
);

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
 
);

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum), 
 
));

create table RETURNS ( 
    ReturnNum number not null, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
    Primary Key(ReturnNum)));

create table RETURNS ( 
    ReturnNum number not null constraint returns_pk primary key, 
    Quantity number not null, 
    GameTitle varchar2(4000) not null, 
    Platform varchar2(4000) not null, 
    CustomerID number not null, 
    ReturnDate date not null 
);

ALTER TABLE RETURNS 
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID), 
;

ALTER TABLE RETURNS 
ADD CONSTRAINT FK_Returns 
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID), 
;

ALTER TABLE RETURNS 
ADD CONSTRAINT FK_Returns 
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);

ALTER TABLE RETURNS 
ADD CONSTRAINT FK_Returns 
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);

ALTER TABLE RETURNS 
ADD CONSTRAINT FK_Returns 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

create table RETURNS ( 
    RETURNID number not null constraint returns_pk primary key, 
    QUANTITY number not null, 
    GAMETITLE varchar2(4000) not null, 
    PLATFORM varchar2(4000) not null, 
    CUSTOMERID number not null, 
    RETURNDATE date not null 
);

create table SELLBACKS ( 
    GAME_ID number not null constraint sellbacks_pk primary key, 
    NAME varchar2(4000) not null, 
    PRICE number not null, 
    QUANTITY number not null, 
    MATCHEDPRICE varchar2(4000) not null 
);

ALTER TABLE DISTRIBUTOR ADD CONSTRAINT DISCASEID CHECK (DISTRIBUTORCASEID > 1);

SELECT NAME AS "Customer Name" 
FROM 
CUSTOMER;

SELECT * FROM INVENTORY 
WHERE PRICE > 30;

SELECT * FROM INVENTORY 
WHERE PLATOFMR IN ('Nintendo Switch');

SELECT * FROM INVENTORY 
WHERE PLATFORM IN ('Nintendo Switch');

SELECT * FROM CUSTOMER  
WHERE NAME LIKE "Z%";

SELECT * FROM CUSTOMER  
WHERE NAME LIKE 'Z%';

SELECT INVENTORY.GAMETITLE, INVENTORY.PLATFORM 
FROM INVENTORY 
FULL OUTER JOIN INVENTORY ON RETURNS.GAMETITLE=INVENTORY.GAMETITLE 
ORDER BY RETURNS.GAMETITLE;

SELECT INVENTORY, INVENTORY 
FROM INVENTORY 
FULL OUTER JOIN INVENTORY ON RETURNS.GAMETITLE=INVENTORY.GAMETITLE 
ORDER BY RETURNS.GAMETITLE;

SELECT INVENTORY, INVENTORY 
FROM INVENTORY 
FULL OUTER JOIN INVENTORY ON RETURNS.GAMETITLE=INVENTORY.GAMETITLE 
ORDER BY RETURNS.GAMETITLE;

