Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anp_d0453          |
| information_schema |
| mahalaxmi          |
| mahalaxmi_myakal   |
| mysql              |
| performance_schema |
| sakila             |
| shru               |
| shruti             |
| sys                |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> use anp_d0453;
Database changed
mysql> create table emp(e_id varchar(10) not null primary key, e_name varchar(50) not null, e_mobile_n varchar(10) not n
ull,e_salary double not null,e_address varchar(80) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| e_id       | varchar(10) | NO   | PRI | NULL    |       |
| e_name     | varchar(50) | NO   |     | NULL    |       |
| e_mobile_n | varchar(10) | NO   |     | NULL    |       |
| e_salary   | double      | NO   |     | NULL    |       |
| e_address  | varchar(80) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into emp values('e1','Shruti',7020125360,60000,'Adarsh Nagar Solapur'),('e2','Aishwarya',7823080533,50000,'Jule Solapur'),('e3','Shridhar',9156002775,70000,'New Pachha Peth Solapur'),('e4','Aditya',8055555098,60000,'Ashok Chowk'),('e5','Akanksha',9370873939,50000,'Mahesh Thobade Nagar Solapur');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+------+-----------+------------+----------+------------------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address                    |
+------+-----------+------------+----------+------------------------------+
| e1   | Shruti    | 7020125360 |    60000 | Adarsh Nagar Solapur         |
| e2   | Aishwarya | 7823080533 |    50000 | Jule Solapur                 |
| e3   | Shridhar  | 9156002775 |    70000 | New Pachha Peth Solapur      |
| e4   | Aditya    | 8055555098 |    60000 | Ashok Chowk                  |
| e5   | Akanksha  | 9370873939 |    50000 | Mahesh Thobade Nagar Solapur |
+------+-----------+------------+----------+------------------------------+
5 rows in set (0.00 sec)

mysql> update emp set e_name='Mahalaxmi' where e_id='e1';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+-----------+------------+----------+------------------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address                    |
+------+-----------+------------+----------+------------------------------+
| e1   | Mahalaxmi | 7020125360 |    60000 | Adarsh Nagar Solapur         |
| e2   | Aishwarya | 7823080533 |    50000 | Jule Solapur                 |
| e3   | Shridhar  | 9156002775 |    70000 | New Pachha Peth Solapur      |
| e4   | Aditya    | 8055555098 |    60000 | Ashok Chowk                  |
| e5   | Akanksha  | 9370873939 |    50000 | Mahesh Thobade Nagar Solapur |
+------+-----------+------------+----------+------------------------------+
5 rows in set (0.00 sec)

mysql> delete from emp where e_id='e4';
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+------+-----------+------------+----------+------------------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address                    |
+------+-----------+------------+----------+------------------------------+
| e1   | Mahalaxmi | 7020125360 |    60000 | Adarsh Nagar Solapur         |
| e2   | Aishwarya | 7823080533 |    50000 | Jule Solapur                 |
| e3   | Shridhar  | 9156002775 |    70000 | New Pachha Peth Solapur      |
| e5   | Akanksha  | 9370873939 |    50000 | Mahesh Thobade Nagar Solapur |
+------+-----------+------------+----------+------------------------------+
4 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE 'A%';
+------+-----------+------------+----------+------------------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address                    |
+------+-----------+------------+----------+------------------------------+
| e2   | Aishwarya | 7823080533 |    50000 | Jule Solapur                 |
| e5   | Akanksha  | 9370873939 |    50000 | Mahesh Thobade Nagar Solapur |
+------+-----------+------------+----------+------------------------------+
2 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE '%A';
+------+-----------+------------+----------+------------------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address                    |
+------+-----------+------------+----------+------------------------------+
| e2   | Aishwarya | 7823080533 |    50000 | Jule Solapur                 |
| e5   | Akanksha  | 9370873939 |    50000 | Mahesh Thobade Nagar Solapur |
+------+-----------+------------+----------+------------------------------+
2 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE 'S_______';
+------+----------+------------+----------+-------------------------+
| e_id | e_name   | e_mobile_n | e_salary | e_address               |
+------+----------+------------+----------+-------------------------+
| e3   | Shridhar | 9156002775 |    70000 | New Pachha Peth Solapur |
+------+----------+------------+----------+-------------------------+
1 row in set (0.00 sec)

mysql> select * from emp where e_name LIKE 'S______';
Empty set (0.00 sec)

mysql> select * from emp where e_name LIKE 'M_______i';
+------+-----------+------------+----------+----------------------+
| e_id | e_name    | e_mobile_n | e_salary | e_address            |
+------+-----------+------------+----------+----------------------+
| e1   | Mahalaxmi | 7020125360 |    60000 | Adarsh Nagar Solapur |
+------+-----------+------------+----------+----------------------+
1 row in set (0.00 sec)