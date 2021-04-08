create database DemoStudent ;

use DemoStudent;

create table User (
	id varchar(50)  ,
	name varchar(50),
    email varchar(50),
	password varchar(50)
);

create table Student 
(
	id_student varchar(50) , 
    name_student varchar(50),
    tel_number varchar(50),
    avg_mark varchar(50),
    level varchar(50)
);

INSERT INTO User VALUES
('1','Duong Van Chinh','yua2307@gmail.com','1234'),
('2','Phan Thi Nhu Quynh','quynhnauz@gmail.com','1234');