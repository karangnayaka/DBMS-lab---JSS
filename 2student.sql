-- dropping the database if exists and then creating a new database
drop database if exists Student;
create database if not exists Student;
use Student;

-- Create table if not exists
CREATE TABLE IF NOT EXISTS Student (
    sid varchar(25) PRIMARY KEY,
    name varchar(35) NOT NULL,
    branch varchar(25) NOT NULL,
    semester int NOT NULL,
    address varchar(255),
    phone varchar(35),
    email varchar(50)
);

-- Inserting 4 new students
INSERT INTO Student VALUES
    ('1', 'Karan', 'CSE', '5', 'Kuvempunagar', '876543219', 'karannayaka@gmail.com'),
    ('2', 'Manju', 'CSE', '1', 'Hebbal', '9876543210', 'manju@gmail.com'),
    ('3', 'Vivek', 'ME', '5', 'Kuvempunagar', '8657432190', 'vivekxyz@gmail.com'),
    ('4', 'Varun', 'ISE', '6', 'Bangalore', '8657432190', 'varunkk@gmail.com');

-- Modify address of the student based on SID
UPDATE Student SET address='Vijayanagar' WHERE sid = '2';

-- Delete a student
DELETE FROM Student WHERE sid='4';

-- List all students
SELECT * FROM Student;

-- List all students of CSE branch
SELECT * FROM Student WHERE branch='CSE';

-- List all students of CSE branch who reside in Kuvempunagar
SELECT * FROM Student WHERE branch='CSE' AND address='Kuvempunagar';
