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
    SUBJECTNAME VARCHAR (50) NOT NULL,
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

--> Feature 1 (Student user) Sql table generation

INSERT INTO university.users(NAME,EMAIL,PASSWORD,DOB,ROLE)
VALUES
	('Kose Aktas','kose.aktas@university.com','hello123','1984-04-12', 'student'),
    ('Ahsan Khamachi','ahsan.khamachi@university.com','hello123','2001-02-21', 'student'),
    ('Masih Baharlu','masih.baharlu@university.com','hello123','1997-05-08', 'student'),
    ('Farid Mammadli','farid.mammadli@university.com','hello123','1983-08-30', 'student'),
    ('Seher Damla','sima.aghalu@university.com','hello123','2004-03-23', 'student'),
    ('Derya Daghdelen','derya.daghdelen@university.com','hello123','2002-08-19', 'student'),
    ('Salva Imani','salva.imani@university.com','hello123','2001-04-09', 'student'),
    ('Alex Roseland','alen.roseland@university.com','hello123','1999-05-22', 'student'),
    ('Ross Little','ross.little@university.com','hello123','2002-06-16', 'student'),
    ('Mary Rohde','mary.rohde@university.com','hello123','1987-03-14', 'student'),
    ('Mihri Derin','mihri.derin@university.com','hello123','1979-08-03', 'student'),
    ('Elen Primer','elen.primer@university.com','hello123','1983-08-05', 'student'),
    ('Rose Simpson','rose.simpson@university.com','hello123','1977-01-14', 'student'),
    ('Sevim Elkizi','sevim.elkizi@university.com','hello123','1985-09-12', 'student'),
    ('Hadi Sabunchi','hadi.sabunchi@university.com','hello123','1988-04-21', 'student'),
    ('Jessica Azarlu','jessica.azarlu@university.com','hello123','1984-03-23', 'student'),
    ('Terry Cox','terry.cox@university.com','hello123','1995-08-15', 'student'),
    ('Aydin Ozdemir','aydin.ozdemir@university.com','hello123','1986-03-13', 'student'),
    ('Deniz Sahin','deniz.sahin@university.com','hello123','1988-01-01', 'student'),
    ('Dogan Yildirim','dogan.yildirim@university.com','hello123','1982-06-06', 'student'),
    ('Duman Demirci','duman.demirci@university.com','hello123','1985-05-13', 'student'),
    ('Damla Arslan','damla.arslan@university.com','hello123','1976-02-11', 'student'),
    ('Solmaz Alp','solmaz.alp@university.com','hello123','1981-11-12', 'student'),
    ('Ibrahim Tekirdag','ibrahim.tekirdag@university.com','hello123','1989-09-10', 'student')
    ;







--> Feature 3 (Subject creater) Sql table generation
INSERT INTO university.subjects(SUBJECTNAME, SUBJECTDESC)
VALUES
('JAVA','Programming language using JAVA will teach you how to build mobile applications, desktop applications, web applications, Games and much more!'),
('RDBMS','This subject focuses on An implementation of a RDBMS product is needed in organisations to create user interface, reports, and administering a database system security, access, etc'),
('Python','Become a Python Programmer and learn how to work with PDF Files, sending emails, reading Excel files, scraping websites, working with image files, and much more!'),
('Computer Architecture','This course will answer your questions on Computer architecture by using assembly language code with simple examples and simulation kit'),
('Data Science','You will experience firsthand all of the day to day job of a Data Scientist. Analysing Corrupt data, anomalies, irregularities - you name it!'),
('Business Analysis','A subject that teaches you business analysis basics-initiate a project, modelling, requirements gathering, project management frameworks and more!'),
('Artificial Intelligence','Learn key AI concepts about building AI using Python, use openAI and optimizing AI systems to full potential'),
('Computer Graphics','This subject is about basics of computer graphics where you will learn to solve a lot of numerical problems and see how to implement the different algorithms using programming languages'),
('Computer Networks','A step-by-step introduction to core principles like Network topologies, Network Devices & Cabling, TCP/IP models, IP addressing, switches & routers and more!'),
('Software Engineering',' This course provides a general introduction to software engineering concepts like programming , testing, releases, project management and IT governance covered with case studies'),
('Analysis and Design of algorithms','This course teaches you about writing algorithms, analysing algorithms with time & space complexity, methods like Divide & Conquer, Greedy method & Dynamic Programming'),
('C Programming','One of the most powerful programming language ever created – this course will teach you basic concepts, variables & datatypes, Operators, Arrays, functions & a lot more!'),
('Games Development','This course will teach you how to setup a games project, creating players, game environments, special superpowers of your game character and you’ll walk away with a working prototype'),
('Machine Learning','This course is designed by industry leading Data Scientist and Machine Learning experts to teach complex theory, algorithms, and coding libraries in a simple way.'),
('Project Management',' This course will provide you with the essential knowledge and techniques to successfully manage I.T. projects of any size and type. It is ideally suited to those who may be leading a project for the first time'),
('Power BI',' This course will teach you how to collect, clean, model, and present data so you can analyse and visualize complex Business Problems/Requirements'),
('Cloud Computing',' This course using Amazon AWS takes you from the AWS basics to being a competent AWS cloud practitioner. You will learn general cloud computing concepts and AWS from fundamentals right through to advanced concepts.'),
('Mobile Networks',' This course will teach you basic concepts of cellular communication systems in actual 2G, 3G, 4G and 5G Systems. The emphasis is on the essential concept delivery to non-major learners in the easiest way'),
('Microsoft.Net','This course gives you an overview of Microsoft Visual Studio & SQL Server and teaches you how to establish software development environment for .Net languages like VB.Net, C#.Net and more!'),
('Cyber Security',' Have you ever wondered exactly how hackers hack? Do words like firewalls, encryption, bio-metrics and malware sound confusing to you? If yes, this course is for you');
