drop table advertise;
drop table advertisement;
drop table advertiser;
drop table matches_with;
drop table sends;
drop table payment;
drop table photograph;
drop table messages;
drop table login;
drop table user_;


create table user_(
user_id varchar2(10) primary key not null,
u_name varchar(20) not null,
u_age integer not null,
gender varchar(6) not null,
occupation varchar(30) not null,
mobile_no number(10) not null,
qualification varchar(20) not null,
u_livingin varchar(15) not null,
membership varchar2(20),
religion varchar(10) not null,
marital_status varchar(10) not null,
street_no varchar2(5) not null,
h_no integer not null,
pincode integer not null,
salary integer not null,
reg_date date,
cases char(20),
p_age number not null,
p_marital_status varchar2(10) not null,
p_height varchar2(10) not null,
p_religion varchar2(15) not null,
p_gender varchar(6) not null,
p_livingin varchar(15) not null);

create table login(
username varchar2(20) primary key not null, 
password varchar2(15),
 role varchar2(20), 
user_id varchar(20) not null,
 foreign key(user_id) references user_(user_id));


create table messages( 
message_id number(10) not null primary key, 
message varchar(100),
 message_date date);

create table photograph( 
photo_id number not null primary key, 
ph_date date,
ph_type varchar(15),
user_id varchar(20) not null,
foreign key(user_id) references user_(user_id));

create table payment(
pay_id number not null primary key, 
payment_date date not null, 
amount number not null, 
mem_type varchar2(30),
user_id varchar(20) not null,
foreign key(user_id) references user_(user_id));

create table sends(
user_id varchar(20) not null, 
message_id number(10) not null, 
foreign key(message_id) references messages(message_id), 
foreign key(user_id) references user_(user_id), 
primary key(message_id,user_id));

create table matches_with(
mw_user varchar2(20) not null, 
user_id varchar2(20) not null, 
foreign key(mw_user) references user_(user_id), 
foreign key(user_id) references user_(user_id), 
primary key(mw_user,user_id));

create table advertiser( 
adv_id varchar2(7) not null primary key, 
adv_name varchar(20));

create table advertisement( 
advt_id varchar2(10) not null primary key, 
location varchar(25), 
duration varchar2(20)
);

create table advertise(
adv_id varchar2(7) not null, 
advt_id varchar2(10) not null, 
foreign key(adv_id) references advertiser(adv_id), 
foreign key(advt_id) references advertisement(advt_id), 
primary key(adv_id,advt_id));

set linesize 400;



INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C011','Riya',26,'female','Manager',898977345,'Master Degree','India','free','hindu','Single','82A' ,201,141001,25000,'20-March-2002','Successfull',28,'Single','6 ft','hindu','Male','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C021','Priya',23,'female','Analyst',9846513291,'Master Degree','America','paid','jain','Divorcie','79B' ,310,145132,30000,'15-March-2001','Successfull',27,'Divorcie','5 ft 8in','jain','Male','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C031','Sneha',25,'female','Teacher',9658471236,'Master Degree','India','free','sikh','Single','87A' ,420,148024,20000,'2-January-2004','Unsuccessfull',28,'Single','5 ft 7in','sikh','Male','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C041','Rohan',29,'male','Manager',8546249396,'Master Degree','XYZ','free','hindu','Single','75A' ,560,141701,25000,'20-February-2007','Successfull',28,'Single','5 ft 5 in','hindu','Female','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C051','Aditya',30,'male','Web Developer',9685741235,'Master Degree','India','paid','jain','Divorcie','28A' ,607,145881,40000,'7-July-2004','Unuccessfull',28,'Divorcie','5 ft 4 in','jain','Female','Australia');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C061','Rahul',27,'male','Teacher',8908547961,'Master Degree','XYZ','paid','hindu','Single','21A' ,708,141821,20000,'2-August-2012','Unuccessfull',28,'Singe','5 ft 6in','hindu','Female','London');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C071','Neha',30,'female','Professor',8985227345,'Master Degree','India','paid','hindu','Single','29B' ,852,141331,25000,'9-February-2003','Successfull',24,'Single','6 ft','hindu','Male','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C081','Mishti',24,'female','Web Designer',7846513291,'Master Degree','India','free','khatri','Single','9B' ,960,147132,30000,'25-March-2016','Unuccessfull',24,'Single','5 ft 8in','hindu','Male','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C091','Meenakshi',27,'female','HR',8858871236,'Master Degree','India','paid','hindu','Single','87A' ,263,148024,20000,'15-November-2020','Successfull',26,'Single','5 ft 7in','hindu','Male','US');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C101','Deepak',53,'male','SEO',6346245396,'Master Degree','UK','free','hindu','Single','5A' ,362,141071,50000,'20-December-2014','Successfull',26,'Single','5 ft 5 in','hindu','Female','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C123','Aniket',35,'male','Bank Manager',7685742235,'Master Degree','India','paid','Hindu','Single','23A' ,452,143281,40000,'10-November-2013','Successfull',23,'Single','5 ft 4 in','hindu','Female','Africa');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C131','Yash',52,'male','Lawyer',8208847961,'Master Degree','UK','paid','Hindu','Single','14A' ,563,141881,20000,'16-December-2012','Unuccessfull',26,'Single','5 ft 6in','hindu','Female','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C141','Meena',25,'female','Manager',898977345,'Master Degree','XYZ','free','Hindu','Single','48A' ,653,141081,25000,'6-January-2015','Unsuccessfull',28,'Single','6 ft','hindu','Male','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C151','Manpreet',26,'female','Analyst',9846513291,'Master Degree','XYZ','paid','Sikh','Single','50B',586,145032,30000,'20-February-2017','Unsuccessfull',26,'Single','5 ft 4in','Sikh','male','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C161','Akshika',24,'female','Receptionist',9658471236,'Master Degree','India','free','hindu','Single','7A' ,936,143024,20000,'30-December-2005','Unuccessfull',25,'Single','5 ft 7in','hindu','Male','Canada');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C171','Harman',25,'male','Manager',8326249366,'Master Degree','India','paid','Sikh','Single','5B' ,366,141001,25000,'3-March-2002','Successfull',25,'Single','5 ft 5 in','Sikh','Female','India');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C181','Mohit',26,'male','Web Developer',8794741235,'Master Degree','India','paid','Hindu','Single','28B' ,488,145081,40000,'15-January-2005','Successfull',23,'Single','5 ft 4 in','hindu','Female','Australia');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C191','Shubham',27,'male','Software Developer',9908547961,'Master Degree','India','paid','Hindu','Single','2A' ,771,141801,20000,'18-February-2004','Unuccessfull',25,'Single','5 ft 6in','hindu','Female','US');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C201','Kashish',24,'female','HR',9666341235,'Master Degree','XYZ','paid','Sikh','Married','4A' ,557,146281,40000,'26-April-2003','Successfull',25,'Single','6 ft 1 in','Sikh','Male','America');
INSERT INTO user_(user_id,u_name,u_age,gender,occupation,mobile_no,qualification,u_livingin,membership,religion,marital_status,street_no,h_no,pincode,salary,reg_date,cases,p_age,p_marital_status,p_height,p_religion,p_gender,p_livingin) VALUES('C211','Mehul',29,'male','Data Analyst',8915546361,'Master Degree','Australia','paid','Sikh','Single','3A' ,621,148001,20000,'17-December-2007','Unuccessfull',24,'Single','5 ft 6in','Sikh','Female','Canada');


INSERT INTO login(username,password,role,user_id) VALUES ('riyasharma994','riya901','user','C011');
INSERT INTO login(username,password,role,user_id) VALUES ('priyasharma796','priya263','user','C021');
INSERT INTO login(username,password,role,user_id) VALUES ('sneha152','sneha638','user','C031');
INSERT INTO login(username,password,role,user_id) VALUES ('rohanmehra632','rohan1235','user','C041');
INSERT INTO login(username,password,role,user_id) VALUES ('adityaverma458','adi152','user','C051');
INSERT INTO login(username,password,role,user_id) VALUES ('rahul596','riya901','user','C061');
INSERT INTO login(username,password,role,user_id) VALUES ('neha598','neha5298','user','C071');
INSERT INTO login(username,password,role,user_id) VALUES ('mishti7998','mishti738','user','C081');
INSERT INTO login(username,password,role,user_id) VALUES ('meenakshi2098','meenakshi252','user','C091');
INSERT INTO login(username,password,role,user_id) VALUES ('deepak3096','deepak3996','user','C101');
INSERT INTO login(username,password,role,user_id) VALUES ('aniket798','ani236','user','C123');
INSERT INTO login(username,password,role,user_id) VALUES ('yash595','yash263','user','C131');
INSERT INTO login(username,password,role,user_id) VALUES ('meena263','meena2635','user','C141');
INSERT INTO login(username,password,role,user_id) VALUES ('manpreet2796','manpreet2652','user','C151');
INSERT INTO login(username,password,role,user_id) VALUES ('akshika26','akshika2623','user','C161');
INSERT INTO login(username,password,role,user_id) VALUES ('harman263','harman5622','user','C171');
INSERT INTO login(username,password,role,user_id) VALUES ('mohit','mohit2632','user','C181');
INSERT INTO login(username,password,role,user_id) VALUES ('shubham5996','shubham6363','user','C191');
INSERT INTO login(username,password,role,user_id) VALUES ('kashish512','kashish598','user','C201');
INSERT INTO login(username,password,role,user_id) VALUES ('mehul9612','mehul528','user','C211');




INSERT INTO messages(message_id,message,message_date) VALUES (1001,'Hi ','28-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1002,'Hello ','25-April-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1003,' ','28-March-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1004,' ','26-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1005,'Hi,can we communicate ?','2-June-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1006,'Hello, i am intrested in your profile!','28-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1007,' ','10-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1008,' ','26-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1009,'Hi ','13-June-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1010,'Hello, how you doing ?  ','20-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1011,' ','30-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1012,' ','2-June-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1013,'Hi ','20-June-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1014,'Hello,supp? ','5-July-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1015,' ','1-July-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1016,' ','26-April-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1017,'Hi ','13-April-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1018,'Hello ','5-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1019,' ','19-May-2022');
INSERT INTO messages(message_id,message,message_date) VALUES (1020,' ','6-Mar-2022');

INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1230,'5-April-2002','JPEG','C011');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1249,'4-May-2001','JPG','C021');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1250,'15-April-2005','PNG','C031');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1260,'10-April-2007','JPEG','C041');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1279,'7-September-2004','JPEG','C051');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1280,'5-October-2012','JPG','C061');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1291,'9-February-2003','PNG','C071');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1301,'25-April-2016','PNG','C081');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1310,'2-January-2021','JPG','C091');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1325,'16-January-2015','JPEG','C101');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1178,'13-December-2013','JPG','C123');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1346,'11-Jan-2013','JPEG','C131');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1456,'19-March-2015','JPEG','C141');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1231,'21-March-2017','PNG','C151');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1879,'22-Jan-2006','PNG','C161');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1986,'6-April-2002','JPG','C171');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1261,'17-Jan-2005','JPEG','C181');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1098,'2-March-2004','JPEG','C191');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1761,'7-May-2003','PNG','C201');
INSERT INTO photograph(photo_id,ph_date,ph_type,user_id) VALUES (1671,'9-Jan-2008','PNG','C211');


INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1211,'26-may-2022',2000,'Paid','C011');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1212,'20-april-2022',1000,'Paid','C021');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1213,'21-March-2022 ',2500,'Free for 3 months','C031');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1214,'6-may-2022 ',2000,'Free for 1 month','C041');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1215,'1-may-2022',2500,'Paid','C051');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1216,'2-may-2022',2500,'Paid','C061');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1217,'4-may-2022',2000,'Paid','C071');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1218,'7-may-2022 ',2000,'Free for 3 months','C081');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1219,'20-may-2022',1000,'Paid','C091');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1220,'2-may-2022 ',2000,'Free for 1 month','C101');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1221,'25-may-2022',1000,'Paid','C123');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1222,'17-may-2022',2000,'Paid','C131');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1223,'8-may-2022 ',2500,'Free for 2 months','C141');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1224,'15-may-2022',2000,'Paid','C151');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1225,'22-jan-2022 ',3000,'Free for 1 month','C161');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES(1226,'2-april-2022',3000,'Paid','C171');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1227,'3-jan-2022 ',2000,'Paid','C181');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1228,'16-feb-2022',2500,'Paid','C191');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1229,'6-may-2022 ',1000,'Paid','C201');
INSERT INTO payment(pay_id,payment_date,amount,mem_type,user_id) VALUES (1230,'2-jan-2022 ',1000,'Paid','C211');


INSERT INTO sends(message_id,user_id) VALUES (1001,'C071');
INSERT INTO sends(message_id,user_id) VALUES (1002,'C021');
INSERT INTO sends(message_id,user_id) VALUES (1003,'C181');
INSERT INTO sends(message_id,user_id) VALUES (1004,'C101');
INSERT INTO sends(message_id,user_id) VALUES (1005,'C171');
INSERT INTO sends(message_id,user_id) VALUES (1006,'C123');
INSERT INTO sends(message_id,user_id) VALUES (1007,'C151');
INSERT INTO sends(message_id,user_id) VALUES (1008,'C141');
INSERT INTO sends(message_id,user_id) VALUES (1009,'C051');
INSERT INTO sends(message_id,user_id) VALUES (1010,'C211');
INSERT INTO sends(message_id,user_id) VALUES (1011,'C161');
INSERT INTO sends(message_id,user_id) VALUES (1012,'C191');
INSERT INTO sends(message_id,user_id) VALUES (1013,'C201');
INSERT INTO sends(message_id,user_id) VALUES (1014,'C151');
INSERT INTO sends(message_id,user_id) VALUES (1015,'C011');
INSERT INTO sends(message_id,user_id) VALUES (1016,'C031');
INSERT INTO sends(message_id,user_id) VALUES (1017,'C041');
INSERT INTO sends(message_id,user_id) VALUES (1018,'C091');
INSERT INTO sends(message_id,user_id) VALUES (1019,'C061');
INSERT INTO sends(message_id,user_id) VALUES (1020,'C081');

INSERT INTO matches_with(mw_user,user_id) VALUES ('C011','C101');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C021','C051');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C031','C171');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C041','C081');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C061','C091');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C071','C131');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C161','C123');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C141','C181');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C151','C191');
INSERT INTO matches_with(mw_user,user_id) VALUES ('C201','C211');


INSERT INTO advertiser(adv_id,adv_name) VALUES (4677,'kitkat');
INSERT INTO advertiser(adv_id,adv_name) VALUES ('A023','tanishq');
INSERT INTO advertiser(adv_id,adv_name) VALUES (7833,'toyota');
INSERT INTO advertiser(adv_id,adv_name) VALUES ('A703','lays');
INSERT INTO advertiser(adv_id,adv_name) VALUES (4877,'reva cloth shop');


INSERT INTO advertisement(advt_id,location,duration) VALUES ('adv123','middle','15 min');
INSERT INTO advertisement(advt_id,location,duration) VALUES ('adv152','top','10 min');
INSERT INTO advertisement(advt_id,location,duration) VALUES ('adv124','middle','15 min');
INSERT INTO advertisement(advt_id,location,duration) VALUES ('adv154','bottom','20 min');
INSERT INTO advertisement(advt_id,location,duration) VALUES ('adv165','top','5 min');


INSERT INTO advertise(adv_id,advt_id) VALUES (4677,'adv123');
INSERT INTO advertise(adv_id,advt_id) VALUES ('A023','adv152');
INSERT INTO advertise(adv_id,advt_id) VALUES (7833,'adv124');
INSERT INTO advertise(adv_id,advt_id) VALUES ('A703','adv154');
INSERT INTO advertise(adv_id,advt_id) VALUES (4877,'adv165');



