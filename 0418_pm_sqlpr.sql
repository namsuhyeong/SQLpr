REM   Script: 0418_pm_sqlpr
REM   04/18 sql 오후 연습 

CREATE TABLE employees ( 
 
    employee_id NUMBER PRIMARY KEY, 
 
    last_name VARCHAR2(50), 
 
    department_id NUMBER 
 
);

CREATE TABLE departments ( 
 
    department_id NUMBER PRIMARY KEY, 
 
    department_name VARCHAR2(50) 
 
);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (1, 'Smith', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (2, 'Johnson', 20);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (3, 'Williams', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (4, 'Jones', 30);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (5, 'Brown', 30);

INSERT INTO departments (department_id, department_name) VALUES (10, 'Accounting');

INSERT INTO departments (department_id, department_name) VALUES (20, 'Marketing');

INSERT INTO departments (department_id, department_name) VALUES (30, 'Engineering');

SELECT 
 
  사원.employee_id, 
 
  사원.last_name, 
 
  사원.department_id, 
 
  부서.department_name 
 
FROM 
 
  employees 사원, 
 
  departments 부서 
 
WHERE 
 
  사원.department_id = 부서.department_id;

CREATE TABLE nation ( 
 
    nation_id NUMBER PRIMARY KEY, 
 
    country_name VARCHAR2(100), 
 
    population NUMBER 
 
);

CREATE TABLE participant ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    gender CHAR(1),  -- 'M' for Male, 'F' for Female 
 
    nation_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id) 
 
);

INSERT INTO nation (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

SELECT  
    p.first_name, 
    p.gender, 
    n.country_name,  
    n.population 
FROM  
    participant p,  
    nation n 
WHERE  
    p.nation_id = n.nation_id;

DROP TABLE employees;

DROP TABLE departments;

CREATE TABLE employees ( 
 
employee_id NUMBER PRIMARY KEY, 
 
last_name VARCHAR2(50), 
 
department_id NUMBER 
 
);

CREATE TABLE departments ( 
 
department_id NUMBER PRIMARY KEY, 
 
department_name VARCHAR2(50) 
 
);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (1, 'Smith', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (2, 'Johnson', 20);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (3, 'Williams', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (4, 'Jones', 30);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (5, 'Brown', 30);

INSERT INTO departments (department_id, department_name) VALUES (10, 'Accounting');

INSERT INTO departments (department_id, department_name) VALUES (20, 'Marketing');

INSERT INTO departments (department_id, department_name) VALUES (30, 'Engineering');

SELECT * FROM employees;

SELECT * FROM departments;

SELECT e.LAST_NAME, 
 
e.EMPLOYEE_ID, 
 
d.DEPARTMENT_NAME 
 
FROM employees e, departments d 
 
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID 
 
ORDER BY e.LAST_NAME;

SELECT e.LAST_NAME, 
 
e.EMPLOYEE_ID, 
 
d.DEPARTMENT_NAME 
 
FROM employees e, departments d 
 
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID 
 
ORDER BY e.LAST_NAME;

DROP TABLE nation;

DROP TABLE participant;

CREATE TABLE nation ( 
 
    nation_id NUMBER PRIMARY KEY, 
 
    country_name VARCHAR2(100), 
 
    population NUMBER 
 
);

CREATE TABLE participant ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    gender CHAR(1),  -- 'M' for Male, 'F' for Female 
 
    nation_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id) 
 
);

INSERT INTO nation (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

CREATE TABLE nations ( 
 
    nation_id NUMBER PRIMARY KEY, 
 
    country_name VARCHAR2(100), 
 
    population NUMBER 
 
);

CREATE TABLE participants ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    gender CHAR(1),  -- 'M' for Male, 'F' for Female 
 
    nation_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id) 
 
);

INSERT INTO nation (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

INSERT INTO nations (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nations (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nations (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

CREATE TABLE participants ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    gender CHAR(1),  -- 'M' for Male, 'F' for Female 
 
    nation_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id) 
 
);

INSERT INTO nations (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nations (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nations (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participants (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

DROP TABLE participant;

CREATE TABLE participant ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    gender CHAR(1),  -- 'M' for Male, 'F' for Female 
 
    nation_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id) 
 
);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

SELECT p.first_name,  
       n.country_name,  
       n.population 
     
FROM participant p, nations n 
     
WHERE p.nation_id = n.nation_id AND p.gender = 'F' 
     
ORDER BY p.first_name DESC;

drop table nation;

drop table nations;

drop table nations;

drop table participant;

CREATE TABLE nations ( 
 
    nation_id NUMBER PRIMARY KEY, 
 
    country_name VARCHAR2(100) 
 
);

CREATE TABLE sport ( 
 
    sport_id NUMBER PRIMARY KEY, 
 
    sport_name VARCHAR2(100) 
 
);

CREATE TABLE participant ( 
 
    participant_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(100), 
 
    nation_id NUMBER, 
 
    main_sport_id NUMBER, 
 
    CONSTRAINT fk_nation 
 
        FOREIGN KEY (nation_id) 
 
        REFERENCES nation (nation_id), 
 
    CONSTRAINT fk_sport 
 
        FOREIGN KEY (main_sport_id) 
 
        REFERENCES sport (sport_id) 
 
);

INSERT INTO nation (nation_id, country_name) VALUES (1, 'USA');

INSERT INTO nation (nation_id, country_name) VALUES (2, 'Canada');

INSERT INTO nation (nation_id, country_name) VALUES (3, 'South Korea');

INSERT INTO sport (sport_id, sport_name) VALUES (1, 'Basketball');

INSERT INTO sport (sport_id, sport_name) VALUES (2, 'Hockey');

INSERT INTO sport (sport_id, sport_name) VALUES (3, 'Archery');

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (1, 'John', 1, 1);

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (2, 'Emma', 1, 3);

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (3, 'Chris', 2, 2);

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (4, 'Olivia', 3, 3);

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (5, 'Sophia', 2, 1);

INSERT INTO participant (participant_id, first_name, nation_id, main_sport_id) VALUES (6, 'Liam', 3, 2);

INSERT INTO nations (nation_id, country_name) VALUES (1, 'USA');

INSERT INTO nations (nation_id, country_name) VALUES (2, 'Canada');

INSERT INTO nations (nation_id, country_name) VALUES (3, 'South Korea');

SELECT p.first_name, n.country_name, s.sport_name 
FROM participant p, nations n, sport s 
WHERE p.nation_id = n.nation_id AND p.main_sport_id = s.sport_id 
ORDER BY s.sport_name;

CREATE TABLE VolunteerActivity ( 
 
    activity_id NUMBER PRIMARY KEY, 
 
    juice_type VARCHAR2(20), 
 
    quantity_sold NUMBER 
 
);

INSERT INTO VolunteerActivity VALUES (1, 'Orange Juice', 100);

INSERT INTO VolunteerActivity VALUES (2, 'Apple Juice', 80);

INSERT INTO VolunteerActivity VALUES (3, 'Grape Juice', 640);

INSERT INTO VolunteerActivity VALUES (4, 'Pineapple Juice', 300);

INSERT INTO VolunteerActivity VALUES (5, 'Lemonade Juice', 110);

CREATE TABLE Unit ( 
 
    unit_id NUMBER PRIMARY KEY, 
 
    unit_name VARCHAR2(20), 
 
    activity_id NUMBER, 
 
    FOREIGN KEY (activity_id) REFERENCES VolunteerActivity(activity_id) 
 
);

INSERT INTO Unit VALUES (101, 'Alpha Unit', 1);

INSERT INTO Unit VALUES (102, 'Bravo Unit', 2);

INSERT INTO Unit VALUES (103, 'Charlie Unit', 3);

INSERT INTO Unit VALUES (104, 'Delta Unit', 4);

INSERT INTO Unit VALUES (105, 'Echo Unit', 5);

CREATE TABLE Soldier ( 
 
    soldier_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(20), 
 
    last_name VARCHAR2(20), 
 
    rank VARCHAR2(20), 
 
    unit_id NUMBER, 
 
    activity_id NUMBER, 
 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id), 
 
    FOREIGN KEY (activity_id) REFERENCES VolunteerActivity(activity_id) 
 
);

INSERT INTO Soldier VALUES (3028, 'John', 'Doe', 'Sergeant', 101, 1);

INSERT INTO Soldier VALUES (2734, 'Jane', 'Smith', 'Private', 102, 2);

INSERT INTO Soldier VALUES (3103, 'Michael', 'Johnson', 'Private', 103, 3);

INSERT INTO Soldier VALUES (4865, 'Emily', 'Davis', 'Private', 104, 4);

INSERT INTO Soldier VALUES (5371, 'Chris', 'Brown', 'Sergeant', 105, 5);

SELECT u.unit_name, v.juice_type 
FROM unit u JOIN volunteerActivity v 
	ON u.activity_id = v.activity_id;

SELECT first_name, unit_name, rank 
FROM Soldier NATURAL JOIN Unit;

SELECT unit_id, s.first_name, u.unit_name, s.rank 
FROM Soldier s JOIN Unit u 
USING (unit_id);

SELECT s.first_name, s.last_name, s.rank, u.activity_id 
FROM Soldier s JOIN Unit u 
ON s.activity_id = u.activity_id 
WHERE u.unit_name = 'Alpha Unit';

SELECT s.first_name, s.last_name, s.rank, u.activity_id 
FROM Soldier s JOIN Unit u 
ON s.activity_id = u.activity_id 
WHERE u.unit_name = 'Alpha Unit';

SELECT u.unit_name, v.quantity_sold 
FROM VolunteerActivity v JOIN Unit u 
ON v.activity_id = u.activity_id AND v.quantity_sold >= 110;

SELECT u.unit_name, v.quantity_sold 
FROM VolunteerActivity v JOIN Unit u 
ON (v.activity_id = u.activity_id) 
WHERE v.quamtity_sold >= 110;

select u.unit_name, v.quantity_sold 
from VolunteerActivity v join unit u 
	on (v.activity_id = u.activity_id) 
where v.quantity_sold >= 110;

SELECT first_name, unit_name 
FROM Soldier s JOIN Unit u 
ON s.unit_id = u.unit_id 
ORDER BY unit_name;

CREATE TABLE dept_temp ( 
deptno NUMBER PRIMARY KEY, 
dname VARCHAR2(30), 
loc VARCHAR2(30) 
);

INSERT INTO dept_temp VALUES (10, 'Administration', 'New York');

INSERT INTO dept_temp VALUES (20, 'Marketing', 'Los Angeles');

INSERT INTO dept_temp VALUES (30, 'Purchasing', 'San Francisco');

INSERT INTO dept_temp VALUES (40, 'Human Resources', 'Chicago');

SELECT e.employee_id, d.department_id, d.department_name, t.dname AS new_dname 
FROM employees e  
JOIN departments d ON e.department_id = d.department_id  
JOIN dept_temp t ON e.department_id = t.deptno;

SELECT u.unit_name, v.quantity_sold, v.juice_type, s.first_name, s.rank 
FROM VolunteerActivity v JOIN Unit u 
ON v.activity_id = u.activity_id JOIN Soldier s 
ON u.unit_id = s.unit_id 
WHERE v.quantity_sold BETWEEN 100 AND 600;

SELECT unit_name, juice_type, quantity_sold 
FROM Unit CROSS JOIN VolunteerActivity 
ORDER BY quantity_sold DESC;

CREATE TABLE DEPT_EX ( 
    DEPT_NO VARCHAR(10), 
    DEPT_NM VARCHAR(50), 
    PRIMARY KEY (DEPT_NO) 
);

CREATE TABLE EMP_EX ( 
    EMP_NO VARCHAR(10), 
    EMP_NM VARCHAR(50), 
    DEPT_NO VARCHAR(10), 
    FOREIGN KEY (DEPT_NO) REFERENCES DEPT_EX(DEPT_NO) 
);

INSERT INTO DEPT_EX (DEPT_NO, DEPT_NM) VALUES ('D01', '인사팀');

INSERT INTO DEPT_EX (DEPT_NO, DEPT_NM) VALUES ('D02', '개발팀');

INSERT INTO DEPT_EX (DEPT_NO, DEPT_NM) VALUES ('D03', '영업팀') 
 
     
-- 직원 데이터 입력 
INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E01', '홍길동', 'D02');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E02', '김철수', 'D01');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E03', '이영희', 'D02');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E04', '박보검', 'D03');

INSERT INTO DEPT_EX (DEPT_NO, DEPT_NM) VALUES ('D03', '영업팀');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E01', '홍길동', 'D02');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E02', '김철수', 'D01');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E03', '이영희', 'D02');

INSERT INTO EMP_EX (EMP_NO, EMP_NM, DEPT_NO) VALUES ('E04', '박보검', 'D03');

select * from DEPT_EX;

select * from EMP_EX;

SELECT a.DEPT_NO , a.DEPT_NM 
, NVL(b.EMP_NO, 'NULL') AS EMP_NO 
, NVL(b.EMP_NM, 'NULL') AS EMP_NM 
FROM DEPT_EX a OUTER JOIN EMP_EX b 
ON((a.DEPT_NO = b.DEPT_NO AND a.DEPT_NM = '개발팀') 
WHERE A.DEPT_NO IS NOT NULL;

SELECT a.DEPT_NO , a.DEPT_NM 
, NVL(b.EMP_NO, 'NULL') AS EMP_NO 
, NVL(b.EMP_NM, 'NULL') AS EMP_NM 
FROM DEPT_EX a OUTER JOIN EMP_EX b 
ON((a.DEPT_NO = b.DEPT_NO AND a.DEPT_NM = '개발팀') 
WHERE A.DEPT_NO IS NOT NULL;

select 
    a.dept_no, a.dept_nm 
    ,nvl(b.emp_no, 'null') as emp_no 
    ,nvl(b.emp_nm, 'null') as emp_nm 
from dept_ex a left outer join emp_ex b 
  on (a.dept_no = b.dept_no) and (a.dept_nm = '개발팀') 
where a.dept_no is not null;

drop table Unit;

drop table Soldier;

CREATE TABLE Unit ( 
    unit_id INT, 
    unit_name VARCHAR(50), 
    PRIMARY KEY (unit_id) 
);

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) 
);

CREATE TABLE Units ( 
    unit_id INT, 
    unit_name VARCHAR(50), 
    PRIMARY KEY (unit_id) 
);

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) 
);

drop table Soldier;

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) 
);

INSERT INTO Units (unit_id, unit_name) VALUES (1, 'Alpha');

INSERT INTO Units (unit_id, unit_name) VALUES (2, 'Bravo');

INSERT INTO Units (unit_id, unit_name) VALUES (3, 'Charlie');

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) 
);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (104, 'Liam', NULL);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

drop table Soldier;

INSERT INTO Units (unit_id, unit_name) VALUES (1, 'Alpha');

INSERT INTO Units (unit_id, unit_name) VALUES (2, 'Bravo');

INSERT INTO Units (unit_id, unit_name) VALUES (3, 'Charlie');

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Units(unit_id) 
);

INSERT INTO Units (unit_id, unit_name) VALUES (1, 'Alpha');

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (104, 'Liam', NULL);

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

drop table Units;

drop table Soldier;

CREATE TABLE Units ( 
    unit_id INT, 
    unit_name VARCHAR(50), 
    PRIMARY KEY (unit_id) 
);

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Units(unit_id) 
);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (104, 'Liam', NULL);

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY u.unit_id;

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY s.unit_id;

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

SELECT u.unit_id, u.unit_name, s.first_name;

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

ELECT u.unit_id, u.unit_name, s.first_name 


FROM Units.u LEFT OUTER JOIN Soldier.s 


    ON(u.unit_id = s.unit_id)


SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

CREATE TABLE Soldier ( 
    soldier_id INT, 
    first_name VARCHAR(50), 
    unit_id INT, 
    FOREIGN KEY (unit_id) REFERENCES Units(unit_id) 
);

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

INSERT INTO Units (unit_id, unit_name) VALUES (1, 'Alpha');

INSERT INTO Units (unit_id, unit_name) VALUES (2, 'Bravo');

INSERT INTO Units (unit_id, unit_name) VALUES (3, 'Charlie');

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (104, 'Liam', NULL);

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

SELECT u.unit_id, u.unit_name, s.first_name 
     
FROM Units.u LEFT OUTER JOIN Soldier.s 
    ON(u.unit_id = s.unit_id) 
     
ORDER BY unit_id;

SELECT S.first_name, U.unit_name 
 
FROM Unit U RIGHT JOIN Soldier S 
 
ON S.unit_id = U.unit_id 
 
ORDER BY U.unit_name;

CREATE TABLE Soldier ( 
 
    soldier_id NUMBER PRIMARY KEY, 
 
    first_name VARCHAR2(20), 
 
    last_name VARCHAR2(20), 
 
    rank VARCHAR2(20), 
 
    unit_id NUMBER, 
 
    activity_id NUMBER, 
 
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id), 
 
    FOREIGN KEY (activity_id) REFERENCES VolunteerActivity(activity_id) 
 
);

INSERT INTO Soldier VALUES (3028, 'John', 'Doe', 'Sergeant', 101, 1);

INSERT INTO Soldier VALUES (2734, 'Jane', 'Smith', 'Private', 102, 2);

INSERT INTO Soldier VALUES (3103, 'Michael', 'Johnson', 'Private', 103, 3);

INSERT INTO Soldier VALUES (4865, 'Emily', 'Davis', 'Private', 104, 4);

INSERT INTO Soldier VALUES (5371, 'Chris', 'Brown', 'Sergeant', 105, 5);

SELECT S.first_name, U.unit_name 
 
FROM Unit U RIGHT JOIN Soldier S 
 
ON S.unit_id = U.unit_id 
 
ORDER BY U.unit_name;

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

NSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (101, 'John', 1); 


INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (102, 'Mike', 1);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (104, 'Liam', NULL);

INSERT INTO Soldier (soldier_id, first_name, unit_id) VALUES (103, 'Alex', 2);

SELECT S.first_name, U.unit_name 
 
FROM Unit U RIGHT JOIN Soldier S 
 
ON S.unit_id = U.unit_id 
 
ORDER BY U.unit_name;

