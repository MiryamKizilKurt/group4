/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  236349
 * Created: 11-Feb-2023
 */

--> Feature 1 (Student user) Sql table

CREATE TABLE if not exists university.users(
    ID INTEGER NOT NULL auto_increment,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE NOT NULL,
    PASSWORD VARCHAR(20) NOT NULL,
    DOB VARCHAR(20) NOT NULL,
    ROLE VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID)
) auto_increment=100000;

--> Feature 2 (admin user) Sql table

CREATE TABLE if not exists university.admins(
    ID INTEGER NOT NULL auto_increment,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE NOT NULL,
    PASSWORD VARCHAR(20) NOT NULL,
    DOB VARCHAR(20) NOT NULL,
    ROLE VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID)
) auto_increment=100000;

--> Feature 3 (subject admin) Sql table

CREATE TABLE IF NOT EXISTS university.subjects(
    SUBJECTID INTEGER NOT NULL auto_increment,
    SUBJECTNAME VARCHAR (30) NOT NULL,
    SUBJECTDESC VARCHAR (500) NOT NULL,
    primary key(subjectID)
    ) auto_increment=1000;

--> Feature 4 (subject enrollment) Sql table

drop table if exists university.subjectenrollment;
create table if not exists university.SubjectEnrollment(
enrollmentID Integer not null auto_increment,
ID Integer not null,
subject1 varchar(50),
subject2 varchar(50),
subject3 varchar(50),
subject4 varchar(50),
primary key(enrollmentID),
foreign key(ID) references users(ID)
) auto_increment=1000;