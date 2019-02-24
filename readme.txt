Name of the Database in MySQL --> ssm
Name of the table in MySQL --> student
Name of the Database in Hive --> default
Name of the table in Hive where we import the MySQL data using sqoop --> student
Name of the table in Hive where we store data after joining --> temp_student
Name of the table in Hive where we store final data --> final_student

======================================================================================================

Steps to follow -->

For first time :-

1. Make the table in MySQL using this create statement , 

create table student(batch_id int(10) primary key,
name varchar(20),
phone_number varchar(10),
age int(2),
address varchar(50),
blood_group varchar(3),
email varchar(30));

2. Enter some data into this table.

3.Import that table into HIVE using sqoop.

4.Store that same table into another table final_student table.

5.Modify the student table in MySQL.

Importing Modification :-

Copy both the shell script in the same location .Run the shell script project.sh using the command - bash project.sh
It will ask for the password of MySQL databse after some time, give that passowrd & it will do all the work automatically , after complition it will show you the final_student table on the screen.