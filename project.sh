#!/bin/sh
hive -e "drop table student;"
sqoop import --connect jdbc:mysql://localhost/ssm --username training -P --table student --hive-import -m 1
bash project_1.sh
