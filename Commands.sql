-- ===========================
-- DDL COMMANDS
-- ===========================

-- CREATE
CREATE TABLE EMPLOYEE (
    empno INTEGER,
    empname VARCHAR(15),
    job VARCHAR(15),
    deptno INTEGER,
    salary INTEGER
);

CREATE TABLE DEPARTMENT (
    deptid INTEGER,
    deptno INTEGER,
    job VARCHAR(15)
);

-- DROP
DROP TABLE DEPARTMENT;

-- ALTER
ALTER TABLE EMPLOYEE ADD COLUMN mobileno INTEGER;
ALTER TABLE EMPLOYEE MODIFY COLUMN empno VARCHAR(15);
ALTER TABLE EMPLOYEE DROP COLUMN mobileno;

-- TRUNCATE
TRUNCATE TABLE EMPLOYEE;

-- RENAME
RENAME TABLE EMPLOYEE TO EMP;
ALTER TABLE EMP RENAME TO EMPLOYEE;

-- ===========================
-- DML COMMANDS
-- ===========================

-- INSERT
INSERT INTO EMPLOYEE (empno, empname, job, deptno, salary)
VALUES ('e01', 'joe', 'developer', 102, 15000);

INSERT INTO EMPLOYEE (empno, empname, salary)
VALUES ('e01', 'joe', 15000);

INSERT INTO EMP1
SELECT * FROM EMPLOYEE;

-- UPDATE
UPDATE EMPLOYEE
SET empno='e1', empname='john';

-- DELETE
DELETE FROM EMPLOYEE
WHERE job='developer';

-- ===========================
-- DCL COMMANDS
-- ===========================

CREATE USER manu@localhost IDENTIFIED BY 'manu';

SHOW GRANTS FOR manu@localhost;

GRANT ALL ON mydb.* TO manu@localhost;

REVOKE UPDATE, DELETE ON mydb.* FROM manu@localhost;

REVOKE ALL ON mydb.* FROM manu@localhost;

-- ===========================
-- TCL COMMANDS
-- ===========================

SELECT @@autocommit;

INSERT INTO EMPLOYEE
VALUES ('e5', 'raj', 'Programmer', 103, 16000);

SET autocommit=0;

DELETE FROM EMPLOYEE
WHERE empno='e5';

ROLLBACK;

UPDATE EMPLOYEE
SET empname='john'
WHERE empno='e5';

SAVEPOINT A;

-- ===========================
-- DQL COMMANDS
-- ===========================

SELECT * FROM EMPLOYEE;

SELECT empno, empname, salary
FROM EMPLOYEE;

SELECT DISTINCT *
FROM EMPLOYEE;

SELECT DISTINCT empno, empname
FROM EMPLOYEE;

SELECT *
FROM EMPLOYEE
WHERE empno='e4';

SELECT *
FROM EMPLOYEE
ORDER BY empname;

SELECT *
FROM EMPLOYEE
LIMIT 3;

SELECT *
FROM EMPLOYEE
WHERE empname LIKE 'j%';

SELECT *
FROM EMPLOYEE
WHERE empname LIKE '%o%';

SELECT *
FROM EMPLOYEE
WHERE empname LIKE '%e';

-- ===========================
-- MYSQL COMMANDS
-- ===========================

CREATE DATABASE mydb;

SHOW DATABASES;

USE mydb;

SHOW TABLES;
