hive -e "drop table temp_student;"
hive -e "create table temp_student like student;"
hive -e "INSERT INTO table temp_student 
SELECT student.batch_id,student.name,student.phone_number,student.age,student.address,student.blood_group,student.email 
FROM student 
INNER JOIN final_student ON student.batch_id = final_student.batch_id;"
hive -e "INSERT INTO table temp_student 
SELECT student.batch_id,student.name,student.phone_number,student.age,student.address,student.blood_group,student.email 
FROM student 
FULL OUTER JOIN final_student ON student.batch_id = final_student.batch_id where final_student.batch_id IS NULL ;"
hive -e "drop table final_student;"
hive -e "create table final_student like student;"
hive -e "insert into table final_student select * from temp_student;"
echo "Process Done"
echo "Updated Table :- "
hive -e "select * from final_student;"
echo "BYE , HAVE A GOOD DAY"
