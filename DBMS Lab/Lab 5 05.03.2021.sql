-- DBMS Lab 5
-- Assignemt 5
-- Question : 1
-- Author : Abhishek Sharma
-- Platform : Oracle 10 G Database Express



-- Creating the table by the following criterias.

CREATE TABLE MYEMP1 (ENO NUMBER(4), ENAME VARCHAR2(20), PAN VARCHAR2(10), JOB VARCHAR2(10), MGR NUMBER(4), SAL NUMBER(5), DNO NUMBER(2),
CONSTRAINT MYEMP1_ENO_NULL CHECK ('ENO' IS NOT NULL),
CONSTRAINT MYEMP1_ENAME_NULL CHECK ('ENAME' IS NOT NULL),
CONSTRAINT MYEMP1_PAN_NULL CHECK ('PAN' IS NOT NULL),
CONSTRAINT MYEMP1_PK PRIMARY KEY(ENO),
CONSTRAINT MYEMP1_UN UNIQUE(PAN),
CONSTRAINT MYEMP1_C CHECK(SAL>4000));

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'MYEMP1';

-- Add a bonus column
ALTER TABLE MYEMP1
ADD BONUS NUMBER(10);

-- Add check constraint in the bonus column as the bonus should not exceed the salary
ALTER TABLE MYEMP1
ADD CONSTRAINT BONUS_CK CHECK (BONUS<SAL);
