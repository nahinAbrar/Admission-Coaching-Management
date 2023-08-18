-- Manager ID
DROP SEQUENCE mana_ID;
CREATE SEQUENCE mana_ID
    START WITH 101
    INCREMENT BY 1
    CACHE 20
    NOORDER;

CREATE OR REPLACE TRIGGER increase_man_ID
BEFORE INSERT ON MANAGER
FOR EACH ROW
BEGIN
    SELECT mana_ID.NEXTVAL
    INTO :new.m_id
    FROM DUAL;
END;
/

-- Branch ID
DROP SEQUENCE bran_ID;
CREATE SEQUENCE bran_ID
    START WITH 201
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_bran_ID
BEFORE INSERT ON BRANCH
FOR EACH ROW
BEGIN
    SELECT bran_ID.NEXTVAL
    INTO :new.br_id
    FROM DUAL;
END;
/

-- Course ID
DROP SEQUENCE cour_ID;
CREATE SEQUENCE cour_ID
    START WITH 301
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_cour_ID
BEFORE INSERT ON COURSE
FOR EACH ROW
BEGIN
    SELECT cour_ID.NEXTVAL
    INTO :new.c_id
    FROM DUAL;
END;
/

-- Batch ID
DROP SEQUENCE ba_ID;
CREATE SEQUENCE ba_ID
    START WITH 401
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_BA_ID
BEFORE INSERT ON BATCH
FOR EACH ROW
BEGIN
    SELECT ba_ID.NEXTVAL
    INTO :new.b_id
    FROM DUAL;
END;
/

-- Teacher ID
DROP SEQUENCE te_ID;
CREATE SEQUENCE te_ID
    START WITH 501
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_TE_ID
BEFORE INSERT ON TEACHER
FOR EACH ROW
BEGIN
    SELECT te_ID.NEXTVAL
    INTO :new.t_id
    FROM DUAL;
END;
/

-- Student ID
DROP SEQUENCE stu_ID;
CREATE SEQUENCE stu_ID
    START WITH 190204001
    INCREMENT BY 1
    CACHE 40
    NOORDER;
CREATE OR REPLACE TRIGGER increase_STU_ID
BEFORE INSERT ON STUDENT
FOR EACH ROW
BEGIN
    SELECT stu_ID.NEXTVAL
    INTO :new.st_id
    FROM DUAL;
END;
/

-- Schedule ID
DROP SEQUENCE sch_ID;
CREATE SEQUENCE sch_ID
    START WITH 601
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_SCH_ID
BEFORE INSERT ON SCHEDULE
FOR EACH ROW
BEGIN
    SELECT sch_ID.NEXTVAL
    INTO :new.sc_id
    FROM DUAL;
END;
/

-- Exam ID
DROP SEQUENCE ex_ID;
CREATE SEQUENCE ex_ID
    START WITH 701
    INCREMENT BY 1
    CACHE 20
    NOORDER;
CREATE OR REPLACE TRIGGER increase_EX_ID
BEFORE INSERT ON EXAM
FOR EACH ROW
BEGIN
    SELECT ex_ID.NEXTVAL
    INTO :new.e_id
    FROM DUAL;
END;
/

@"C:\Users\Tech Land\Desktop\Admission Coaching Management\insertValues.sql"

-- SELECT mana_ID.NEXTVAL FROM DUAL;