REM   Script: 0412_am_sqlpr2
REM   04월 12일 오전 sqlpr

DROP TABLE OLYMPIC;

DROP TABLE OLYMPIC;

CREATE TABLE OLYMPIC ( 
 
    olympic_id  NUMBER    NOT NULL, 
 
    host_city  CHAR(15) NOT NULL, 
 
    host_year  NUMBER  NOT NULL, 
 
    nation CHAR(10) NOT NULL, 
 
    history CHAR(10), 
 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
 
);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

SELECT * FROM olympic WHERE host_year BETWEEN 1980 AND 2010;

SELECT * FROM olympic ;

SELECT * FROM olympic ;

SELECT * FROM olympic  
 
WHERE host_city IN ('아테나', '로마', '파리', '런던');

SELECT * FROM olympic WHERE nation LIKE '%국';

PDATE olympic SET history = '근대 올림픽' 


UPDATE olympic SET history = '근대 올림픽' ;

UPDATE olympic SET history = '근대 올림픽'  
 
WHERE host_year > 1895;

DELETE FROM olympic WHERE host_year < 1890;

UPDATE olympic SET history = '근대 올림픽'  
 
WHERE host_year > 1895;

SELECT * FROM olympic WHERE host_year BETWEEN 1980 AND 2010;

SELECT * FROM olympic  
 
WHERE host_city IN ('아테나', '로마', '파리', '런던');

SELECT * FROM olympic WHERE nation LIKE '%국';

UPDATE olympic SET history = '근대 올림픽'  
WHERE host_year > 1895;

DROP TABLE OLYMPIC;

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

CREATE TABLE OLYMPIC ( 
 
    olympic_id  NUMBER    NOT NULL, 
 
    host_city  CHAR(15) NOT NULL, 
 
    host_year  NUMBER  NOT NULL, 
 
    nation CHAR(50) NOT NULL, 
 
    history CHAR(50), 
 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
 
);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

SELECT * FROM olympic WHERE host_year BETWEEN 1980 AND 2010;

SELECT * FROM olympic  
WHERE host_city IN ('아테나', '로마', '파리', '런던');

SELECT * FROM olympic WHERE nation LIKE '%국';

UPDATE olympic SET history = '근대 올림픽'  
WHERE host_year > 1895;

SELECT * FROM OLYMPIC;

DELETE FROM olympic WHERE host_year < 1890;

SELECT * FROM OLYMPIC;

SELECT * FROM olympic  
WHERE nation LIKE '%국';

SELECT * FROM olympic  
WHERE NATION LIKE '%국';

SELECT * 
FROM OLYMPIC 
WHERE SUBSTR(host_city, -1) = '국';

SELECT * 
FROM OLYMPIC 
WHERE SUBSTR(host_city, -1) = '국';

SELECT * FROM olympic  
WHERE NATION LIKE '%국%';

SELECT * FROM OLYMPIC;

DELETE FROM olympic WHERE host_year < 1890;

SELECT * FROM OLYMPIC;

DROP TABLE OLYMPIC;

CREATE TABLE OLYMPIC ( 
 
    olympic_id  NUMBER    NOT NULL, 
 
    host_city  VARCHAR2(15) NOT NULL, 
 
    host_year  NUMBER  NOT NULL, 
 
    nation VARCHAR2(50) NOT NULL, 
 
    history VARCHAR2(50), 
 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
 
);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

SELECT * FROM olympic WHERE host_year BETWEEN 1980 AND 2010;

SELECT * FROM olympic  
WHERE host_city IN ('아테나', '로마', '파리', '런던');

SELECT * FROM olympic  
WHERE host_city IN ('아테나', '로마', '파리', '런던');

SELECT * FROM olympic  
WHERE NATION LIKE '%국';

UPDATE olympic SET history = '근대 올림픽'  
WHERE host_year > 1895;

SELECT * FROM OLYMPIC;

DELETE FROM olympic WHERE host_year < 1890;

SELECT * FROM OLYMPIC;

DROP TABLE OLYMPIC;

CREATE TABLE OLYMPIC ( 
    olympic_id  NUMBER    NOT NULL, 
    host_city  VARCHAR2(50) NOT NULL, 
    host_year  NUMBER  NOT NULL, 
    nation VARCHAR2(50) NOT NULL, 
    season VARCHAR2(50) NOT NULL, 
    history VARCHAR2(50), 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (1, '밴쿠버', 2010, '캐나다', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (2, '나가노', 1998, '일본', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (3, '소치', 2014, '러시아', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (4, '서울', 1988, '대한민국', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (5, '바르셀로나', 1992, '스페인', 'summer', NULL);

SELECT * FROM OLYMPIC;

SELECT * FROM olympic  
 
WHERE host_year > 2000 AND season = 'winter';

SELECT * FROM olympic 
 
WHERE nation LIKE '%국' OR host_year BETWEEN 1980 AND 2000;

SELECT * FROM olympic  
 
WHERE host_year > 2000 AND season = 'winter';

SELECT * FROM olympic 
 
WHERE nation LIKE '%아%' AND host_year > 1989;

DROP TABLE OLYMPIC;

CREATE TABLE OLYMPIC ( 
    olympic_id  NUMBER    NOT NULL, 
    host_city  VARCHAR2(50) NOT NULL, 
    host_year  NUMBER  NOT NULL, 
    nation VARCHAR2(50) NOT NULL, 
    season VARCHAR2(50) NOT NULL, 
    history VARCHAR2(50), 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
);

NSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (1, '도쿄', 2020, '일본', 'summer', '근대 올림픽'); 


INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (2, '베이징', 2008, '중국', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (3, '런던', 2012, '영국', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (4, '밴쿠버', 2010, '캐나다', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (5, '리우데자네이루', 2016, '브라질', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (6, '바르셀로나', 1992, '스페인', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (7, '서울', 1988, '대한민국', 'summer', NULL);

SELECT * FROM OLYMPIC;

DROP TABLE OLYMPIC;

CREATE TABLE OLYMPIC ( 
    olympic_id  NUMBER    NOT NULL, 
    host_city  VARCHAR2(50) NOT NULL, 
    host_year  NUMBER  NOT NULL, 
    nation VARCHAR2(50) NOT NULL, 
    season VARCHAR2(50) NOT NULL, 
    history VARCHAR2(50), 
    CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (1, '도쿄', 2020, '일본', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (2, '베이징', 2008, '중국', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (3, '런던', 2012, '영국', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (4, '밴쿠버', 2010, '캐나다', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (5, '리우데자네이루', 2016, '브라질', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (6, '바르셀로나', 1992, '스페인', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (7, '서울', 1988, '대한민국', 'summer', NULL);

SELECT * FROM OLYMPIC;

SELECT * FROM olympic 
WHERE season != 'winter';

SELECT * FROM olympic 
WHERE nation NOT IN ('미국', '브라질', '독일', '중국');

SELECT * FROM olympic 
WHERE history IS NOT NULL;

SELECT * FROM olympic 
WHERE nation NOT LIKE '%아%';

