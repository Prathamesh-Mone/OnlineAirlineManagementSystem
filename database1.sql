create database project5;
use project5;

create table passenger_personal
	(P_ID integer unique AUTO_INCREMENT,
	name varchar(20),
	addharno varchar(10),
	age integer,
	dob DATE,
	sex char(1),
	primary key (P_ID));
alter table passenger_personal AUTO_INCREMENT=1000;
create table passenger_contact
	(contactno varchar(10),
	P_ID integer unique AUTO_INCREMENT,
	emailid varchar(50),
	passportno varchar(10),
	address varchar(50),
	primary key (contactno , emailid),
	foreign key (P_ID) references passenger_personal(P_ID) on delete cascade);
alter table passenger_contact AUTO_INCREMENT=1000;
create table passenger_payment
	(T_ID integer unique not null AUTO_INCREMENT,
	P_ID integer,
	methodno varchar(20),
	billingaddr varchar(50),
	cardno varchar(10),
	code integer,
	primary key (T_ID));
alter table passenger_payment AUTO_INCREMENT=100;
create table airport
	(A_ID varchar(10),
	a_name varchar(100),
	loc varchar(20),
	gate_cnt varchar(3),
	counter_cnt varchar(3),
	primary key (A_ID));
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10000,'Louisville International Airport','Louisiville-UK',50,62);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10001,'Chandigarh International Airport','Chandigarh-India',30,32);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10002,'Dallas/Fort Worth International Airport','Texa-US',50,62);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10003,'Indira GandhiInternational Airport','Delhi-INDIA',80,92);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10004,'Chhatrapati Shivaji International Airport','Mumbai-INDIA',120,150);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10005,'San Francisco International Airport','California-US',130,156);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10006,'Frankfurt Airport','Frankfrut-Germay',80,92);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10008,'John F. Kennedy International Airport','Newyork-US',60,72);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10009,'Madras International Airport','Chennai-INDIA',50,55);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10010,'Netaji-Subash Chandra-Bose International Airport','Kolkata-INDIA',50,56);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10011,'Kempegownda International Airport','Banglore-INDIA',40,42);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10012,'Narita International Airport','Tokyo-Japan',80,92);
insert into airport (A_ID,a_name,loc,gate_cnt,counter_cnt)values(10013,'Lohegaon Airport','Pune-INDIA',10,22);
create table airline
	(airline_no varchar(10),
	A_IDs varchar(10),
	A_IDd varchar(10),
	name varchar(50),
	time varchar(50),
	working_days varchar(50),
	fare integer,
	officeloc varchar(50),
	primary key (A_IDS,A_IDd,airline_no));
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2000,10004,10000,'British_Airways','22:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2000,10000,10004,'British_Airways','06:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2000,10003,10000,'British_Airways','19:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2000,10000,10003,'British_Airways','09:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10004,10002,'United_Airways','01:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10002,10004,'United_Airways','20:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10003,10002,'United_Airways','23:00hrs','Mon-Sat',150000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10002,10003,'United_Airways','06:00hrs','Mon-Sat',150000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10004,10003,'Jet_Airways','06:30hrs','Mon-Thurs-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10003,10004,'Jet_Airways','02:00hrs','Mon-Wed-Sun',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10003,10013,'Jet_Airways','09:30hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10013,10003,'Jet_Airways','11:00hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10003,10009,'Jet_Airways','16:00hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10009,10003,'Jet_Airways','08:00hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10009,10013,'Jet_Airways','06:45hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2002,10013,10009,'Jet_Airways','05:00hrs','Mon-Sat',5000,'Mumbai-Delhi-Pune-Chennai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10009,10004,'Spice_Jet','17:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10004,10009,'Spice_Jet','03:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10013,10011,'Spice_Jet','16:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10011,10013,'Spice_Jet','12:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-ChennaiBanglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10011,10004,'Spice_Jet','06:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10004,10011,'Spice_Jet','12:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10003,10011,'Spice_Jet','22:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2003,10011,10003,'Spice_Jet','08:00hrs','Mon-Sat',7500,'Mumbai-Delhi-Pune-Chennai-Banglore');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10001,10004,'AIRHIGH','06:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10004,10001,'AIRHIGH','06:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10004,10003,'AIRHIGH','10:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10003,10004,'AIRHIGH','09:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10004,10010,'AIRHIGH','06:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10010,10004,'AIRHIGH','08:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10003,10010,'AIRHIGH','20:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2004,10010,10003,'AIRHIGH','11:00hrs','Mon-Sat',9000,'Mumbai-Delhi-Chandigarh-Kolkata');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2005,10012,10004,'Cathay-Pacific- Airways','08:40hrs','Mon-Sat',150005,'Mumbai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2005,10004,10012,'Cathay-Pacific-Airways','13:40hrs','Mon-Sat',150005,'Mumbai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2005,10004,10006,'Cathay-Pacific-Airways','22:40hrs','Mon-Sat',150005,'Mumbai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2005,10006,10004,'Cathay-Pacific-Airways','03:00hrs','Mon-Sat',150005,'Mumbai');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10004,10005,'United_Airways','06:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10005,10004,'United_Airways','22:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10004,10008,'United_Airways','08:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
insert into airline (airline_no,A_IDs,A_IDd,name,time,working_days,fare,officeloc) values(2001,10008,10004,'United_Airways','12:00hrs','Mon-Sat',100000,'Mumbai-Delhi');
create table flight
	(F_ID varchar(10) unique not null,
	 A_IDs varchar(10),
	 A_IDd varchar(10),
	airline_no varchar(10),
	dt date,
	capacity integer(3),
	time_dept varchar(10),
	time_arrival varchar(10),
	duration integer,
	primary key (F_ID),
	foreign key (A_IDs,A_IDd,airline_no) references airline(A_IDs,A_IDd,airline_no) on delete cascade);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('BA000',10004,10000,2000,250,04/11/2020,'22:00hrs','09:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('BA001',10000,10004,2000,250,04/11/2020,'06:00hrs','16:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('BA002',10003,10000,2000,250,04/11/2020,'19:00hrs','07:00hrs',12);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('BA003',10000,10004,2000,250,04/11/2020,'09:00hrs','19:00hrs',12);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA001',10004,10002,2001,250,04/11/2020,'01:00hrs','15:00hrs',14);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA002',10002,10004,2001,250,04/11/2020,'20:00hrs','10:00hrs',14);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA003',10003,10002,2001,250,04/11/2020,'23:00hrs','15:00hrs',16);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA004',10002,10003,2001,250,04/11/2020,'06:00hrs','21:00hrs',16);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA000',10004,10003,2002,250,04/11/2020,'06:30hrs','08:30hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA001',10003,10004,2002,250,04/11/2020,'02:00hrs','04:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA002',10003,10013,2002,250,04/11/2020,'09:30hrs','12:30hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA003',10013,10003,2002,250,04/11/2020,'11:00hrs','02:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA004',10003,10009,2002,250,04/11/2020,'16:00hrs','19:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA005',10009,10003,2002,250,04/11/2020,'08:00hrs','11:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA006',10009,10013,2002,250,04/11/2020,'06:45hrs','09:45hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('JA007',10013,10009,2002,250,04/11/2020,'05:00hrs','08:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ000',10009,10004,2003,250,04/11/2020,'17:00hrs','19:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ001',10004,10009,2003,250,04/11/2020,'03:00hrs','05:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ002',10013,10011,2003,250,04/11/2020,'16:00hrs','18:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ003',10011,10013,2003,250,04/11/2020,'12:00hrs','15:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ004',10011,10004,2003,250,04/11/2020,'06:00hrs','09:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ005',10004,10011,2003,250,04/11/2020,'12:00hrs','15:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ006',10003,10011,2003,250,04/11/2020,'22:00hrs','02:00hrs',4);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('SJ007',10011,10003,2003,250,04/11/2020,'08:00hrs','12:00hrs',4);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH000',10001,10004,2004,250,04/11/2020,'06:00hrs','09:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH001',10004,10001,2004,250,04/11/2020,'06:00hrs','09:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH002',10004,10003,2004,250,04/11/2020,'10:00hrs','12:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH003',10003,10004,2004,250,04/11/2020,'09:00hrs','11:00hrs',2);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH004',10004,10010,2004,250,04/11/2020,'06:00hrs','09:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH005',10010,10004,2004,250,04/11/2020,'08:00hrs','11:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH006',10003,10010,2004,250,04/11/2020,'20:00hrs','11:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('AH007',10010,10003,2004,250,04/11/2020,'11:00hrs','11:00hrs',3);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('CP000',10012,10004,2005,250,04/11/2020,'08:40hrs','15:40hrs',7);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('CP001',10004,10012,2005,250,04/11/2020,'13:40hrs','20:00hrs',7);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('CP002',10004,10006,2005,250,04/11/2020,'22:40hrs','08:40hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('CP003',10006,10004,2005,250,04/11/2020,'03:00hrs','13:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA005',10004,10005,2001,250,04/11/2020,'06:00hrs','16:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA006',10005,10004,2001,250,04/11/2020,'22:00hrs','08:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA007',10004,10008,2001,250,04/11/2020,'08:00hrs','18:00hrs',10);
insert into flight (F_ID,A_IDs,A_IDd,airline_no,capacity,dt,time_dept,time_arrival,duration) values('UA008',10008,10004,2001,250,04/11/2020,'12:00hrs','22:00hrs',10);
create table passenger_ticket
	(serialno int unique AUTO_INCREMENT,
	T_ID integer,
	P_ID integer,
	F_ID varchar(10),
	dt_travel date,
	ticketno integer,
	seatno integer,
	primary key(serialno));
alter table passenger_ticket AUTO_INCREMENT=0;
create table passenger_cancel
	(ticketno integer,
	name varchar(20),
	F_ID varchar(10),
	dt_cancel date,
	P_ID integer,
	primary key(ticketno));	















	
	
