REM   Script: 0411_noon_sql
REM   0411 오후 수업

SELECT NVL(NULL, 'NVL-OK') FROM DUAL;

CREATE TABLE employees ( 
                         employee_id NUMBER, 
                         first_name VARCHAR2(50), 
                         last_name VARCHAR2(50), 
                         salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

INSERT INTO employees VALUES (4, 'Michael', 'Johnson', 103 );

SELECT * FROM employees;

SELECT first_name, last_name, salary*12 as annual_salary FROM employees;

SELECT Distinct first_name FROM employees;

SELECT Distinct first_name, last_name FROM employees;

create table pokemon( 
    pm_id int primary key not null, 
    name varchar(20) not null, 
    attr varchar(20) DEFAULT'normal' 
);

insert into pokemon values(1,'Bulbasaur','grass');

insert into pokemon values(2,'lvysaur','grass');

insert into pokemon values(3,'Venusaur','grass');

insert into pokemon values(4,'Charmander','Fire');

insert into pokemon values(5,'charmeleon','Fire');

insert into pokemon values(25,'Pikachu','Electric');

SELECT pm_id as 번호, name as 이름, attr as 속성 FROM pokemon;

SELECT * FROM pokemon;

SELECT DISTINCT attr FROM pokemon;

SELECT 10+5 as addition, 15-7 as subtraction,6*3 as multiplication, 20/4 as division, mod(17,5) as modulo FROM DUAL;

CREATE TABLE pokemon ( 
pm_id INT PRIMARY KEY NOT NULL, 
name VARCHAR(20) NOT NULL, 
attr VARCHAR(20) DEFAULT 'normal', 
weight INT 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT concat(weight*2.2, ' Ibs') as pound FROM pokemon;

SELECT player_name||'선수' from pokemon;

SELECT * FROM pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
height NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 50);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 90);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 250);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 120);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 55);

SELECT 
'포켓몬번호: ' || pm_id 번호, 
'이름: ' || name 이름, 
'속성: ' || attr 속성, 
'키: ' || height 키 
FROM pokemon;

SELECT LOWER('SQL Expert') FROM DUAL;

SELECT UPPER('SQL Expert') FROM DUAL;

SELECT CONCAT('RDBMS', ' SQL') FROM DUAL;

SELECT CONCAT(UPPER('sqld'),lower('completed!')) FROM DUAL;

SELECT ASCII('A') FROM DUAL;

SELECT ASCII('S')+ASCII('Q')+ASCII('L')+ASCII('D') FROM DUAL;

SELECT 
CHR(70) || 
CHR(105) || 
CHR(71) || 
CHR(104) || 
CHR(84) || 
CHR(105) || 
CHR(78) || 
CHR(103) || 
'!' 
FROM DUAL;

SELECT SUBSTR('SQL Expert',5,3) from dual;

SELECT substr('SQL is a standard language for accessing and manipulating databases.',19,8) FROM DUAL;

SELECT substr('SQL is a standard language for accessing and manipulating databases.',19) FROM DUAL;

SELECT LENGTH('SQL Expert') FROM DUAL;

SELECT LENGTH('SQL is a standard language for accessing and manipulating databases.') as len_1 FROM DUAL;

SELECT TRIM('x' FROM 'xxYYZZxYZxx') FROM DUAL;

SELECT LTRIM('xxxYYZZxYZ', 'x') FROM DUAL;

SELECT RTRIM('XXYYzzXYzz', 'z') FROM DUAL;

SELECT TRIM('-' FROM '----SQL Tutorial----') FROM DUAL;

SELECT LPAD('ABC',8,'Z') FROM DUAL;

SELECT LPAD('TY',10,'P') FROM DUAL;

SELECT RPAD('ABC',8) FROM DUAL;

SELECT RPAD('SQL',8,15) FROM DUAL;

SELECT SIGN(20) FROM DUAL;

SELECT SIGN(0) FROM DUAL;

SELECT SIGN(-10) FROM DUAL;

SELECT MOD(7,3) FROM DUAL;

SELECT CEIL(28.567) FROM DUAL;

SELECT CEIL(-28.567) FROM DUAL;

SELECT FLOOR(38.567) FROM DUAL;

SELECT FLOOR(-38.567) FROM DUAL;

SELECT ROUND(38.567,2) FROM DUAL;

SELECT TRUNC(38.567,2) FROM DUAL;

SELECT SIN(1.5708) FROM DUAL;

SELECT cos(1.5708) FROM DUAL;

SELECT tan(-1.5708) FROM DUAL;

SELECT EXP(2) FROM DUAL;

SELECT EXP(5) FROM DUAL;

SELECT POWER(2,3) FROM DUAL;

SELECT SQRT(4) FROM DUAL;

SELECT LOG(10,100) FROM DUAL;

SELECT LN(10) FROM DUAL;

SELECT SYSDATE FROM DUAL;

SELECT EXTRACT(YEAR FROM DATE '2023-10-10') 
FROM DUAL;

SELECT TO_CHAR(SYSDATE,'YYYY. MON,DAY') FROM DUAL;

SELECT TO_NUMBER('888') + TO_NUMBER('111') FROM DUAL;

SELECT '2' + 1 FROM DUAL;

SELECT '4' * 2 FROM DUAL;

SELECT NVL(NULL, 'NVL-OK') FROM DUAL;

SELECT NVL(NULL, 'NVL-OK') FROM DUAL;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight NUMBER 
);

CREATE TABLE pokemons ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

INSERT INTO pokemons VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemons VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemons VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemons (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemons (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT * FROM pokemons;

SELECT 
pm_id, 
name, 
NVL(attr, '알 수 없음'), 
NVL(weight, 999) 
FROM pokemon;

SELECT 
pm_id, 
name, 
NVL(attr, '알 수 없음'), 
NVL(weight, 999) 
FROM pokemons;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

INSERT INTO pokemon (pm_id, name, weight) VALUES (86, 'Seel', 85);

SELECT NVL(NULL, 'NVL-OK') FROM DUAL;

CREATE TABLE pokemons ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight NUMBER 
);

INSERT INTO pokemons VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemons VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemons VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemons (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemons (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT * FROM pokemons;

SELECT 
pm_id, 
name, 
NVL(attr, '알 수 없음'), 
NVL(weight, 999) 
FROM pokemons;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

INSERT INTO pokemon (pm_id, name, weight) VALUES (86, 'Seel', 85);

select * from pokemon;

select * from pokemon;

SELECT 
pm_id, 
name, 
COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

SELECT 
pm_id, 
name, 
COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

drop tabel pokemon;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight VARCHAR2(20) 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', '80');

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', '15');

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

INSERT INTO pokemon (pm_id, name, weight) VALUES (86, 'Seel', '85');

select * from pokemon;

SELECT 
pm_id, 
name, 
COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

SELECT 
pm_id, 
name, 
attr, 
weight, 
COALESCE(attr, weight) 
     
FROM pokemon 
     
WHERE pm_id >= 30;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
 
   CASE attr                             -- attr 칼럼에서 
 
       WHEN 'Grass' THEN '풀 속성'         -- grass 속성인 경우 '풀 속성'으로 
 
       WHEN 'Fire' THEN '화염 속성'        -- Fire 속성인 경우 '화염 속성'으로  
 
       WHEN 'Electric' THEN '전기 속성'    -- 'Electric 속성인 경우 '전기 속성' 
 
       ELSE '노말 속성'                    -- 위 세 경우가 아니라면 '노말 속성'으로  
 
   END 
 
FROM pokemon;

SELECT name, 
 
   CASE attr                             -- attr 칼럼에서 
 
       WHEN 'Grass' THEN '풀 속성'         -- grass 속성인 경우 '풀 속성'으로 
 
       WHEN 'Fire' THEN '화염 속성'        -- Fire 속성인 경우 '화염 속성'으로  
 
       WHEN 'Electric' THEN '전기 속성'    -- 'Electric 속성인 경우 '전기 속성' 
 
       ELSE '노말 속성'                    -- 위 세 경우가 아니라면 '노말 속성'으로  
 
   END AS 속성 
 
FROM pokemon;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
 
  CASE 
 
        WHEN weight <= 30 THEN '소형' 
 
        WHEN weight <= 100 THEN '중형' 
 
        ELSE '대형' 
 
  END 
 
FROM pokemon;

SELECT name, 
 
  CASE 
 
        WHEN weight <= 30 THEN '소형' 
 
        WHEN weight <= 100 THEN '중형' 
 
        ELSE '대형' 
 
  END as 'size' 
 
FROM pokemon;

SELECT name, 
 
  CASE 
 
        WHEN weight <= 30 THEN '소형' 
 
        WHEN weight <= 100 THEN '중형' 
 
        ELSE '대형' 
 
  END as size 
 
FROM pokemon;

SELECT NVL(NULL, 'NVL-OK') FROM DUAL;

CREATE TABLE pokemons ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight NUMBER 
);

INSERT INTO pokemons VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemons VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemons VALUES (25, 'Pikachu', 'Electric', 15);

INSERT INTO pokemons (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemons (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT * FROM pokemons;

SELECT 
pm_id, 
name, 
NVL(attr, '알 수 없음'), 
NVL(weight, 999) 
FROM pokemons;

drop table pokemon;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20), 
weight VARCHAR2(20) 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', '80');

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', '15');

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

INSERT INTO pokemon (pm_id, name, weight) VALUES (86, 'Seel', '85');

select * from pokemon;

SELECT 
pm_id, 
name, 
attr, 
weight, 
COALESCE(attr, weight) 
     
FROM pokemon 
     
WHERE pm_id >= 30;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
 
   CASE attr                             -- attr 칼럼에서 
 
       WHEN 'Grass' THEN '풀 속성'         -- grass 속성인 경우 '풀 속성'으로 
 
       WHEN 'Fire' THEN '화염 속성'        -- Fire 속성인 경우 '화염 속성'으로  
 
       WHEN 'Electric' THEN '전기 속성'    -- 'Electric 속성인 경우 '전기 속성' 
 
       ELSE '노말 속성'                    -- 위 세 경우가 아니라면 '노말 속성'으로  
 
   END AS 속성 
 
FROM pokemon;

drop table pokemon;

CREATE TABLE pokemon ( 
pm_id NUMBER PRIMARY KEY NOT NULL, 
name VARCHAR2(20) NOT NULL, 
attr VARCHAR2(20) DEFAULT 'normal', 
weight NUMBER 
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
 
  CASE 
 
        WHEN weight <= 30 THEN '소형' 
 
        WHEN weight <= 100 THEN '중형' 
 
        ELSE '대형' 
 
  END AS 사이즈 
 
FROM pokemon;

SELECT name, 
 
  CASE 
 
        WHEN weight <= 30 THEN '소형' 
 
        WHEN weight <= 100 THEN '중형' 
 
        ELSE '대형' 
 
  END AS 사이즈 
 
FROM pokemon;

drop table pokemon;

CREATE TABLE pokemon ( 
 
  pm_id NUMBER PRIMARY KEY NOT NULL, 
 
  name VARCHAR2(20) NOT NULL, 
 
  attr VARCHAR2(20) DEFAULT 'normal', 
 
weight NUMBER 
 
);

​ 


INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
 
     DECODE(attr, 'Grass', '풀 속성', 'Fire', '화염 속성', 'Electric', '전기 속성', '노말 속성') 
 
FROM pokemon;

SELECT name, 
 
     DECODE(attr, 'Grass', '풀 속성', 'Fire', '화염 속성', 'Electric', '전기 속성', '노말 속성') as 속성 
 
FROM pokemon;

SELECT CASE WHEN 1 = 1 THEN 1 ELSE 0 END AS RESULT FROM DUAL;

