-----------------------------------------------------------------------
-- 국가 테이블 & 데이터
-----------------------------------------------------------------------

CREATE TABLE tblcountry
(
	name VARCHAR2(30) NOT NULL PRIMARY KEY, -- 국가명
	capital VARCHAR2(30) NULL, -- 수도
	population NUMBER NULL, -- 인구수
	continent VARCHAR2(2) NULL, -- 대륙(AS, NA, SA..)
	area NUMBER NULL -- 면적
);

INSERT INTO tblCountry VALUES ('대한민국','서울',4405,'AS',10);
INSERT INTO tblCountry VALUES ('중국','베이징',120660,'AS',959);
INSERT INTO tblCountry VALUES ('일본','도쿄',12461,'AS',37);
INSERT INTO tblCountry VALUES ('미국','워싱턴',24963,'SA',936);
INSERT INTO tblCountry VALUES ('영국','London',5741,'EU',24);
INSERT INTO tblCountry VALUES ('이집트','카이로',5969,'AF',99);
INSERT INTO tblCountry VALUES ('오스트레일리아','Canberra',1787,'AU',768);
INSERT INTO tblCountry VALUES ('칠레','산티아고',1339,'SA',75);
INSERT INTO tblCountry VALUES ('우루과이','몬테비디오',317,'SA',17);
INSERT INTO tblCountry VALUES ('아르헨티나','부에노스아이레스',3388,'SA',278);
INSERT INTO tblCountry VALUES ('인도네시아','자카르타',19134,'AS',191);
INSERT INTO tblCountry VALUES ('네덜란드','암스테르담',1476,'EU',4);
INSERT INTO tblCountry VALUES ('케냐','나이로비',NULL,'AF',58);
INSERT INTO tblCountry VALUES ('벨기에2','브뤼셀',1012,'EU',3);

COMMIT;



-----------------------------------------------------------------------
-- 코미디언 테이블 & 데이터
-----------------------------------------------------------------------
CREATE TABLE tblComedian
(
	first varchar2(20) not null,
	last varchar2(20) not null,
	gender varchar2(1) check(gender in ('m', 'f')) not null,
	height number not null,
	weight number not null,
	nick varchar2(50) not null
);

INSERT INTO tblComedian VALUES ('재석', '유', 'm', 178, 64, '메뚜기');
INSERT INTO tblComedian VALUES ('명수', '박', 'm', 172, 66, '하찮은');
INSERT INTO tblComedian VALUES ('준하', '정', 'm', 184, 89, '정중앙');
INSERT INTO tblComedian VALUES ('동훈', '하', 'm', 169, 65, '상꼬마');
INSERT INTO tblComedian VALUES ('형돈', '정', 'm', 173, 85, '미존개오');
INSERT INTO tblComedian VALUES ('나래', '박', 'f', 148, 58, '박가래');
INSERT INTO tblComedian VALUES ('국주', '이', 'f', 167, 92, '김태우');
INSERT INTO tblComedian VALUES ('세호', '조', 'm', 167, 82, '프로 억울러');
INSERT INTO tblComedian VALUES ('준현', '김', 'm', 182, 113, '백돼지');
INSERT INTO tblComedian VALUES ('민상', '유', 'm', 183, 129, '이십끼');

COMMIT;





-----------------------------------------------------------------------
-- 이름 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE TBLNAME
(
	first varchar2(20) not null,
	last varchar2(20) not null,
	gender varchar2(1) check(gender in ('m', 'f')) not null,
	height number not null,
	weight number not null,
	nick varchar2(50) not null
);

INSERT INTO TBLNAME VALUES ('재석', '유', 'm', 178, 64, '메뚜기');
INSERT INTO TBLNAME VALUES ('명수', '박', 'm', 172, 66, '하찮은');
INSERT INTO TBLNAME VALUES ('준하', '정', 'm', 184, 89, '정중앙');
INSERT INTO TBLNAME VALUES ('동훈', '하', 'm', 169, 65, '상꼬마');
INSERT INTO TBLNAME VALUES ('형돈', '정', 'm', 173, 85, '미존개오');
INSERT INTO TBLNAME VALUES ('나래', '박', 'f', 148, 58, '박가래');
INSERT INTO TBLNAME VALUES ('국주', '이', 'f', 167, 92, '김태우');
INSERT INTO TBLNAME VALUES ('세호', '조', 'm', 167, 82, '프로 억울러');
INSERT INTO TBLNAME VALUES ('준현', '김', 'm', 182, 113, '백돼지');
INSERT INTO TBLNAME VALUES ('민상', '유', 'm', 183, 129, '이십끼');

COMMIT;








-----------------------------------------------------------------------
-- 급여 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE tblsalary
(
	name varchar2(30) not null,
	m1 number not null,
	m2 number not null,
	m3 number not null,
	m4 number not null,
	m5 number not null,
	m6 number not null,
	m7 number not null,
	m8 number not null,
	m9 number not null,
	m10 number not null,
	m11 number not null,
	m12 number not null
);

INSERT INTO tblsalary VALUES ('홍길동', 200, 220, 200, 210, 190, 180, 190, 200, 200, 220, 240, 250);
INSERT INTO tblsalary VALUES ('아무개', 150, 160, 160, 150, 160, 180, 190, 170, 160, 150, 170, 190);
INSERT INTO tblsalary VALUES ('테스트', 220, 230, 250, 220, 220, 230, 250, 230, 220, 250, 260, 240);
INSERT INTO tblsalary VALUES ('호호호', 260, 280, 260, 250, 290, 280, 290, 260, 290, 250, 280, 260);
INSERT INTO tblsalary VALUES ('무명씨', 110, 120, 100, 110, 190, 180, 190, 100, 100, 120, 140, 150);

COMMIT;







-----------------------------------------------------------------------
-- 인사 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE tblinsa(
        num NUMBER(5) NOT NULL CONSTRAINT tblinsa_pk PRIMARY KEY
       ,name VARCHAR2(20) NOT NULL
       ,ssn  VARCHAR2(14) NOT NULL
       ,ibsaDate DATE     NOT NULL
       ,city  VARCHAR2(10)
       ,tel   VARCHAR2(15)
       ,buseo VARCHAR2(15) NOT NULL
       ,jikwi VARCHAR2(15) NOT NULL
       ,basicPay NUMBER(10) NOT NULL
       ,sudang NUMBER(10) NOT NULL
);

INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1001, '홍길동', '771212-1022432', '1998-10-11', '서울', '011-2356-4528', '기획부',
   '부장', 2610000, 200000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1002, '이순신', '801007-1544236', '2000-11-29', '경기', '010-4758-6532', '총무부',
   '사원', 1320000, 200000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1003, '이순애', '770922-2312547', '1999-02-25', '인천', '010-4231-1236', '개발부',
   '부장', 2550000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1004, '김정훈', '790304-1788896', '2000-10-01', '전북', '019-5236-4221', '영업부',
   '대리', 1954200, 170000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1005, '한석봉', '811112-1566789', '2004-08-13', '서울', '018-5211-3542', '총무부',
   '사원', 1420000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1006, '이기자', '780505-2978541', '2002-02-11', '인천', '010-3214-5357', '개발부',
   '과장', 2265000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1007, '장인철', '780506-1625148', '1998-03-16', '제주', '011-2345-2525', '개발부',
   '대리', 1250000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1008, '김영년', '821011-2362514', '2002-04-30', '서울', '016-2222-4444', '홍보부',
'사원', 950000 , 145000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1009, '나윤균', '810810-1552147', '2003-10-10', '경기', '019-1111-2222', '인사부',
   '사원', 840000 , 220400);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1010, '김종서', '751010-1122233', '1997-08-08', '부산', '011-3214-5555', '영업부',
   '부장', 2540000, 130000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1011, '유관순', '801010-2987897', '2000-07-07', '서울', '010-8888-4422', '영업부',
   '사원', 1020000, 140000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1012, '정한국', '760909-1333333', '1999-10-16', '강원', '018-2222-4242', '홍보부',
   '사원', 880000 , 114000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1013, '조미숙', '790102-2777777', '1998-06-07', '경기', '019-6666-4444', '홍보부',
   '대리', 1601000, 103000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1014, '황진이', '810707-2574812', '2002-02-15', '인천', '010-3214-5467', '개발부',
   '사원', 1100000, 130000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1015, '이현숙', '800606-2954687', '1999-07-26', '경기', '016-2548-3365', '총무부',
   '사원', 1050000, 104000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1016, '이상헌', '781010-1666678', '2001-11-29', '경기', '010-4526-1234', '개발부',
   '과장', 2350000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1017, '엄용수', '820507-1452365', '2000-08-28', '인천', '010-3254-2542', '개발부',
   '사원', 950000 , 210000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1018, '이성길', '801028-1849534', '2004-08-08', '전북', '018-1333-3333', '개발부',
   '사원', 880000 , 123000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1019, '박문수', '780710-1985632', '1999-12-10', '서울', '017-4747-4848', '인사부',
   '과장', 2300000, 165000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1020, '유영희', '800304-2741258', '2003-10-10', '전남', '011-9595-8585', '자재부',
   '사원', 880000 , 140000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1021, '홍길남', '801010-1111111', '2001-09-07', '경기', '011-9999-7575', '개발부',
   '사원', 875000 , 120000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1022, '이영숙', '800501-2312456', '2003-02-25', '전남', '017-5214-5282', '기획부',
   '대리', 1960000, 180000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1023, '김인수', '731211-1214576', '1995-02-23', '서울', NULL           , '영업부',
   '부장', 2500000, 170000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1024, '김말자', '830225-2633334', '1999-08-28', '서울', '011-5248-7789', '기획부',
   '대리', 1900000, 170000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1025, '우재옥', '801103-1654442', '2000-10-01', '서울', '010-4563-2587', '영업부',
   '사원', 1100000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1026, '김숙남', '810907-2015457', '2002-08-28', '경기', '010-2112-5225', '영업부',
   '사원', 1050000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1027, '김영길', '801216-1898752', '2000-10-18', '서울', '019-8523-1478', '총무부',
   '과장', 2340000, 170000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1028, '이남신', '810101-1010101', '2001-09-07', '제주', '016-1818-4848', '인사부',
   '사원', 892000 , 110000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1029, '김말숙', '800301-2020202', '2000-09-08', '서울', '016-3535-3636', '총무부',
   '사원', 920000 , 124000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1030, '정정해', '790210-2101010', '1999-10-17', '부산', '019-6564-6752', '총무부',
   '과장', 2304000, 124000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1031, '지재환', '771115-1687988', '2001-01-21', '서울', '019-5552-7511', '기획부',
   '부장', 2450000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1032, '심심해', '810206-2222222', '2000-05-05', '전북', '016-8888-7474', '자재부',
   '사원', 880000 , 108000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1033, '김미나', '780505-2999999', '1998-06-07', '서울', '011-2444-4444', '영업부',
   '사원', 1020000, 104000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1034, '이정석', '820505-1325468', '2005-09-26', '경기', '011-3697-7412', '기획부',
   '사원', 1100000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1035, '정영희', '831010-2153252', '2002-05-16', '인천', NULL           , '개발부',
   '사원', 1050000, 140000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1036, '이재영', '701126-2852147', '2003-08-10', '서울', '011-9999-9999', '자재부',
   '사원', 960400 , 190000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1037, '최석규', '770129-1456987', '1998-10-15', '인천', '011-7777-7777', '홍보부',
   '과장', 2350000, 187000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1038, '손인수', '791009-2321456', '1999-11-15', '부산', '010-6542-7412', '영업부',
   '대리', 2000000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1039, '고순정', '800504-2000032', '2003-12-28', '경기', '010-2587-7895', '영업부',
   '대리', 2010000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1040, '박세열', '790509-1635214', '2000-09-10', '경북', '016-4444-7777', '인사부',
   '대리', 2100000, 130000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1041, '문길수', '721217-1951357', '2001-12-10', '충남', '016-4444-5555', '자재부',
   '과장', 2300000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1042, '채정희', '810709-2000054', '2003-10-17', '경기', '011-5125-5511', '개발부',
   '사원', 1020000, 200000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1043, '양미옥', '830504-2471523', '2003-09-24', '서울', '016-8548-6547', '영업부',
   '사원', 1100000, 210000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1044, '지수환', '820305-1475286', '2004-01-21', '서울', '011-5555-7548', '영업부',
   '사원', 1060000, 220000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1045, '홍원신', '690906-1985214', '2003-03-16', '전북', '011-7777-7777', '영업부',
   '사원', 960000 , 152000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1046, '허경운', '760105-1458752', '1999-05-04', '경남', '017-3333-3333', '총무부',
   '부장', 2650000, 150000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1047, '산마루', '780505-1234567', '2001-07-15', '서울', '018-0505-0505', '영업부',
   '대리', 2100000, 112000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1048, '이기상', '790604-1415141', '2001-06-07', '전남', NULL           , '개발부',
   '대리', 2050000, 106000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1049, '이미성', '830908-2456548', '2000-04-07', '인천', '010-6654-8854', '개발부',
   '사원', 1300000, 130000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1050, '이미인', '810403-2828287', '2003-06-07', '경기', '011-8585-5252', '홍보부',
   '대리', 1950000, 103000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1051, '권영미', '790303-2155554', '2000-06-04', '서울', '011-5555-7548', '영업부',
   '과장', 2260000, 104000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1052, '권옥경', '820406-2000456', '2000-10-10', '경기', '010-3644-5577', '기획부',
   '사원', 1020000, 105000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1053, '김싱식', '800715-1313131', '1999-12-12', '전북', '011-7585-7474', '자재부',
   '사원', 960000 , 108000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1054, '정상호', '810705-1212141', '1999-10-16', '강원', '016-1919-4242', '홍보부',
   '사원', 980000 , 114000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1055, '정한나', '820506-2425153', '2004-06-07', '서울', '016-2424-4242', '영업부',
   '사원', 1000000, 104000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1056, '전용재', '800605-1456987', '2004-08-13', '인천', '010-7549-8654', '영업부',
   '대리', 1950000, 200000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1057, '이미경', '780406-2003214', '1998-02-11', '경기', '016-6542-7546', '자재부',
   '부장', 2520000, 160000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1058, '김신제', '800709-1321456', '2003-08-08', '인천', '010-2415-5444', '기획부',
   '대리', 1950000, 180000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1059, '임수봉', '810809-2121244', '2001-10-10', '서울', '011-4151-4154', '개발부',
   '사원', 890000 , 102000);
INSERT INTO tblinsa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1060, '김신애', '810809-2111111', '2001-10-10', '서울', '011-4151-4444', '개발부',
   '사원', 900000 , 102000);

COMMIT;









-----------------------------------------------------------------------
-- 다이어리 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE tbldiary
(
	seq number primary key,
	subject varchar2(500) not null,
	weather varchar2(10) not null,
	regdate date not null
);

INSERT INTO tbldiary VALUES (1, '오라클을 처음으로 설치했다', '맑음', '2018-01-18');
INSERT INTO tbldiary VALUES (2, '자바 스터디 하는 날. 저녁에 카페에서 모임', '맑음', '2018-01-19');
INSERT INTO tbldiary VALUES (3, '에러가 나는데 어디서 나는지 모르겠다;;', '흐림', '2018-01-20');
INSERT INTO tbldiary VALUES (4, '영화보러 갔다가 자다왔다.', '흐림', '2018-01-22');
INSERT INTO tbldiary VALUES (5, '버거킹에 가서 와퍼 먹었다.', '맑음', '2018-01-18');
INSERT INTO tbldiary VALUES (6, '본체랑 마우스랑 키보드 바꾼날~', '비', '2018-01-18');
INSERT INTO tbldiary VALUES (7, '처음으로 코딩하며 잠들다!!', '맑음', '2018-01-20');
INSERT INTO tbldiary VALUES (8, '지각 안하고 가까스로 세이프..', '맑음', '2018-01-25');
INSERT INTO tbldiary VALUES (9, '손끝에 굳은살이 베기기 시작했다.', '비', '2018-01-26');
INSERT INTO tbldiary VALUES (10, '왜 에러는 내 눈에만 안보일까?', '흐림', '2018-01-28');

COMMIT;










-----------------------------------------------------------------------
-- 매출 장부 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE tblhousekeeping
(
	seq number primary key,
	item varchar2(50) not null,
	price number not null,
	qty number not null,
	buydate date not null,
	memo varchar2(1000) null
);



INSERT INTO tblhousekeeping VALUES (1, '양말', 2000, 5, '2018-08-05', null);
INSERT INTO tblhousekeeping VALUES (2, '티셔츠', 5000, 1, '2018-08-06', null);
INSERT INTO tblhousekeeping VALUES (3, '수저세트', 10000, 4, '2018-08-07', null);
INSERT INTO tblhousekeeping VALUES (4, '컵', 3000, 2, '2018-08-08', null);
INSERT INTO tblhousekeeping VALUES (5, '행주', 1000, 10, '2018-08-09', null);
INSERT INTO tblhousekeeping VALUES (6, '도마', 5000, 1, '2018-08-09', null);
INSERT INTO tblhousekeeping VALUES (7, '식칼', 15000, 1, '2018-08-10', null);
INSERT INTO tblhousekeeping VALUES (8, '위생봉투', 1000, 5, '2018-08-10', null);
INSERT INTO tblhousekeeping VALUES (9, '종이컵', 100, 100, '2018-08-10', null);
INSERT INTO tblhousekeeping VALUES (10, '물티슈', 1000, 50, '2018-08-13', null);
INSERT INTO tblhousekeeping VALUES (11, '건전지', 1000, 20, '2018-08-15', null);
INSERT INTO tblhousekeeping VALUES (12, '노트', 1400, 5, '2018-08-18', null);
INSERT INTO tblhousekeeping VALUES (13, '이쑤시개', 10, 3000, '2018-08-18', null);
INSERT INTO tblhousekeeping VALUES (14, '손톱깎이', 3000, 1, '2018-08-19', null);
INSERT INTO tblhousekeeping VALUES (15, '세제', 9000, 2, '2018-08-19', null);
INSERT INTO tblhousekeeping VALUES (16, '냄비받침대', 3000, 2, '2018-08-20', null);
INSERT INTO tblhousekeeping VALUES (17, '슬리퍼', 8000, 3, '2018-08-20', null);
INSERT INTO tblhousekeeping VALUES (18, '치약', 4000, 4, '2018-08-21', null);
INSERT INTO tblhousekeeping VALUES (19, '칫솔', 1700, 9, '2018-08-21', null);
INSERT INTO tblhousekeeping VALUES (20, '비누', 2500, 6, '2018-08-21', null);

COMMIT;









-----------------------------------------------------------------------
-- 남자 여자 테이블 & 데이터
-----------------------------------------------------------------------
drop table tblmen;
drop table tblwomen;


CREATE TABLE tblmen
(
	name varchar2(30) primary key,
	age number not null,
	height number null,
	weight number null,
	couple varchar2(30) null
);

CREATE TABLE tblwomen
(
	name varchar2(30) primary key,
	age number not null,
	height number null,
	weight number null,
	couple varchar2(30) null
);


INSERT INTO tblmen VALUES ('홍길동', 25, 180, 70, '장도연');
INSERT INTO tblmen VALUES ('아무개', 22, 175, NULL, '이세영');
INSERT INTO tblmen VALUES ('하하하', 27, NULL, 80, NULL);
INSERT INTO tblmen VALUES ('무명씨', 21, 177, 72, NULL);
INSERT INTO tblmen VALUES ('유재석', 29, NULL, NULL, '김숙');
INSERT INTO tblmen VALUES ('박명수', 30, 170, NULL, '김지민');
INSERT INTO tblmen VALUES ('정준하', 31, 183, NULL, '신보라');
INSERT INTO tblmen VALUES ('정형돈', 28, NULL, 92, NULL);
INSERT INTO tblmen VALUES ('양세형', 22, 166, 55, '김민경');
INSERT INTO tblmen VALUES ('조세호', 24, 165, 58, '오나미');

INSERT INTO tblwomen VALUES ('박나래', 23, 150, 55, NULL);
INSERT INTO tblwomen VALUES ('장도연', 28, 177, 65, '홍길동');
INSERT INTO tblwomen VALUES ('김지민', 30, 160, NULL, '박명수');
INSERT INTO tblwomen VALUES ('김숙', 34, 158, NULL, '유재석');
INSERT INTO tblwomen VALUES ('오나미', 27, NULL, NULL, '조세호');
INSERT INTO tblwomen VALUES ('김민경', 22, 169, 88, '양세형');
INSERT INTO tblwomen VALUES ('홍현희', 20, 158, 75, NULL);
INSERT INTO tblwomen VALUES ('신보라', 26, 170, 60, '정준하');
INSERT INTO tblwomen VALUES ('이세영', 28, 163, NULL, '아무개');
INSERT INTO tblwomen VALUES ('신봉선', 27, 162, NULL, NULL);


COMMIT;









-----------------------------------------------------------------------
-- 할일 테이블 & 데이터
-----------------------------------------------------------------------


CREATE TABLE tbltodo
(
	seq number primary key,
	title varchar2(200) not null,
	adddate date not null,
	completedate date null
);

INSERT INTO tbltodo VALUES (1, '할일 계획 세우기', to_date('2018-08-01 06:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-01 18:30:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (2, '마트 장보기', to_date('2018-08-03 13:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-04 20:28:30', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (3, '자바 콘솔 프로젝트 에러잡기', to_date('2018-08-11 14:22:24', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-11 17:32:54', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (4, '내방 청소하기', to_date('2018-08-08 22:00:00', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (5, '강아지 산책시키기', to_date('2018-08-07 10:11:34', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (6, '다이어트 시작하기', to_date('2018-08-01 12:53:20', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (7, '데이터베이스 책 대여하기', to_date('2018-08-02 11:34:52', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-15 12:10:15', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (8, '노트북 포맷하기', to_date('2018-08-02 19:32:12', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-02 19:50:22', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (9, '치과 예약하기', to_date('2018-08-04 11:22:33', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-08 12:32:02', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (10, '아마존에서 키보드 직구하기', to_date('2018-08-08 09:21:11', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (11, '스타벅스 다이어리 예약하기', to_date('2018-08-02 17:23:43', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-03 15:43:21', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (12, '헌혈하기', to_date('2018-08-09 23:33:23', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-12 15:48:52', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (13, '친구에게 전화하기', to_date('2018-08-09 14:42:21', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-09 15:32:34', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (14, '비행기 티켓 예약하기', to_date('2018-08-06 12:23:53', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-11 09:46:22', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (15, '아르바이트 계약서 작성하기', to_date('2018-08-12 12:30:23', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-12 15:32:45', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (16, '과제 제출하기', to_date('2018-08-10 15:03:21', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (17, 'AS 센터 방문하기', to_date('2018-08-11 22:44:22', 'yyyy-mm-dd hh24:mi:ss'), to_date('2018-08-12 16:30:52', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO tbltodo VALUES (18, '스터디 그룹 짜기', to_date('2018-08-03 22:10:20', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (19, '운전 면허 갱신하기', to_date('2018-08-06 21:21:02', 'yyyy-mm-dd hh24:mi:ss'), NULL);
INSERT INTO tbltodo VALUES (20, '헬스 등록하기', to_date('2018-08-05 19:24:42', 'yyyy-mm-dd hh24:mi:ss'), NULL);

COMMIT;









-----------------------------------------------------------------------
-- 동물 테이블 & 데이터
-----------------------------------------------------------------------


create table tblZoo (
	seq number primary key,
	name varchar2(100) not null, --이름
	family varchar2(100) not null, --종류(어류, 양서류, 파충류, 조류, 포유류)
	leg number(2) not null, --다리수
	wing varchar2(1) check(wing in ('y', 'n')) not null, --날개(y,n)
	fly varchar2(1) check(fly in ('y', 'n')) not null, --날다(y,n)
	born varchar2(20) check(born in ('egg', 'young')) not null, --태생(알,새끼)
	breath varchar2(20) check(breath in ('gill', 'lung', 'skin')) not null, --호흡(아가미,폐,피부)
	thermo varchar2(20) check(thermo in ('constant', 'variable')) not null, --체온(항온,변온)
	sizeof varchar2(20) check(sizeof in ('small', 'medium', 'large')) not null --크기(소,중,대)
);

create sequence zoo_seq;

--insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
--	values (zoo_seq.nextval, '', '', , '', '', '', '', '', '');
	
--select * from tblZoo;

insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '대구', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '송사리', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '고등어', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '연어', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '날치', '어류', 0, 'y', 'y', 'egg', 'gill', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '돔', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '가다랑어', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '개복치', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '멸치', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '청새치', '어류', 0, 'n', 'n', 'egg', 'gill', 'variable', 'large');
	

insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '두꺼비', '양서류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '개구리', '양서류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '도룡뇽', '양서류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '청개구리', '양서류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '영원', '양서류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');
	
	
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '엘리게이터', '파충류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '보아뱀', '파충류', 0, 'n', 'n', 'egg', 'lung', 'variable', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '도마뱀', '파충류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '카멜레온', '파충류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '코브라', '파충류', 0, 'n', 'n', 'egg', 'lung', 'variable', 'medium');	
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '거북이', '파충류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '남생이', '파충류', 4, 'n', 'n', 'egg', 'lung', 'variable', 'small');



insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '벌새', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '제비', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '딱따구리', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '펭귄', '조류', 2, 'y', 'n', 'egg', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '독수리', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '닭', '조류', 2, 'y', 'n', 'egg', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '참새', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '신천옹', '조류', 2, 'y', 'y', 'egg', 'lung', 'constant', 'large');


insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '돼지', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '양', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '말', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '코끼리', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '원숭이', '포유류', 2, 'n', 'n', 'young', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '고래', '포유류', 0, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '고슴도치', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '호랑이', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '바다표범', '포유류', 0, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '돌고래', '포유류', 0, 'n', 'n', 'young', 'lung', 'constant', 'medium');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '햄스터', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '토끼', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'small');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '캥거루', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'large');
insert into tblZoo (seq, name, family, leg, wing, fly, born, breath, thermo, sizeof)
	values (zoo_seq.nextval, '돼지', '포유류', 4, 'n', 'n', 'young', 'lung', 'constant', 'medium');





-----------------------------------------------------------------------
-- 주소록 테이블 & 데이터
-----------------------------------------------------------------------

create table tblAddressBook (
	seq number primary key,
	name varchar2(20) not null,
	gender varchar2(1) check(gender in ('m', 'f')) not null,
	age number not null, 
	height number(3) null, 
	weight number(5,1) null, 
	email varchar2( 100) null,	
	tel varchar2(15) null, 
	job varchar2(30) not null, 
	zipcode varchar2(5) not null, 
	address varchar2(100) not null, 
	hometown varchar2(50) not null 
);

create sequence addressbook_seq;




insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최민기', 'm', 32, 160, 74, 'behavior@gmail.com', '010-8296-4828', '학생', '17548', '경기도 안성시 공도읍 문터1길 6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은률', 'm', 22, 179, 76, 'whole@daum.net', '010-7145-3786', '학생', '63526', '제주특별자치도 서귀포시 안덕면 병악로404번길 6-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대율', 'm', 33, 167, 64, 'lead@naver.com', '010-4858-3917', '보험계리인', '11637', '경기도 의정부시 신흥로106번길 4 ~ 52-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강정희', 'f', 46, 158, 61, 'staff@daum.net', '010-1699-1071', '취업준비생', '05399', '서울특별시 강동구 성내로14길 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박채하', 'f', 49, 168, 57, 'problem@yahoo.com', '010-6420-1673', '학생', '05361', '서울특별시 강동구 진황도로 145 ~ 151-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주해윤', 'f', 44, 168, 59, 'movie@daum.net', '010-6243-7724', '프로게이머', '05073', '서울특별시 광진구 아차산로34길 5 ~ 43', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강은선', 'f', 20, 154, 42, 'art@live.com', '010-3376-7124', '매표원', '06249', '서울특별시 강남구 역삼로 146 ~ 164', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '송여혜', 'f', 45, 174, 66, 'already@naver.com', '010-2582-6562', '금융자산운용가', '08317', '서울특별시 구로구 구로동로7다길 7 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다효', 'f', 27, 157, 52, 'answer_area@live.com', '010-8183-7918', '보험계리인', '03974', '서울특별시 마포구 성미산로15길 80', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박루현', 'f', 34, 165, 59, 'bank_well@daum.net', '010-5923-4942', '취업준비생', '04011', '서울특별시 마포구 포은로6길 25 ~ 39', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하다훈', 'm', 42, 175, 60, 'their@live.com', '010-4936-3469', '성우', '04055', '서울특별시 마포구 홍익로 4 ~ 20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이설연', 'f', 31, 155, 44, 'nice@live.com', '010-5997-4165', '선물중개인', '61189', '광주광역시 북구 호동로15번길 6 ~ 8', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대현', 'm', 22, 167, 70, 'north@naver.com', '010-9560-2300', '백수', '01203', '서울특별시 강북구 솔샘로60길 13-10', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원영', 'f', 42, 170, 69, 'sell@naver.com', '010-7181-4008', '학생', '08704', '서울특별시 관악구 조원로 143 ~ 183', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤태', 'm', 19, 185, 75, 'research@naver.com', '010-3182-6543', '중식요리사', '01051', '서울특별시 강북구 노해로26길 5 ~ 17', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은성', 'm', 37, 177, 67, 'help@naver.com', '010-5703-5804', '학생', '35077', '대전광역시 중구 학고개로47번길 2 ~ 16', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석송빈', 'f', 21, 155, 46, 'style@yahoo.com', '010-8014-9551', '취업준비생', '48952', '부산광역시 중구 광복중앙로 2', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다해', 'f', 42, 168, 40, 'eat@yahoo.com', '010-7065-7392', '감정평가사', '08850', '서울특별시 관악구 문성로 120-5 ~ 120-13', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백다환', 'm', 24, 186, 61, 'across@live.com', '010-1232-7964', '백수', '61960', '광주광역시 서구 상무화원로 1 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한슬', 'f', 47, 162, 58, 'property@naver.com', '010-6414-9031', '학생', '06623', '서울특별시 서초구 서운로 115', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁윤수', 'm', 39, 180, 88, 'close@daum.net', '010-3099-6793', '극작가', '01819', '서울특별시 노원구 공릉로 144 ~ 162', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신원재', 'm', 27, 164, 67, 'federal@yahoo.com', '010-4148-4313', '취업준비생', '03974', '서울특별시 마포구 성미산로15길 74', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은성', 'm', 38, 173, 71, 'stay@live.com', '010-5261-1084', '레크리에이션강사', '01219', '서울특별시 강북구 도봉로10나길 4 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지율', 'f', 34, 151, 68, 'might@gmail.com', '010-1257-8980', '취업준비생', '63171', '제주특별자치도 제주시 서사로5길 1 ~ 22', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박정안', 'f', 36, 158, 42, 'look@gmail.com', '010-4477-3196', '취업준비생', '61972', '광주광역시 서구 화운로199번길 15 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민로훈', 'm', 19, 167, 78, 'call@gmail.com', '010-1036-1898', '증권투자상담사', '35063', '대전광역시 중구 범골로 3 ~ 29', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤일', 'm', 38, 187, 61, 'free@daum.net', '010-9556-8824', '회계사', '04909', '서울특별시 광진구 긴고랑로13길 5 ~ 42', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은찬', 'm', 22, 181, 85, 'each@naver.com', '010-4178-1869', '건물주', '63621', '제주특별자치도 서귀포시 남원읍 남원체육관로 227 ~ 345', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동율', 'm', 32, 173, 79, 'understand_picture@gmail.com', '010-9817-1345', '포토그래퍼', '61959', '광주광역시 서구 상무평화로 62 ~ 64', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최노영', 'f', 28, 154, 52, 'trial@live.com', '010-6772-9600', '학생', '18294', '경기도 화성시 봉담읍 매봉로123번길 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이지혁', 'm', 24, 161, 78, 'future@gmail.com', '010-3969-3643', '경찰', '08814', '서울특별시 관악구 대학7길 3 ~ 53', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신다훈', 'm', 34, 165, 85, 'travel@naver.com', '010-6011-1756', '시인', '06170', '서울특별시 강남구 봉은사로108길 3-6 ~ 5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김요원', 'f', 25, 158, 66, 'movie@gmail.com', '010-5777-2378', '산부인과의', '08317', '서울특별시 구로구 구로동로7라길 2 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대현', 'm', 37, 162, 70, 'it@yahoo.com', '010-6694-8809', '감정평가사', '06983', '서울특별시 동작구 현충로10길 101 ~ 109', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤혜', 'f', 26, 152, 50, 'likely@live.com', '010-7947-9261', '취업준비생', '34411', '대전광역시 대덕구 계족로564번길 5 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신혜수', 'f', 39, 161, 47, 'half@naver.com', '010-8788-9146', '학생', '08654', '서울특별시 금천구 시흥대로12길 10 ~ 36', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '도지민', 'm', 21, 186, 87, 'knowledge@gmail.com', '010-7667-7874', '건축공학기술자', '05105', '서울특별시 광진구 자양로3가길 3 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤성', 'm', 22, 172, 63, 'leave@live.com', '010-4189-6559', '기자', '05226', '서울특별시 강동구 동남로83길 2 ~ 44', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박지후', 'm', 31, 180, 69, 'take@naver.com', '010-7294-2820', '해양환경기사', '01113', '서울특별시 강북구 덕릉로24길 6 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연재', 'm', 41, 163, 68, 'dream@daum.net', '010-1316-9268', '의무기록사', '10109', '경기도 김포시 장릉로 133', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민우진', 'm', 46, 177, 67, 'town@gmail.com', '010-9283-9537', '취업준비생', '01811', '서울특별시 노원구 공릉로 232', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신슬희', 'f', 49, 165, 41, 'thus@yahoo.com', '010-3104-3492', '취업준비생', '12419', '경기도 가평군 가평읍 가화로 36 ~ 124', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동언', 'm', 27, 174, 66, 'true@live.com', '010-2104-4892', '직업상담사', '34995', '대전광역시 중구 문화로46번길 6 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석승아', 'f', 34, 168, 68, 'compare_place@yahoo.com', '010-4540-5608', '공인중개사', '04994', '서울특별시 광진구 천호대로104길 19 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지애', 'f', 39, 178, 63, 'attack@gmail.com', '010-9810-3309', '학생', '61751', '광주광역시 남구 압촌1길 1 ~ 12', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이애린', 'f', 46, 156, 42, 'method@daum.net', '010-2135-9257', '농업기술자', '04021', '서울특별시 마포구 포은로2길 4 ~ 31', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준일', 'm', 48, 165, 67, 'difference@live.com', '010-8656-1375', '계산원', '63603', '제주특별자치도 서귀포시 토상로 2 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승진', 'm', 20, 180, 70, 'must@naver.com', '010-8944-2219', '취업준비생', '06004', '서울특별시 강남구 압구정로39길 29', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유지빈', 'f', 32, 172, 65, 'experience@naver.com', '010-6867-7813', '카피라이터', '06081', '서울특별시 강남구 봉은사로105길 24 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서채우', 'f', 39, 175, 59, 'say@naver.com', '010-6178-3589', '게임기획자', '01026', '서울특별시 강북구 4.19로 1 ~ 31', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김나래', 'f', 25, 158, 41, 'stuff@live.com', '010-1662-3193', '학생', '06027', '서울특별시 강남구 압구정로4길 10 ~ 14-4', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장유영', 'f', 39, 168, 53, 'sing@naver.com', '010-8502-1523', '조리사', '05099', '서울특별시 광진구 뚝섬로50길 3 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림여혜', 'f', 27, 158, 59, 'continue_wrong@gmail.com', '010-7282-7073', '병원코디네이트', '61961', '광주광역시 서구 상무화원로31번길 16 ~ 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표은율', 'm', 19, 162, 81, 'catch@naver.com', '010-9682-8917', '학생', '01026', '서울특별시 강북구 4.19로 1 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤설', 'f', 35, 176, 67, 'also@gmail.com', '010-3630-7286', '스포츠트레이너', '04775', '서울특별시 성동구 둘레9길 17 ~ 17-13', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정차현', 'f', 39, 179, 47, 'region@daum.net', '010-9369-5376', '운동감독', '05296', '서울특별시 강동구 천중로49길 91 ~ 104', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최준연', 'm', 22, 176, 88, 'organization@naver.com', '010-4620-9428', '한식요리사', '34058', '대전광역시 유성구 대덕대로989번길 9-12 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김희예', 'f', 29, 169, 44, 'avoid@gmail.com', '010-6257-9515', '취업준비생', '24664', '강원도 인제군 상남면 엄달골길 46 ~ 637', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석성아', 'f', 48, 168, 59, 'billion@yahoo.com', '010-3124-4745', '취업준비생', '01610', '서울특별시 노원구 동일로241가길 55', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김혜수', 'f', 29, 170, 54, 'popular@gmail.com', '010-9200-6526', '은행원', '05334', '서울특별시 강동구 구천면로34길 2 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예나', 'f', 24, 167, 60, 'agreement_forget@gmail.com', '010-6333-2618', '구성작가', '07512', '서울특별시 강서구 방화대로 409', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄은서', 'f', 42, 167, 51, 'period@yahoo.com', '010-6346-5081', '약사', '61248', '광주광역시 북구 신임로31번길 3 ~ 78-4', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은성', 'm', 48, 172, 78, 'it_wonder@naver.com', '010-9890-1913', '비서', '06082', '서울특별시 강남구 봉은사로109길 18 ~ 22-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정하람', 'f', 20, 173, 53, 'film@yahoo.com', '010-6384-7391', '취업준비생', '06083', '서울특별시 강남구 봉은사로113길 19 ~ 23', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김지연', 'f', 40, 168, 65, 'figure@yahoo.com', '010-8530-1426', '헤드헌터', '61163', '광주광역시 북구 밤실로 163-2 ~ 191', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한준', 'm', 26, 168, 63, 'theory_others@naver.com', '010-6845-1545', '건물주', '01205', '서울특별시 강북구 도봉로 61 ~ 87', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은혜', 'f', 18, 170, 67, 'hair@yahoo.com', '010-3759-8297', '직업상담사', '01113', '서울특별시 강북구 덕릉로26길 5 ~ 16', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이화영', 'f', 39, 178, 45, 'former@naver.com', '010-7638-3843', '변리사', '61495', '광주광역시 동구 지원로42번길 36-2 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다효', 'f', 22, 166, 43, 'statement@daum.net', '010-2150-6845', '소방관', '07347', '서울특별시 영등포구 신길로42길 1', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예정', 'f', 28, 154, 45, '_necessary@naver.com', '010-1076-1824', '간호조무사', '01145', '서울특별시 강북구 오현로 207', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태영', 'm', 21, 183, 80, 'talk_energy@daum.net', '010-9854-9736', '해양환경기사', '07767', '서울특별시 강서구 가로공원로78가길 1 ~ 77', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동원', 'm', 44, 187, 89, 'like@naver.com', '010-6843-8023', '비행기조종사', '02512', '서울특별시 동대문구 장안벚꽃로 279', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정해정', 'f', 29, 168, 44, 'small@live.com', '010-8276-2773', '취업준비생', '03658', '서울특별시 서대문구 모래내로 330 ~ 352-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성희', 'm', 36, 188, 83, 'news@gmail.com', '010-9411-1020', '계산원', '63010', '제주특별자치도 제주시 한림읍 금능1길 2-4 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태환', 'm', 48, 179, 88, 'course_opportunity@live.com', '010-9867-1748', '은행원', '63305', '제주특별자치도 제주시 황사평4길 3 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어주안', 'f', 38, 174, 69, 'speech@live.com', '010-4031-1300', '위생사', '05344', '서울특별시 강동구 천중로52길 3 ~ 37', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽수민', 'm', 21, 178, 74, 'yeah@live.com', '010-4467-3122', '취업준비생', '01062', '서울특별시 강북구 오패산로79길 3 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도윤', 'm', 49, 185, 76, 'look@live.com', '010-6772-9312', '외과의', '61763', '광주광역시 남구 신장길 149 ~ 162', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방이수', 'm', 25, 171, 80, 'itself@gmail.com', '010-9256-6730', '행사기획자', '63154', '제주특별자치도 제주시 서사로2길 8 ~ 30', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양주현', 'f', 47, 155, 54, 'alone@live.com', '010-3560-9745', '검사', '08774', '서울특별시 관악구 신원로3가길 1 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원형', 'm', 32, 165, 69, 'these@yahoo.com', '010-4814-3218', '시인', '05255', '서울특별시 강동구 고덕로28길 10-4 ~ 52-30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주환', 'm', 25, 172, 68, 'fund@live.com', '010-3471-8238', '취업준비생', '06914', '서울특별시 동작구 만양로14바길 4 ~ 38', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은찬', 'm', 22, 176, 79, 'throughout_place@gmail.com', '010-9442-2935', '학생', '05361', '서울특별시 강동구 명일로 157-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변대형', 'm', 28, 166, 86, 'the@gmail.com', '010-2668-1702', '디자이너', '05321', '서울특별시 강동구 상암로16길 27 ~ 47', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민승', 'm', 31, 181, 77, 'lose@naver.com', '010-5098-3685', '취업준비생', '08718', '서울특별시 관악구 국회단지7길 34', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정도영', 'm', 34, 180, 75, 'feeling@gmail.com', '010-1064-8054', '학생', '03702', '서울특별시 서대문구 연희로11라길 42 ~ 64', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은하', 'f', 34, 157, 59, 'fall@naver.com', '010-3275-6975', '학생', '08775', '서울특별시 관악구 신원로2길 4-4 ~ 13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효준', 'm', 28, 180, 82, 'note@naver.com', '010-1442-5347', '헤드헌터', '63017', '제주특별자치도 제주시 한림읍 금능남로 453', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정세이', 'f', 41, 157, 56, 'figure@daum.net', '010-2223-1115', '임상병리사', '61991', '광주광역시 서구 화정로 1 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성현', 'm', 26, 184, 86, 'table@live.com', '010-1197-4375', '비서', '04071', '서울특별시 마포구 독막로2길 6 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤이윤', 'f', 29, 153, 49, 'our@naver.com', '010-1764-9347', '택시기사', '48951', '부산광역시 중구 광복로85번길 9-1 ~ 17-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신아설', 'f', 22, 177, 65, 'enjoy@live.com', '010-3610-6391', '사회복지사', '18335', '경기도 화성시 봉담읍 복만터길 1 ~ 104', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세희', 'f', 42, 174, 53, 'political_father@gmail.com', '010-7193-9264', '항공정비사', '01633', '서울특별시 노원구 덕릉로141나길 2 ~ 28-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소초민', 'f', 36, 153, 67, 'own@gmail.com', '010-4236-7499', '취업준비생', '06252', '서울특별시 강남구 강남대로 320 ~ 334', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박아준', 'm', 40, 183, 63, 'race@gmail.com', '010-5800-5863', '교수', '63621', '제주특별자치도 서귀포시 남원읍 남원체육관로 227 ~ 345', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원혁', 'm', 42, 175, 70, 'sex@daum.net', '010-7862-7555', '취업준비생', '08823', '서울특별시 관악구 신우길 1 ~ 24', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최로현', 'f', 33, 158, 47, 'travel@naver.com', '010-7335-5095', '프로게이머', '01098', '서울특별시 강북구 덕릉로10길 3 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕윤헌', 'm', 40, 166, 86, 'baby@yahoo.com', '010-2796-8255', '취업준비생', '24107', '강원도 화천군 상서면 갈골길 3-9 ~ 419', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최승빈', 'f', 46, 176, 69, 'first@yahoo.com', '010-7584-6575', '수질환경연구원', '61189', '광주광역시 북구 호동로43번길 11 ~ 11-9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영슬', 'f', 33, 153, 42, 'from_commercial@gmail.com', '010-5755-3794', '취업준비생', '25631', '강원도 강릉시 강동면 괘방산길 14 ~ 47-8', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황희원', 'f', 18, 156, 61, 'especially@naver.com', '010-2884-7147', '원예기술자', '01731', '서울특별시 노원구 중계로2가길 27-3 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지동후', 'm', 23, 180, 68, 'produce@gmail.com', '010-6567-3866', '경영컨설턴트', '07740', '서울특별시 강서구 등촌로13다길 1 ~ 51', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임채빈', 'f', 39, 169, 50, 'star_identify@live.com', '010-9670-5763', '축구선수', '34121', '대전광역시 유성구 대덕대로608번길 8 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최주연', 'f', 39, 157, 57, 'number_employee@live.com', '010-5761-7633', '음향및녹음기사', '03974', '서울특별시 마포구 성미산로15길 81', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍세은', 'f', 49, 177, 66, 'improve_agreement@live.com', '010-9837-8926', '경영컨설턴트', '62425', '광주광역시 광산구 고내상길 56-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤성', 'm', 48, 188, 67, 'people@naver.com', '010-7727-6628', '건물주자제분', '03192', '서울특별시 종로구 수표로20길 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최루완', 'm', 23, 184, 70, 'certain@gmail.com', '010-8250-1152', '취업준비생', '06268', '서울특별시 강남구 남부순환로 2627 ~ 2635', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동해', 'm', 38, 182, 85, 'newspaper_blood@live.com', '010-5452-9086', '취업준비생', '06183', '서울특별시 강남구 영동대로85길 13 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김소민', 'f', 19, 179, 51, 'just@naver.com', '010-5663-1639', '뮤지컬배우', '49402', '부산광역시 사하구 장평로443번길 2 ~ 23', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시율', 'f', 32, 155, 61, 'forget@daum.net', '010-3303-7855', '프로골퍼', '01633', '서울특별시 노원구 덕릉로137길 7 ~ 77-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성수', 'm', 49, 184, 89, 'treatment_less@gmail.com', '010-5959-4952', '구급대원', '18295', '경기도 화성시 봉담읍 매송고색로394번길 3-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '고원훈', 'm', 45, 183, 83, 'cup_human@naver.com', '010-3876-5143', '감정평가사', '34428', '대전광역시 대덕구 계족로517번길 35 ~ 98', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방래현', 'f', 49, 166, 43, 'might@gmail.com', '010-4065-3131', '학생', '08244', '서울특별시 구로구 고척로33라길 14-12', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성율', 'm', 23, 165, 87, 'news@naver.com', '010-9702-2461', '취업준비생', '04801', '서울특별시 성동구 광나루로9길 2 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최장호', 'm', 48, 173, 75, 'rate@yahoo.com', '010-8888-1475', '학생', '61751', '광주광역시 남구 압촌3길 3 ~ 10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정장현', 'm', 37, 181, 62, 'program@daum.net', '010-2993-9573', '호텔경영사', '06787', '서울특별시 서초구 강남대로10길 5 ~ 41', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조승진', 'm', 30, 160, 83, 'body@daum.net', '010-2839-2931', '카피라이터', '18482', '경기도 화성시 동부대로970번가길 24-42 ~ 24-44', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유성진', 'm', 21, 182, 76, 'hundred@naver.com', '010-2523-9341', '애완동물미용사', '06532', '서울특별시 서초구 신반포로43길 23-11', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문대영', 'm', 34, 186, 74, 'south@naver.com', '010-4395-1852', '패턴사', '34993', '대전광역시 중구 문화로78번길 5 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배이윤', 'f', 45, 174, 43, 'ask@naver.com', '010-4139-1866', '무대디자이너', '47115', '부산광역시 부산진구 성지로104번길 43-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤설', 'f', 19, 179, 51, 'natural@yahoo.com', '010-8704-2774', '학생', '61162', '광주광역시 북구 밤실로 193 ~ 213', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은선', 'f', 39, 165, 64, 'election@naver.com', '010-9435-1878', '학생', '06253', '서울특별시 강남구 강남대로 298 ~ 318', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신윤설', 'f', 24, 153, 64, 'outside@live.com', '010-4706-6729', '프로게이머', '06587', '서울특별시 서초구 동광로30길 5 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백이진', 'f', 21, 162, 41, 'rather@daum.net', '010-2974-1473', '세무사', '61450', '광주광역시 동구 지호로 36 ~ 52-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지자연', 'f', 23, 178, 62, 'operation@naver.com', '010-5602-1107', '학생', '14537', '경기도 부천시 원미구 석천로209번길 15 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이지', 'f', 29, 166, 54, 'image@naver.com', '010-5084-3177', '방송기술감독', '04208', '서울특별시 마포구 만리재옛4길 5 ~ 37', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최현정', 'f', 25, 170, 44, 'hope@daum.net', '010-2192-4403', '성형외과의', '08348', '서울특별시 구로구 개봉로11길 38-20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은채', 'f', 37, 165, 68, 'very@yahoo.com', '010-2034-3106', '구성작가', '62432', '광주광역시 광산구 고내상길 69 ~ 83', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박우헌', 'm', 24, 185, 67, 'fact@yahoo.com', '010-2639-3634', '여론조사전문가', '25311', '강원도 평창군 봉평면 금당계곡로 1258 ~ 1883', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조여솔', 'f', 48, 154, 42, 'civil_respond@gmail.com', '010-8029-6374', '방송기술감독', '03620', '서울특별시 서대문구 세검정로4길 13 ~ 91', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다린', 'f', 47, 168, 44, 'produce@yahoo.com', '010-7941-3642', '취업준비생', '07386', '서울특별시 영등포구 신길로41나길 1 ~ 15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영솔', 'f', 28, 170, 50, 'behind@naver.com', '010-5967-4510', '학생', '05212', '서울특별시 강동구 아리수로94길 72 ~ 72-38', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최우원', 'm', 27, 182, 74, 'today_term@yahoo.com', '010-7869-1132', '경찰', '61501', '광주광역시 동구 지원로 25 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대영', 'm', 16, 170, 87, 'why@gmail.com', '010-5468-4637', '학생', '06524', '서울특별시 서초구 강남대로105길 5 ~ 15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현세빈', 'f', 26, 171, 50, 'brother@gmail.com', '010-1369-5824', '의무기록사', '07955', '서울특별시 양천구 목동중앙남로16길 14 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문유준', 'm', 49, 165, 69, 'community@gmail.com', '010-9671-6308', '노무사', '06004', '서울특별시 강남구 압구정로39길 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박세이', 'f', 25, 156, 55, 'past@naver.com', '010-3230-3818', '간호사', '05261', '서울특별시 강동구 상암로17길 5 ~ 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수이', 'f', 40, 173, 57, 'scene@gmail.com', '010-1472-2483', '뮤지컬배우', '18470', '경기도 화성시 동탄기흥로 544', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유형', 'm', 40, 186, 79, 'drive@gmail.com', '010-7712-4174', '게임기획자', '02498', '서울특별시 동대문구 망우로16길 32 ~ 58', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하윤', 'f', 27, 159, 47, 'country@live.com', '010-8520-5140', '방송작가', '61188', '광주광역시 북구 호동로15번길 55 ~ 98', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염루원', 'f', 47, 167, 43, 'region@gmail.com', '010-8772-5483', '증권중개인', '04090', '서울특별시 마포구 독막로28길 7 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변선아', 'f', 38, 174, 60, 'nor@gmail.com', '010-4097-1149', '프로그래머', '61763', '광주광역시 남구 신장1길 2 ~ 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원준', 'm', 24, 169, 74, 'minute_institution@naver.com', '010-8012-6005', '감정평가사', '07506', '서울특별시 강서구 방화대로 94 ~ 96', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태훈', 'm', 26, 184, 89, 'many@yahoo.com', '010-8993-8691', '가구제조조립원', '47591', '부산광역시 연제구 대리로22번길 94 ~ 122-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정여정', 'f', 21, 164, 40, 'show_it@naver.com', '010-2966-9432', '취업준비생', '18472', '경기도 화성시 동탄기흥로 503-83', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박설빈', 'f', 28, 170, 51, 'capital@gmail.com', '010-2307-5910', '취업준비생', '06045', '서울특별시 강남구 학동로19길 5 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이한', 'm', 40, 178, 63, 'language@live.com', '010-3995-9453', '학생', '63172', '제주특별자치도 제주시 서사로6길 2 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지류안', 'f', 32, 165, 69, 'no@naver.com', '010-6856-6619', '학생', '05302', '서울특별시 강동구 천중로49길 51 ~ 82', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성훈', 'm', 38, 160, 82, 'ever@daum.net', '010-5091-4842', '치과의', '47610', '부산광역시 연제구 마곡천로 2 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이소이', 'f', 46, 159, 55, 'fail@daum.net', '010-6344-3916', '케이크디자이너', '10109', '경기도 김포시 장릉로 123 ~ 129', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박서현', 'f', 36, 165, 49, 'wait@naver.com', '010-1638-6184', '교수', '06097', '서울특별시 강남구 선릉로112길 5 ~ 58-2', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여여혜', 'f', 44, 174, 51, 'area@gmail.com', '010-7967-4321', '학생', '01437', '서울특별시 도봉구 노해로57길 59 ~ 85', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤섭', 'm', 39, 176, 89, 'both_your@naver.com', '010-9612-6296', '조연출', '02474', '서울특별시 동대문구 약령시로3길 38 ~ 54', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정효현', 'f', 41, 173, 63, 'process_show@yahoo.com', '010-1815-7620', '취업준비생', '24161', '강원도 화천군 사내면 화악산로 909-16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다영', 'f', 32, 164, 64, 'fall@live.com', '010-1266-6420', '공인중개사', '61905', '광주광역시 서구 천변좌하로 428 ~ 476', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다언', 'f', 48, 164, 62, 'course_think@yahoo.com', '010-6685-5528', '무대디자이너', '06146', '서울특별시 강남구 선릉로103길 22 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김로훈', 'm', 45, 175, 87, 'tell@yahoo.com', '010-4637-3558', '프로경주선수', '17892', '경기도 평택시 통복시장로55번길 9 ~ 36', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효성', 'm', 36, 162, 86, 'go@daum.net', '010-1377-2147', '학생', '02513', '서울특별시 동대문구 장안벚꽃로 267', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤후', 'm', 39, 185, 69, 'fire@live.com', '010-3787-8270', '백수', '04987', '서울특별시 광진구 능동로34길 86 ~ 155', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황승우', 'm', 49, 168, 76, 'eat_listen@yahoo.com', '010-7196-5539', '취업준비생', '08775', '서울특별시 관악구 신원로 2 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주예', 'f', 45, 150, 44, 'recognize@naver.com', '010-6439-6410', '방송작가', '04096', '서울특별시 마포구 독막로29길 6 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시우', 'm', 44, 174, 75, 'back@live.com', '010-9588-9763', '직업상담사', '61239', '광주광역시 북구 버들로 2 ~ 2-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태연', 'f', 40, 150, 54, 'employee@gmail.com', '010-3345-7086', '택시기사', '08229', '서울특별시 구로구 경인로35길 64-15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박혜진', 'f', 19, 151, 53, 'let@daum.net', '010-6813-1798', '조명감독', '11664', '경기도 의정부시 신흥로 326', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최예인', 'f', 41, 158, 68, 'night_someone@naver.com', '010-4616-1729', '상품중개인', '25627', '강원도 강릉시 강동면 산두양지길 7-8 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성훈', 'm', 21, 175, 86, 'build_wife@live.com', '010-5833-7828', '학생', '07782', '서울특별시 강서구 곰달래로 168 ~ 196', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박슬빈', 'f', 38, 174, 50, 'particularly_day@daum.net', '010-5786-1594', '영화감독', '47590', '부산광역시 연제구 대리로6번길 31 ~ 78', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수지', 'f', 39, 170, 53, 'paper@naver.com', '010-2233-6847', '자동차딜러', '63298', '제주특별자치도 제주시 화남로 4 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림대규', 'm', 23, 183, 72, 'contain@daum.net', '010-1460-3802', '조리사', '07709', '서울특별시 강서구 강서로45다길 62-7 ~ 68', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁윤기', 'm', 17, 168, 75, 'especially_my@naver.com', '010-1255-1937', '학생', '01208', '서울특별시 강북구 삼양로 118 ~ 138', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이인규', 'm', 28, 186, 78, 'do@live.com', '010-1172-9152', 'VJ', '01056', '서울특별시 강북구 도봉로102길 6 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강태영', 'm', 45, 170, 66, 'fly@yahoo.com', '010-2674-3893', '엔지니어', '18461', '경기도 화성시 동탄기흥로 646', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강승혜', 'f', 19, 166, 40, 'family@daum.net', '010-9968-6500', '치과의', '07955', '서울특별시 양천구 목동중앙남로14길 1 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜선', 'f', 42, 162, 66, 'mission@daum.net', '010-5371-4451', '경영컨설턴트', '16215', '경기도 수원시 장안구 창훈로 55 ~ 75', '서울');

insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이아연', 'f', 18, 155, 54, 'record@naver.com', '010-6712-9449', '학생', '05022', '서울특별시 광진구 광나루로28길 6 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이설빈', 'f', 43, 153, 68, 'against@live.com', '010-9121-2991', '취업준비생', '46771', '부산광역시 강서구 가덕해안로1208번가길 1 ~ 57-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이소은', 'f', 22, 157, 60, 'watch@yahoo.com', '010-6026-2662', '시조시인', '61239', '광주광역시 북구 버들로 24 ~ 24-8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현도윤', 'f', 40, 156, 61, 'same@daum.net', '010-1905-6518', '취업준비생', '05062', '서울특별시 광진구 뚝섬로49길 11-1 ~ 44', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박서원', 'f', 19, 160, 55, 'shoulder@gmail.com', '010-7025-7327', '어부', '04775', '서울특별시 성동구 둘레9길 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권이훈', 'm', 44, 165, 74, 'law_tend@gmail.com', '010-4999-2573', '주유원', '06684', '서울특별시 서초구 방배로13길 40 ~ 70', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대권', 'm', 28, 179, 60, 'key@naver.com', '010-1595-2451', '변리사', '06619', '서울특별시 서초구 서운로 134 ~ 142-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여지호', 'm', 22, 164, 84, 'world@daum.net', '010-6128-2939', '기자', '02498', '서울특별시 동대문구 망우로18길 33 ~ 57', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대권', 'm', 16, 184, 67, 'green_different@daum.net', '010-3706-5865', '학생', '02497', '서울특별시 동대문구 망우로18가길 32 ~ 118', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최다혜', 'f', 44, 154, 44, 'brother@live.com', '010-5902-1900', '노무사', '63324', '제주특별자치도 제주시 화삼북로 136', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박민기', 'm', 49, 170, 78, 'same@gmail.com', '010-3746-8558', '방송작가', '06267', '서울특별시 강남구 강남대로 238 ~ 246', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은진', 'm', 29, 178, 67, 'particular_professor@naver.com', '010-6482-4974', '학생', '63116', '제주특별자치도 제주시 오일장동길 22 ~ 50-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천소현', 'f', 48, 165, 46, 'respond@live.com', '010-8622-3841', '취업준비생', '12520', '경기도 양평군 용문면 용문역길 22 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선준상', 'm', 24, 171, 65, 'short@daum.net', '010-3165-5612', '건물주자제분', '18436', '경기도 화성시 동탄공원로 24 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로초영', 'f', 47, 168, 44, 'market@daum.net', '010-8237-8669', '취업준비생', '24664', '강원도 인제군 상남면 구름울길 10 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류신영', 'f', 42, 178, 58, 'without_carry@live.com', '010-6664-2164', '의무기록사', '47591', '부산광역시 연제구 대리로6번길 87 ~ 123', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김인하', 'f', 39, 162, 54, 'report@naver.com', '010-9626-9133', '변리사', '07741', '서울특별시 강서구 곰달래로 245 ~ 271', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정하일', 'm', 44, 178, 65, 'represent@live.com', '010-7162-5341', '텔레마케터', '62025', '광주광역시 서구 화정로 106-15 ~ 134-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우노연', 'f', 38, 164, 46, 'card_phone@naver.com', '010-5501-8654', '학생', '07570', '서울특별시 강서구 공항대로55길 5 ~ 33', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강유환', 'm', 37, 180, 81, 'cell_take@live.com', '010-4272-1638', '학생', '63621', '제주특별자치도 서귀포시 남원읍 남원중앙로 1 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정솔빈', 'f', 40, 175, 43, 'along@daum.net', '010-9717-9988', '독서지도사', '25213', '강원도 횡성군 횡성읍 한우로조곡8길 13-10 ~ 37', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤규', 'm', 39, 171, 71, 'process@live.com', '010-7187-9124', '간호사', '18335', '경기도 화성시 봉담읍 복만터길 1 ~ 104', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이은', 'f', 16, 169, 44, 'record_news@yahoo.com', '010-1792-1380', '유치원교사', '34384', '대전광역시 대덕구 중리북로 4 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤수', 'm', 40, 177, 86, 'cup_people@gmail.com', '010-9298-4662', '애완동물미용사', '01178', '서울특별시 강북구 솔샘로59길 6 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추세이', 'f', 36, 172, 52, 'blue@daum.net', '010-1900-6762', '애널리스트', '07519', '서울특별시 강서구 양천로 125', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이서은', 'f', 39, 162, 52, 'ability@naver.com', '010-1330-6167', '구성작가', '08700', '서울특별시 관악구 조원로 5-6 ~ 43', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최치영', 'f', 37, 169, 69, 'our@yahoo.com', '010-8287-1254', '의사', '18436', '경기도 화성시 동탄공원로1길 6-3 ~ 27', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주은', 'f', 25, 159, 42, 'newspaper@daum.net', '010-7654-6615', '취업준비생', '08558', '서울특별시 금천구 독산로72길 4 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승엽', 'm', 45, 167, 88, 'go@daum.net', '010-5879-8790', '케이크디자이너', '04550', '서울특별시 중구 을지로12길 19 ~ 21-1', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양장혁', 'm', 21, 183, 89, 'past@daum.net', '010-5153-6723', '학생', '02569', '서울특별시 동대문구 약령중앙로 5 ~ 47-1', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정세비', 'f', 35, 173, 62, 'follow@naver.com', '010-4677-7519', '축구선수', '05022', '서울특별시 광진구 광나루로28길 6 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도희', 'f', 41, 162, 43, 'or_hold@yahoo.com', '010-8880-7999', '애널리스트', '06525', '서울특별시 서초구 강남대로101안길 12 ~ 44', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태원', 'm', 34, 175, 61, 'chance@live.com', '010-8901-9186', '학생', '11683', '경기도 의정부시 신흥로 345 ~ 365', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강윤설', 'f', 44, 163, 57, 'measure@naver.com', '010-8264-5725', '조연출', '03192', '서울특별시 종로구 수표로18가길 4 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영후', 'm', 48, 183, 83, 'environment@daum.net', '010-6552-6248', '교수', '08748', '서울특별시 관악구 봉천로49다길 25 ~ 46', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기예주', 'f', 42, 167, 69, 'prevent@gmail.com', '010-5010-8506', '취업준비생', '61163', '광주광역시 북구 밤실로169번길 7 ~ 7-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진대율', 'm', 27, 178, 72, 'international_dog@daum.net', '010-7408-4365', '금융자산운용가', '61913', '광주광역시 서구 천변좌하로 616 ~ 622-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변윤아', 'f', 16, 150, 55, 'what@daum.net', '010-6275-3833', '건물주', '63277', '제주특별자치도 제주시 중앙로3길 17 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최연후', 'm', 48, 173, 65, 'small@gmail.com', '010-6191-8314', '소설가', '62266', '광주광역시 광산구 월계로118번길 6 ~ 38-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효준', 'm', 45, 166, 85, 'issue@yahoo.com', '010-3252-3295', 'IT컨설턴트', '17894', '경기도 평택시 통복시장로16번길 3 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원호', 'm', 48, 188, 64, 'security_risk@gmail.com', '010-9295-6374', '병원코디네이트', '06038', '서울특별시 강남구 도산대로4길 9 ~ 20', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤도', 'm', 37, 181, 61, 'daughter@daum.net', '010-4352-3438', '구급대원', '17894', '경기도 평택시 통복시장로26번길 1 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강윤우', 'm', 17, 173, 68, 'option@naver.com', '010-6095-1522', '초중고교교사', '06608', '서울특별시 서초구 서운로 197 ~ 221', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정소은', 'f', 38, 154, 55, 'page@naver.com', '010-8286-8059', '방송연출가', '02498', '서울특별시 동대문구 망우로18가길 31 ~ 105', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최유현', 'f', 23, 171, 58, 'short@daum.net', '010-8355-9198', '학생', '04050', '서울특별시 마포구 홍익로 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최우원', 'm', 34, 181, 83, 'range@yahoo.com', '010-2324-4099', '요리사', '61440', '광주광역시 동구 지산로89번길 1 ~ 16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정세민', 'f', 23, 151, 49, 'reality@gmail.com', '010-1978-7193', '취업준비생', '05001', '서울특별시 광진구 동일로48길 6 ~ 38', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백다형', 'm', 37, 180, 69, 'enough@daum.net', '010-2783-5468', '세무사', '17893', '경기도 평택시 통복시장로13번길 1 ~ 22', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전예령', 'f', 49, 161, 41, 'within_person@yahoo.com', '010-7299-4867', '건축공학기술자', '35078', '대전광역시 중구 학고개로35번길 17 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정시원', 'm', 24, 173, 66, 'figure_relate@yahoo.com', '010-1843-3475', '취업준비생', '14547', '경기도 부천시 원미구 석천로178번길 7 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영혜', 'f', 43, 168, 56, 'wear@gmail.com', '010-6029-6052', '한의사', '08774', '서울특별시 관악구 문성로 189 ~ 217', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대규', 'm', 26, 160, 67, 'ever@naver.com', '010-9906-4131', '어부', '11651', '경기도 의정부시 신흥로 224 ~ 242', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최연수', 'f', 21, 174, 53, 'single@yahoo.com', '010-4588-7346', '학생', '05294', '서울특별시 강동구 양재대로136길 24 ~ 58', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원영', 'm', 38, 162, 61, 'among@live.com', '010-4434-4936', '검사', '01062', '서울특별시 강북구 덕릉로 93 ~ 93-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여은슬', 'f', 21, 160, 63, 'table@naver.com', '010-3594-8651', '학생', '06134', '서울특별시 강남구 강남대로 402 ~ 412', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동희', 'f', 44, 156, 64, 'safe@yahoo.com', '010-7279-3980', '학생', '01458', '서울특별시 도봉구 도봉로110아길 6 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤렬', 'm', 24, 163, 80, 'music_fast@daum.net', '010-9486-2863', '학생', '06589', '서울특별시 서초구 동광로32길 7', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이안', 'f', 25, 170, 61, 'private_new@yahoo.com', '010-1609-8207', '취업준비생', '16286', '경기도 수원시 장안구 조원로89번길 9-3 ~ 43-27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최해슬', 'f', 17, 165, 58, 'help@live.com', '010-3651-6980', '설문조사원', '01213', '서울특별시 강북구 숭인로 39', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선동현', 'm', 45, 172, 71, 'hour@daum.net', '010-6236-9961', '음악치료사', '02478', '서울특별시 동대문구 약령중앙로12길 1 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이연호', 'm', 42, 178, 88, 'environmental@daum.net', '010-3883-4651', '학생', '06155', '서울특별시 강남구 삼성로107길 5 ~ 37', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이소원', 'f', 27, 168, 64, 'fly_treat@live.com', '010-7706-7568', '이미용사', '08792', '서울특별시 관악구 낙성대로 7 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤수', 'm', 43, 187, 71, 'state@live.com', '010-2896-7998', '뮤지컬배우', '35063', '대전광역시 중구 범골로 3 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최소민', 'f', 22, 159, 54, 'conference_page@live.com', '010-6107-7846', '의무기록사', '03956', '서울특별시 마포구 월드컵로31길 103 ~ 117', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장호영', 'm', 27, 165, 72, 'shake@gmail.com', '010-8178-4175', '감정평가사', '48948', '부산광역시 중구 광복로55번길 1 ~ 8-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영찬', 'm', 32, 172, 62, 'old@daum.net', '010-3546-7416', '건물주자제분', '35071', '대전광역시 중구 범골로 30 ~ 108', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주현', 'f', 40, 153, 51, 'kid@daum.net', '010-6949-7002', '학생', '12408', '경기도 가평군 가평읍 가화로 247 ~ 277', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주성현', 'm', 17, 175, 71, 'message@naver.com', '010-4391-1417', '외환딜러', '34997', '대전광역시 중구 문화로94번길 42 ~ 54', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정설아', 'f', 34, 172, 46, 'candidate@live.com', '010-9538-9161', '요리사', '06028', '서울특별시 강남구 압구정로4길 14-11', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남장원', 'm', 21, 185, 69, 'say_poor@gmail.com', '010-9902-6772', '디자이너', '10120', '경기도 김포시 유현로33번길 16 ~ 60', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김진영', 'm', 28, 175, 66, 'strong@live.com', '010-8694-5007', '취업준비생', '01132', '서울특별시 강북구 덕릉로28길 45 ~ 53', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영준', 'm', 31, 179, 66, 'before@live.com', '010-6942-3991', '애널리스트', '08770', '서울특별시 관악구 남부순환로 1430 ~ 1440', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다아', 'f', 28, 154, 60, 'we@naver.com', '010-4779-7034', '사회복지사', '35077', '대전광역시 중구 학고개로47번길 2 ~ 16', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박준완', 'm', 29, 161, 66, 'trial@live.com', '010-5995-4145', '경찰', '05399', '서울특별시 강동구 성내로12길 9 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준아', 'm', 24, 183, 77, 'risk@daum.net', '010-3191-6160', '취업준비생', '07786', '서울특별시 강서구 곰달래로 272', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영찬', 'm', 47, 187, 67, 'Mr@naver.com', '010-9155-9799', '간호사', '24769', '강원도 고성군 토성면 장성천1길 35-33 ~ 152', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김진아', 'f', 48, 160, 46, 'away@naver.com', '010-6765-4409', '피부관리사', '34396', '대전광역시 대덕구 계족로 716 ~ 736', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허예찬', 'm', 39, 172, 67, 'social@naver.com', '010-5203-9780', '뮤지컬배우', '06338', '서울특별시 강남구 개포로116길 3 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태현', 'm', 47, 185, 74, 'at_back@daum.net', '010-2078-2587', '학생', '06133', '서울특별시 강남구 테헤란로13길 8-3 ~ 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오하영', 'f', 38, 161, 43, 'heat@yahoo.com', '010-6268-7079', '학생', '07361', '서울특별시 영등포구 신길로42다길 1 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도영', 'm', 17, 175, 62, 'reduce@naver.com', '010-6826-2982', '학생', '06264', '서울특별시 강남구 도곡로14길 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '손도율', 'm', 19, 185, 75, 'share_show@gmail.com', '010-6643-5673', '피부관리사', '61663', '광주광역시 남구 양림로 54 ~ 92', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채유채', 'f', 47, 168, 55, 'least@daum.net', '010-8948-4597', '사회복지사', '34993', '대전광역시 중구 문화로78번길 5 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재현', 'm', 40, 172, 78, 'medical_full@naver.com', '010-6299-6523', '취업준비생', '34411', '대전광역시 대덕구 계족로586번길 8 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은세', 'f', 22, 150, 46, 'interview@yahoo.com', '010-8222-5493', '경영컨설턴트', '61972', '광주광역시 서구 화운로199번길 6 ~ 11-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재훈', 'm', 45, 174, 83, 'thought@gmail.com', '010-8378-2195', '학생', '06017', '서울특별시 강남구 압구정로42길 5 ~ 36', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄정희', 'f', 23, 176, 59, 'catch_experience@naver.com', '010-2952-4436', '취업준비생', '04550', '서울특별시 중구 을지로12길 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조대환', 'm', 49, 162, 75, 'every@yahoo.com', '010-1382-5082', '경영컨설턴트', '08576', '서울특별시 금천구 시흥대로130길 24-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임윤섭', 'm', 42, 176, 70, 'school@live.com', '010-4838-3178', '가구제조조립원', '07348', '서울특별시 영등포구 신길로42가길 21 ~ 39-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍누리', 'f', 49, 165, 53, 'quite@naver.com', '010-7197-5037', '건물주자제분', '07639', '서울특별시 강서구 강서로45라길 12 ~ 70', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정서은', 'f', 48, 156, 51, 'discussion@daum.net', '010-3323-9477', '매표원', '08348', '서울특별시 구로구 개봉로11길 38-24', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박민상', 'm', 44, 173, 74, 'war@yahoo.com', '010-9094-5418', '방송작가', '01062', '서울특별시 강북구 덕릉로 93 ~ 93-3', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로민진', 'm', 23, 187, 86, 'these@live.com', '010-9888-2300', '산부인과의', '46769', '부산광역시 강서구 가덕해안로 3 ~ 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤후', 'm', 43, 176, 68, 'course@daum.net', '010-1096-1974', '사회복지사', '06080', '서울특별시 강남구 봉은사로105길 41 ~ 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설시애', 'f', 17, 151, 47, 'necessary@naver.com', '010-4607-3630', '조연출', '24105', '강원도 화천군 상서면 계파로 859 ~ 979-28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최선정', 'f', 40, 174, 44, 'fish@gmail.com', '010-8794-3110', '학생', '34426', '대전광역시 대덕구 청림길 26 ~ 30', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주이정', 'f', 49, 161, 47, 'follow@yahoo.com', '010-8973-9772', '촬영기자', '34428', '대전광역시 대덕구 계족로521번길 33 ~ 96', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최애린', 'f', 46, 160, 49, 'huge@live.com', '010-4237-6218', '취업준비생', '04364', '서울특별시 용산구 새창로35길 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조다경', 'f', 47, 176, 40, 'present@naver.com', '010-3901-3210', '비행기조종사', '49400', '부산광역시 사하구 장평로443번길 59 ~ 78', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태현', 'm', 24, 183, 61, 'heart@yahoo.com', '010-6366-9720', '학생', '01012', '서울특별시 강북구 4.19로 58 ~ 90', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대윤', 'm', 23, 169, 80, 'send@gmail.com', '010-3930-6071', '칼럼니스트', '06028', '서울특별시 강남구 압구정로4길 14-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서한성', 'm', 42, 175, 82, 'attention_child@live.com', '010-5150-6392', '건물주', '63528', '제주특별자치도 서귀포시 안덕면 사계남로13번길 1 ~ 15-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은교', 'm', 32, 167, 82, 'way@naver.com', '010-3712-8419', '학생', '11650', '경기도 의정부시 신흥로 223 ~ 243', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민서안', 'f', 41, 171, 50, 'middle@yahoo.com', '010-6477-8981', '응급구조사', '08787', '서울특별시 관악구 쑥고개로 123 ~ 139', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유현', 'f', 42, 157, 57, 'inside@gmail.com', '010-4425-3581', '취업준비생', '01080', '서울특별시 강북구 수유로21길 3 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은오', 'f', 42, 159, 50, 'start@daum.net', '010-8667-8277', '취업준비생', '63621', '제주특별자치도 서귀포시 남원읍 남원체육관로221번길 2 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤우', 'f', 26, 174, 63, 'dark@naver.com', '010-1030-3384', '극작가', '35266', '대전광역시 서구 갈마로147번길 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신효준', 'm', 32, 167, 65, 'love@naver.com', '010-2639-6182', '학생', '06524', '서울특별시 서초구 강남대로101안길 2 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은율', 'm', 23, 184, 85, 'give@naver.com', '010-2733-3732', '간호사', '06103', '서울특별시 강남구 선릉로111길 5 ~ 43', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신송윤', 'f', 18, 166, 57, 'eight@gmail.com', '010-4437-1936', 'VJ', '06028', '서울특별시 강남구 압구정로4길 14-5', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원준', 'm', 18, 174, 87, 'light@daum.net', '010-1112-7763', '프로경주선수', '18308', '경기도 화성시 봉담읍 매봉로 387 ~ 420-30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예나', 'f', 28, 171, 42, 'number@naver.com', '010-4729-6262', '평생교육사', '04364', '서울특별시 용산구 새창로35길 11 ~ 13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신리안', 'm', 26, 180, 80, 'item@live.com', '010-6151-7708', '취업준비생', '06589', '서울특별시 서초구 동광로32길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박소연', 'f', 35, 161, 49, 'sort@gmail.com', '010-8863-5737', '사회복지사', '06141', '서울특별시 강남구 논현로 508', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박지율', 'f', 30, 158, 60, 'victim@gmail.com', '010-6395-8915', '디자이너', '01454', '서울특별시 도봉구 도봉로114길 21 ~ 49', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '성선이', 'f', 40, 172, 48, 'energy@live.com', '010-4356-7877', '물류관리사', '48951', '부산광역시 중구 광복로85번길 9-1 ~ 17-4', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오하설', 'f', 26, 151, 66, 'Mr@daum.net', '010-7230-3790', '촬영기자', '06027', '서울특별시 강남구 압구정로4길 14-12 ~ 14-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하은', 'f', 29, 152, 43, 'also@yahoo.com', '010-5076-5049', '취업준비생', '34983', '대전광역시 중구 문화로87번길 3 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태훈', 'm', 34, 185, 89, 'risk@gmail.com', '010-6306-6479', '소설가', '06057', '서울특별시 강남구 도산대로50길 54', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤상', 'm', 19, 163, 67, 'force@yahoo.com', '010-6029-4416', '항공기관사', '08706', '서울특별시 관악구 봉천로6길 4 ~ 54', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석혜선', 'f', 24, 165, 48, 'center_fact@naver.com', '010-2285-8101', '버스운전사', '04987', '서울특별시 광진구 능동로36길 95 ~ 187', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배윤후', 'm', 16, 180, 63, 'cause@live.com', '010-7796-1995', '취업준비생', '07519', '서울특별시 강서구 양천로 125', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박지민', 'm', 28, 175, 75, 'trouble@naver.com', '010-1037-9124', 'VJ', '06028', '서울특별시 강남구 압구정로4길 14-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국여원', 'f', 30, 177, 53, 'end_worker@yahoo.com', '010-3272-6821', '취업준비생', '49399', '부산광역시 사하구 장평로449번길 101 ~ 134', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤한', 'm', 41, 189, 82, 'decision@live.com', '010-9400-1263', '취업준비생', '06524', '서울특별시 서초구 강남대로101안길 2 ~ 8', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤후', 'm', 21, 185, 63, 'song@gmail.com', '010-5316-1560', '학생', '02497', '서울특별시 동대문구 망우로14가길 9-1 ~ 65-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서민상', 'm', 45, 171, 82, 'indicate@gmail.com', '010-1300-4070', '조명감독', '07705', '서울특별시 강서구 강서로45다길 25 ~ 69', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁유성', 'm', 16, 165, 66, 'force@yahoo.com', '010-6263-5749', '회계사', '05100', '서울특별시 광진구 뚝섬로52가길 3 ~ 22-8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지애', 'f', 36, 156, 50, 'into@yahoo.com', '010-9879-3290', '변리사', '24161', '강원도 화천군 사내면 호음로 793-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도훈', 'f', 41, 178, 62, 'challenge_that@live.com', '010-9573-1859', '가구제조조립원', '01486', '서울특별시 도봉구 해등로3길 81 ~ 85', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명시환', 'm', 17, 178, 63, 'follow@naver.com', '010-2535-7571', '건물주자제분', '11665', '경기도 의정부시 신흥로 309 ~ 329', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박장혁', 'm', 30, 180, 66, 'fine@yahoo.com', '010-8046-9040', '중식요리사', '02496', '서울특별시 동대문구 망우로16길 20 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동은', 'm', 29, 168, 88, 'act@live.com', '010-2508-9873', '학생', '62204', '광주광역시 광산구 감동길 75 ~ 163', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '송혜림', 'f', 27, 165, 42, 'throw@yahoo.com', '010-6418-7763', '경영컨설턴트', '05296', '서울특별시 강동구 천중로51길 87 ~ 118', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최차임', 'f', 24, 176, 53, 'station_office@live.com', '010-4557-6707', '경찰', '17894', '경기도 평택시 통복시장로22번길 3 ~ 43', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유안', 'f', 32, 164, 61, 'seat@naver.com', '010-4227-1908', '스포츠트레이너', '06330', '서울특별시 강남구 개포로 522', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최의찬', 'm', 25, 163, 72, 'media@daum.net', '010-5539-8444', '프로골퍼', '01626', '서울특별시 노원구 동일로242가길 30-13 ~ 30-17', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이혜슬', 'f', 26, 173, 61, 'memory@live.com', '010-7868-5624', '대출상담사', '63277', '제주특별자치도 제주시 중앙로3길 34', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금서희', 'f', 38, 157, 57, 'despite@gmail.com', '010-1982-9916', '프로바둑기사', '01012', '서울특별시 강북구 4.19로 58 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민찬후', 'm', 20, 186, 60, 'lead@yahoo.com', '010-7934-9231', '소설가', '08317', '서울특별시 구로구 구로동로7다길 7 ~ 11', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장동율', 'm', 27, 183, 81, 'he_only@naver.com', '010-6518-7180', '취업준비생', '07564', '서울특별시 강서구 공항대로57길 4 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하원', 'm', 20, 188, 73, 'any@yahoo.com', '010-2213-1213', '피부관리사', '01178', '서울특별시 강북구 솔샘로53길 4 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강윤후', 'm', 45, 182, 73, 'team_itself@live.com', '010-6634-7773', '학생', '04740', '서울특별시 성동구 금호로 15', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민예진', 'f', 26, 175, 68, 'rise@live.com', '010-2251-1073', '취업준비생', '06170', '서울특별시 강남구 봉은사로108길 3-6 ~ 5', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정찬율', 'm', 20, 179, 73, 'song@gmail.com', '010-1889-8695', '건물주자제분', '35062', '대전광역시 중구 범골로22번길 6 ~ 30', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '도수민', 'm', 31, 181, 73, 'keep@yahoo.com', '010-8411-3433', '산부인과의', '05236', '서울특별시 강동구 고덕로27길 12 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최리아', 'f', 45, 161, 51, 'mother@naver.com', '010-5008-7532', '장학사', '61757', '광주광역시 남구 야평길 1-1 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로선후', 'm', 18, 181, 70, 'name_bar@yahoo.com', '010-7392-9452', '학생', '18294', '경기도 화성시 봉담읍 매봉로123번길 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염유진', 'f', 37, 165, 45, 'cup@naver.com', '010-1375-6553', '무대디자이너', '61163', '광주광역시 북구 밤실로181번길 6 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김로연', 'f', 43, 166, 47, 'summer@yahoo.com', '010-4106-1058', '학생', '61502', '광주광역시 동구 지원로12번길 1 ~ 28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림예섬', 'f', 38, 155, 44, 'let@live.com', '010-7155-6214', '취업준비생', '07570', '서울특별시 강서구 공항대로55길 5 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '마리안', 'f', 46, 178, 49, 'brother@naver.com', '010-1842-4136', 'VJ', '01064', '서울특별시 강북구 오패산로78길 2 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박민진', 'm', 20, 161, 81, 'security@daum.net', '010-1396-8307', '학생', '06560', '서울특별시 서초구 동광로3길 2 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시후', 'm', 16, 188, 73, 'sell@gmail.com', '010-8216-8527', '학생', '05104', '서울특별시 광진구 자양로3길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태훈', 'm', 46, 161, 66, 'speak@yahoo.com', '010-2944-1113', '학생', '07347', '서울특별시 영등포구 신길로42길 1', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은서', 'm', 34, 189, 74, 'Republican@live.com', '010-2710-3119', '사회복지사', '25225', '강원도 횡성군 횡성읍 화성로 2 ~ 28-9', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은찬', 'm', 18, 182, 69, 'behavior@gmail.com', '010-7540-5495', '성우', '34428', '대전광역시 대덕구 계족로521번길 33 ~ 96', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양해은', 'f', 31, 161, 66, 'rest@yahoo.com', '010-2560-3258', '비행기조종사', '12523', '경기도 양평군 용문면 용문시장3길 3 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강다겸', 'f', 20, 159, 67, 'let@daum.net', '010-4691-2879', '중식요리사', '08784', '서울특별시 관악구 장군봉3길 6 ~ 33', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동해', 'm', 18, 162, 89, 'pattern@yahoo.com', '010-7706-4865', '한의사', '05062', '서울특별시 광진구 뚝섬로51길 1 ~ 25', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정송빈', 'f', 32, 164, 61, 'play_hot@yahoo.com', '010-3445-9991', '콜센터상담원', '01442', '서울특별시 도봉구 노해로60길 3-3 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이송후', 'm', 47, 173, 70, 'service@naver.com', '010-7622-5221', '칼럼니스트', '34389', '대전광역시 대덕구 중리로76번길 1 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤용', 'm', 22, 160, 87, 'cut@yahoo.com', '010-5911-1248', '설문조사원', '05343', '서울특별시 강동구 천중로52길 6 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문유슬', 'f', 20, 152, 41, 'trade_citizen@daum.net', '010-1987-5931', '도선사', '63528', '제주특별자치도 서귀포시 안덕면 사계남로27번길 1 ~ 10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성희', 'f', 30, 161, 40, 'especially@yahoo.com', '010-8010-5812', '사회복지사', '04997', '서울특별시 광진구 능동로35길 7 ~ 9', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이지예', 'f', 42, 165, 51, 'stop@gmail.com', '010-8921-6972', '건물주', '07017', '서울특별시 동작구 남부순환로269길 87 ~ 125', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김우진', 'm', 17, 169, 74, 'room_feel@naver.com', '010-3108-4440', '취업준비생', '05257', '서울특별시 강동구 고덕로38길 17 ~ 71', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김애설', 'f', 30, 163, 60, 'love_avoid@live.com', '010-1123-4299', '메이크업아티스트', '01834', '서울특별시 노원구 공릉로 187 ~ 203', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공은준', 'm', 39, 181, 61, 'information@yahoo.com', '010-4674-3685', '학생', '03619', '서울특별시 서대문구 세검정로 71 ~ 99', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정승윤', 'm', 25, 164, 89, 'amount@naver.com', '010-1492-9523', '교수', '06145', '서울특별시 강남구 선릉로107길 3-4 ~ 7-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변여혜', 'f', 49, 161, 42, 'white_here@gmail.com', '010-9657-1949', '학생', '05344', '서울특별시 강동구 천중로52길 3 ~ 37', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진은세', 'm', 24, 170, 70, 'thousand@naver.com', '010-2062-3314', '측량기술자', '06149', '서울특별시 강남구 선릉로103길 3 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁영준', 'm', 46, 183, 67, 'wear@live.com', '010-6753-7006', '간호사', '25304', '강원도 평창군 봉평면 기풍로 89-4 ~ 203', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박여준', 'm', 16, 171, 68, 'smile@yahoo.com', '010-4430-3724', '비서', '06529', '서울특별시 서초구 신반포로43길 23-4 ~ 23-6', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유인규', 'm', 20, 175, 87, 'game@gmail.com', '010-3792-3957', '스포츠트레이너', '06915', '서울특별시 동작구 만양로14바길 5 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현후', 'm', 32, 160, 63, 'agree@live.com', '010-4794-6384', '학생', '05394', '서울특별시 강동구 성내로13길 21 ~ 61', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은성', 'm', 36, 172, 86, 'south@live.com', '010-9147-5064', '피부관리사', '16221', '경기도 수원시 장안구 창룡대로151번길 2 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공태현', 'm', 37, 162, 65, 'concern_whatever@naver.com', '010-6070-9971', '외환딜러', '04208', '서울특별시 마포구 만리재옛12길 6-1 ~ 24-7', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정한솔', 'f', 17, 178, 48, 'somebody@naver.com', '010-2708-8430', '취업준비생', '63194', '제주특별자치도 제주시 오현길 9 ~ 35-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현서', 'f', 41, 179, 52, 'understand@daum.net', '010-3724-6186', '한식요리사', '05357', '서울특별시 강동구 천호대로206길 87', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예영', 'f', 37, 165, 58, 'market_billion@naver.com', '010-3255-4060', '조연출', '05364', '서울특별시 강동구 풍성로67길 45 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도영', 'm', 46, 180, 67, 'result@naver.com', '010-1598-3085', '응급구조사', '46770', '부산광역시 강서구 가덕해안로751번길 6 ~ 111-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김서은', 'f', 24, 159, 51, 'each@yahoo.com', '010-8690-4607', 'IT컨설턴트', '18297', '경기도 화성시 봉담읍 매송고색로 452 ~ 462', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁루완', 'f', 21, 160, 46, 'discussion@live.com', '010-7705-8667', '직업상담사', '08767', '서울특별시 관악구 조원로 80 ~ 102', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최노현', 'f', 28, 161, 56, 'your@daum.net', '010-5787-5068', '물류관리사', '05322', '서울특별시 강동구 상암로14길 28 ~ 77', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성빈', 'm', 28, 166, 79, 'if@yahoo.com', '010-7190-3756', '학생', '01051', '서울특별시 강북구 노해로22길 7-1 ~ 7-13', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태원', 'm', 20, 176, 68, 'third@gmail.com', '010-8263-2041', '취업준비생', '05201', '서울특별시 강동구 아리수로93가길 48-3 ~ 198-46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서은성', 'm', 24, 173, 75, 'determine@naver.com', '010-6756-8294', '건물주자제분', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤후', 'f', 29, 171, 47, 'parent@daum.net', '010-4233-1824', '여론조사전문가', '61447', '광주광역시 동구 지호로 108 ~ 214-7', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤재', 'm', 35, 172, 67, 'music_thank@yahoo.com', '010-6689-6766', '학생', '08859', '서울특별시 관악구 난향길 4 ~ 92', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정민준', 'm', 21, 162, 61, 'share_alone@naver.com', '010-4100-4807', '해양환경기사', '18481', '경기도 화성시 동부대로970번길 93 ~ 120-2', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주빈', 'f', 23, 152, 66, 'little@daum.net', '010-4204-6296', '백수', '61907', '광주광역시 서구 천변좌하로 516 ~ 562', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤일', 'm', 33, 169, 67, 'scientist_stay@naver.com', '010-5278-9815', '학생', '47111', '부산광역시 부산진구 성지로104번길 81-23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박슬빈', 'f', 44, 177, 60, 'stand@naver.com', '010-2889-7186', '학생', '18290', '경기도 화성시 봉담읍 매송고색로394번길 77', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김예정', 'f', 27, 170, 54, 'article@live.com', '010-1206-7528', '취업준비생', '05023', '서울특별시 광진구 광나루로30길 3 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '한선이', 'f', 31, 171, 42, 'late_hospital@yahoo.com', '010-2459-5967', '프로그래머', '08832', '서울특별시 관악구 쑥고개로 100 ~ 128', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대규', 'm', 18, 170, 83, 'stay@daum.net', '010-8545-1314', '탤런트', '25311', '강원도 평창군 봉평면 거품소길 271', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예진', 'f', 26, 169, 64, 'gun_over@naver.com', '010-1077-5834', '학생', '06130', '서울특별시 강남구 테헤란로13길 17 ~ 49', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류시혁', 'm', 46, 168, 65, 'against@live.com', '010-8324-2639', '케이크디자이너', '01145', '서울특별시 강북구 오현로 207', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이채정', 'f', 28, 167, 42, 'energy@live.com', '010-5480-3801', '어부', '61913', '광주광역시 서구 천변좌하로632번길 1 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석윤렬', 'm', 49, 180, 71, 'ability@naver.com', '010-5850-1937', '운동감독', '05401', '서울특별시 강동구 성내로 70 ~ 92', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태영', 'f', 46, 165, 48, 'disease@live.com', '010-3931-8972', '이미용사', '17892', '경기도 평택시 통복시장로53번길 2 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동원', 'm', 18, 187, 89, 'behind@naver.com', '010-9950-4029', '취업준비생', '03956', '서울특별시 마포구 월드컵로31길 103 ~ 117', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위지현', 'f', 29, 154, 52, 'range@live.com', '010-3024-5436', '취업준비생', '06313', '서울특별시 강남구 논현로 4 ~ 30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은혜', 'f', 30, 178, 58, 'score@live.com', '010-5784-4607', '취업준비생', '16285', '경기도 수원시 장안구 조원로89번길 6 ~ 50', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김한오', 'm', 32, 160, 76, 'face_drug@yahoo.com', '010-6125-4079', '물류관리사', '08814', '서울특별시 관악구 대학7길 3 ~ 53', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강준상', 'm', 19, 182, 73, 'product_candidate@gmail.com', '010-2082-2126', '물류관리사', '34997', '대전광역시 중구 문화로94번길 42 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다린', 'f', 42, 153, 62, 'also@naver.com', '010-1424-3188', '간호사', '01098', '서울특별시 강북구 덕릉로10길 3 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배선정', 'f', 22, 173, 48, 'give@live.com', '010-3297-6356', '치과기공사', '01203', '서울특별시 강북구 솔샘로60길 13-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김래훈', 'm', 49, 171, 72, 'operation_few@live.com', '010-6732-8901', '취업준비생', '06115', '서울특별시 강남구 학동로20길 19-6 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대은', 'm', 23, 173, 66, 'score@daum.net', '010-6497-9686', '농업기술자', '34995', '대전광역시 중구 문화로46번길 6 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우치영', 'f', 49, 170, 51, 'usually@gmail.com', '010-1227-5487', '건물주자제분', '61662', '광주광역시 남구 양림로 51 ~ 95', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이안', 'm', 37, 189, 82, 'resource@gmail.com', '010-4596-7283', '은행원', '35078', '대전광역시 중구 학고개로53번길 17 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진동연', 'm', 39, 170, 68, 'want@live.com', '010-1396-9235', '건물주자제분', '63010', '제주특별자치도 제주시 한림읍 금능남2길 5 ~ 22-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주혜', 'f', 30, 165, 48, 'challenge@yahoo.com', '010-4088-5297', '학생', '03693', '서울특별시 서대문구 모래내로 209 ~ 247', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최다겸', 'f', 26, 179, 49, 'yourself@live.com', '010-8484-2212', '경영컨설턴트', '06589', '서울특별시 서초구 동광로32길 7', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원유진', 'm', 24, 181, 65, 'fear@yahoo.com', '010-8020-9841', '초중고교교사', '04775', '서울특별시 성동구 둘레9길 2 ~ 2-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김애리', 'f', 21, 177, 52, 'really@daum.net', '010-5596-5357', '음악치료사', '01486', '서울특별시 도봉구 해등로3길 81 ~ 85', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤현', 'm', 19, 164, 76, 'it@naver.com', '010-6394-6889', '스포츠트레이너', '25239', '강원도 횡성군 횡성읍 횡성로48번길 1 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하윤', 'f', 40, 152, 51, 'style@yahoo.com', '010-8841-9112', '조경원', '07066', '서울특별시 동작구 신대방14가길 2 ~ 68', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김혜선', 'f', 28, 175, 55, 'come@gmail.com', '010-6595-6344', '취업준비생', '04793', '서울특별시 성동구 성수일로10길 3 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최두연', 'f', 32, 156, 59, 'have@gmail.com', '010-8941-3689', '취업준비생', '02587', '서울특별시 동대문구 천호대로 46 ~ 64', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배유준', 'm', 46, 161, 72, 'arrive@daum.net', '010-1253-1208', '선물중개인', '17894', '경기도 평택시 통복시장로 4 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선동율', 'm', 39, 171, 69, 'into@live.com', '010-4356-4140', '약사', '01018', '서울특별시 강북구 4.19로 123 ~ 135', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김혜리', 'f', 34, 153, 43, 'both@daum.net', '010-8192-5528', '취업준비생', '63609', '제주특별자치도 서귀포시 남원읍 516로 1396', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정두희', 'f', 25, 178, 62, 'team_short@live.com', '010-9080-6518', '취업준비생', '06028', '서울특별시 강남구 압구정로4길 14-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤후', 'm', 39, 185, 89, 'money@daum.net', '010-4436-8766', '의복수선원', '03180', '서울특별시 종로구 송월길 31 ~ 61-39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정솔은', 'f', 31, 169, 41, 'fill@daum.net', '010-7184-6812', '네일아티스트', '01189', '서울특별시 강북구 삼양로 181 ~ 203', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원일', 'm', 29, 186, 77, 'available_develop@daum.net', '010-2370-3465', '취업준비생', '61163', '광주광역시 북구 밤실로181번길 21-2 ~ 21-16', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도율', 'm', 17, 176, 76, 'wish_face@live.com', '010-2198-9526', '학생', '47514', '부산광역시 연제구 명륜로 10 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정누리', 'f', 34, 151, 45, 'himself@yahoo.com', '010-2478-7904', '학생', '07551', '서울특별시 강서구 공항대로55길 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세진', 'f', 44, 178, 66, 'public@yahoo.com', '010-6793-5047', '일식요리사', '46771', '부산광역시 강서구 가덕해안로 1052 ~ 1328-24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '고원영', 'm', 33, 180, 68, 'actually@live.com', '010-7602-1031', '취업준비생', '62264', '광주광역시 광산구 월계로16번길 7 ~ 81', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황준완', 'm', 39, 164, 79, 'candidate@live.com', '010-4158-8328', 'PD', '34393', '대전광역시 대덕구 중리서로 1 ~ 25', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동헌', 'm', 28, 161, 79, 'rest@live.com', '010-1672-9475', '학생', '35062', '대전광역시 중구 범골로22번길 6 ~ 30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박정연', 'f', 45, 177, 51, 'seek@yahoo.com', '010-9415-6863', '취업준비생', '06613', '서울특별시 서초구 서운로 178 ~ 194', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효설', 'f', 27, 176, 41, 'and@live.com', '010-8984-6080', '학생', '06619', '서울특별시 서초구 서운로 134 ~ 142-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시민', 'm', 31, 161, 83, 'stuff_question@daum.net', '010-8049-3936', '독서지도사', '02112', '서울특별시 중랑구 중랑천로20길 2 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박희예', 'f', 25, 151, 64, 'break@live.com', '010-3201-5510', '농업기술자', '07015', '서울특별시 동작구 남부순환로271길 35 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태연', 'm', 47, 174, 72, 'per@gmail.com', '010-2982-3974', '경영컨설턴트', '61759', '광주광역시 남구 신양촌안길 5 ~ 9-12', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유신', 'm', 48, 179, 88, 'class@yahoo.com', '010-2527-6025', '취업준비생', '06018', '서울특별시 강남구 도산대로51길 37 ~ 44', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤서', 'm', 23, 171, 61, 'story@daum.net', '010-3420-7129', '항공기관사', '35078', '대전광역시 중구 학고개로37번길 17 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공동해', 'm', 46, 172, 68, 'another@naver.com', '010-8016-4554', '광고및홍보전문가', '06333', '서울특별시 강남구 개포로 625', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지완', 'm', 42, 182, 65, 'marriage_the@yahoo.com', '010-3016-4546', '여론조사전문가', '08748', '서울특별시 관악구 봉천로49다길 25 ~ 46', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신재아', 'f', 22, 163, 69, 'defense@daum.net', '010-7444-4582', '법무사', '04050', '서울특별시 마포구 홍익로 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤태', 'm', 33, 162, 73, 'maintain@live.com', '010-5018-6455', '농수산물중개인', '05022', '서울특별시 광진구 광나루로24길 23 ~ 80', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '성승윤', 'f', 49, 151, 55, 'sport@gmail.com', '010-8724-1796', '구급대원', '05226', '서울특별시 강동구 동남로87길 4 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영헌', 'm', 26, 189, 85, 'model@naver.com', '010-3506-4748', '취업준비생', '05371', '서울특별시 강동구 풍성로67길 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최예인', 'f', 25, 168, 69, 'including@daum.net', '010-3325-6896', '취업준비생', '08713', '서울특별시 관악구 국회단지9길 2 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다효', 'f', 18, 156, 57, 'may@live.com', '010-8444-3743', '경호원', '63528', '제주특별자치도 서귀포시 안덕면 사계남로153번길 2 ~ 52', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김송윤', 'f', 46, 170, 53, 'good_produce@live.com', '010-5641-8292', '취업준비생', '04802', '서울특별시 성동구 광나루로9길 3 ~ 7', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표혜은', 'f', 17, 176, 68, 'ten@gmail.com', '010-5089-8988', '간호사', '04775', '서울특별시 성동구 둘레9길 17 ~ 17-13', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장동은', 'm', 31, 186, 88, 'interest@yahoo.com', '010-7672-5038', '치어리더', '01194', '서울특별시 강북구 솔샘로48길 3 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주아', 'f', 40, 171, 67, 'past@daum.net', '010-6191-9068', '방사선사', '01146', '서울특별시 강북구 오현로 167 ~ 179-9', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원영', 'm', 39, 176, 64, 'action@naver.com', '010-2479-2653', '공무원', '03654', '서울특별시 서대문구 모래내로 333 ~ 359', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오윤형', 'm', 36, 185, 73, 'situation@naver.com', '010-3132-3542', '사회복지사', '02633', '서울특별시 동대문구 천호대로 405', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연아라', 'f', 18, 159, 44, 'about_sell@live.com', '010-8373-6780', '항공승무원', '01189', '서울특별시 강북구 삼양로 181 ~ 203', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림채은', 'f', 28, 154, 44, 'reveal@gmail.com', '010-4486-4538', '학생', '07570', '서울특별시 강서구 공항대로53나길 4 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표인규', 'm', 41, 183, 81, 'step@gmail.com', '010-7767-5211', '개그맨', '63528', '제주특별자치도 서귀포시 안덕면 사계남로 1 ~ 239', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박로현', 'f', 28, 162, 59, 'skill@yahoo.com', '010-5031-6972', '한식요리사', '07785', '서울특별시 강서구 곰달래로 246 ~ 268', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어영인', 'm', 34, 178, 76, 'month@daum.net', '010-5488-9897', '응급구조사', '47514', '부산광역시 연제구 명륜로 10 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜정', 'f', 43, 178, 45, 'interest_help@live.com', '010-5772-9932', '선물중개인', '04938', '서울특별시 광진구 용마산로34길 7 ~ 35', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정희영', 'f', 16, 163, 61, 'century@daum.net', '010-5067-3993', '노무사', '08556', '서울특별시 금천구 독산로70라길 19 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이완', 'm', 23, 186, 80, 'kill@naver.com', '010-9710-4124', '음향및녹음기사', '62432', '광주광역시 광산구 고내상길 69 ~ 83', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조윤관', 'm', 34, 176, 72, 'letter_office@gmail.com', '010-4137-5863', '손해사정사', '06362', '서울특별시 강남구 광평로42길 3 ~ 22-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원시애', 'f', 45, 171, 57, 'fund@naver.com', '010-5469-7273', '취업준비생', '05369', '서울특별시 강동구 풍성로73길 5 ~ 37', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정두율', 'm', 24, 174, 64, 'tend@daum.net', '010-6065-2155', '애완동물미용사', '61163', '광주광역시 북구 밤실로181번길 22 ~ 22-2', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이리혜', 'f', 48, 173, 67, 'sister@gmail.com', '010-2215-1881', '여론조사전문가', '18435', '경기도 화성시 동탄공원로2길 7 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정대권', 'm', 42, 161, 67, 'worry@gmail.com', '010-8882-7115', '뮤지컬배우', '06027', '서울특별시 강남구 압구정로4길 14-6 ~ 14-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남소빈', 'f', 30, 166, 50, 'sea@yahoo.com', '010-6793-8901', '유치원교사', '24766', '강원도 고성군 토성면 용촌천길 70-16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류대규', 'm', 31, 181, 67, 'from@daum.net', '010-1719-5154', '경호원', '06979', '서울특별시 동작구 현충로 90', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박도현', 'f', 40, 165, 57, 'dinner@gmail.com', '010-4909-1056', '취업준비생', '07347', '서울특별시 영등포구 신길로42길 1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우영재', 'm', 37, 175, 72, 'open@live.com', '010-9343-8380', '제과제빵사', '06589', '서울특별시 서초구 동광로32길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승진', 'm', 46, 161, 87, 'tax_American@naver.com', '010-4279-3594', '여론조사전문가', '01366', '서울특별시 도봉구 삼양로 574-23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정대원', 'm', 27, 182, 64, 'still@live.com', '010-1604-8274', '취업준비생', '08317', '서울특별시 구로구 구로동로7다길 25-2 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태연', 'm', 35, 188, 77, 'late@yahoo.com', '010-5537-3389', '학생', '63597', '제주특별자치도 서귀포시 태평로512번길 1-4 ~ 13', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김대은', 'm', 31, 170, 80, 'life_back@naver.com', '010-8683-3856', '양식요리사', '07635', '서울특별시 강서구 수명로2길 15 ~ 105', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표은후', 'm', 27, 184, 89, 'yes_camera@daum.net', '010-2600-3562', '자동차딜러', '63303', '제주특별자치도 제주시 화삼북로4길 4 ~ 28', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박우찬', 'm', 34, 169, 75, 'if@gmail.com', '010-6902-8674', '취업준비생', '02603', '서울특별시 동대문구 황물로 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신동후', 'm', 38, 186, 63, 'test@yahoo.com', '010-4134-3477', '학생', '08556', '서울특별시 금천구 독산로72길 78 ~ 86-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석대원', 'm', 33, 186, 63, 'control@gmail.com', '010-2505-4138', '가구제조조립원', '05073', '서울특별시 광진구 아차산로32길 4 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조성현', 'm', 38, 172, 69, 'occur@live.com', '010-1190-4981', '프로경주선수', '11670', '경기도 의정부시 신흥로 252 ~ 282', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김선이', 'f', 30, 158, 51, 'between@live.com', '010-7711-3541', '한식요리사', '08784', '서울특별시 관악구 장군봉길 7 ~ 103', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박희수', 'f', 39, 150, 54, 'student@naver.com', '010-4959-9347', '취업준비생', '61502', '광주광역시 동구 지원로42번길 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민대형', 'm', 16, 182, 70, 'growth@gmail.com', '010-6872-4125', '취업준비생', '07605', '서울특별시 강서구 양천로 108', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김연호', 'm', 43, 168, 87, 'like_step@naver.com', '010-8361-5094', '취업준비생', '34130', '대전광역시 유성구 대덕대로541번길 87', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태은', 'm', 41, 175, 75, 'real_detail@daum.net', '010-5988-7900', '성형외과의', '25225', '강원도 횡성군 횡성읍 화성로 2 ~ 28-9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우원우', 'm', 30, 172, 60, 'save@live.com', '010-6440-5515', '학생', '08737', '서울특별시 관악구 봉천로55길 3 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동율', 'm', 41, 180, 64, 'fall@naver.com', '010-7677-2892', '중식요리사', '61914', '광주광역시 서구 천변좌하로 646 ~ 672', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석윤진', 'm', 22, 168, 71, 'all@yahoo.com', '010-2102-3720', '평생교육사', '61440', '광주광역시 동구 지산로89번길 1 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤찬', 'm', 42, 174, 87, 'individual@naver.com', '010-6433-6698', '프로바둑기사', '01394', '서울특별시 도봉구 방학로7길 74 ~ 99', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변윤오', 'f', 44, 162, 59, 'enjoy@naver.com', '010-6460-8287', '학생', '18481', '경기도 화성시 동부대로922번길 90', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천서진', 'm', 28, 189, 79, 'whatever@live.com', '010-4214-7771', '중식요리사', '01203', '서울특별시 강북구 솔샘로60길 13-14', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시영', 'f', 41, 161, 45, 'after@gmail.com', '010-7862-3486', '교수', '62233', '광주광역시 광산구 고봉로 2 ~ 10', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성현', 'm', 23, 189, 60, 'serious@live.com', '010-2158-6387', '취업준비생', '63528', '제주특별자치도 서귀포시 안덕면 사계남로153번길 2 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁초현', 'f', 20, 163, 55, 'us@gmail.com', '010-1651-2976', '취업준비생', '47115', '부산광역시 부산진구 성지로 94 ~ 120', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이누리', 'f', 36, 158, 61, 'my@live.com', '010-3486-3264', '취업준비생', '11663', '경기도 의정부시 신흥로 331 ~ 335-1', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세준', 'm', 19, 166, 70, 'loss@gmail.com', '010-4441-1799', '치과의', '46768', '부산광역시 강서구 가덕해안로315번길 6 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이현준', 'm', 46, 187, 84, 'possible@yahoo.com', '010-3239-4911', '음향및녹음기사', '07635', '서울특별시 강서구 수명로2길 15 ~ 105', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤상', 'm', 41, 182, 87, 'who@live.com', '010-1235-9909', '취업준비생', '35077', '대전광역시 중구 학고개로57번길 1 ~ 13', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박호영', 'm', 28, 173, 80, 'mean@live.com', '010-9233-4619', '학생', '06094', '서울특별시 강남구 삼성로115길 16-3 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정리안', 'm', 35, 178, 71, 'but@live.com', '010-2152-1402', '학생', '06344', '서울특별시 강남구 개포로110길 36 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영준', 'm', 19, 172, 65, 'do@live.com', '010-4052-2174', '학생', '06182', '서울특별시 강남구 영동대로75길 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김채우', 'f', 49, 176, 54, 'read@naver.com', '010-2452-6506', '설문조사원', '01069', '서울특별시 강북구 덕릉로 93-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조나영', 'f', 35, 157, 53, 'nor@gmail.com', '010-2530-9135', '학생', '02134', '서울특별시 중랑구 중랑천로2길 29 ~ 58', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지후', 'm', 34, 175, 61, 'meet@daum.net', '010-7987-3616', '간병인', '01625', '서울특별시 노원구 동일로242가길 30-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤이', 'f', 37, 153, 69, 'center@yahoo.com', '010-8313-4946', '가수', '25311', '강원도 평창군 봉평면 금당계곡로 1258 ~ 1883', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길윤섭', 'm', 37, 185, 73, 'decide_put@gmail.com', '010-7710-8671', '경찰', '01123', '서울특별시 강북구 솔매로31길 20 ~ 42', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕호영', 'm', 25, 185, 88, 'class@yahoo.com', '010-6494-2719', '물류관리사', '05319', '서울특별시 강동구 상암로16길 4 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서재찬', 'm', 21, 169, 86, 'something@live.com', '010-9993-8579', '상품중개인', '06244', '서울특별시 강남구 역삼로 125 ~ 151', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도윤', 'm', 42, 182, 74, 'security@naver.com', '010-4482-4613', '레크리에이션강사', '34392', '대전광역시 대덕구 중리서로 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승호', 'm', 25, 173, 67, 'money@naver.com', '010-3253-7771', '방사선사', '48949', '부산광역시 중구 광복로67번길 30-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동헌', 'm', 31, 165, 84, 'rise@daum.net', '010-3776-6431', '취업준비생', '63116', '제주특별자치도 제주시 오일장동길 2', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이수', 'm', 47, 176, 64, 'heavy@naver.com', '010-7376-1042', '영화배우', '03318', '서울특별시 은평구 갈현로41나길 1 ~ 3-21', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성연', 'f', 27, 154, 54, 'price@yahoo.com', '010-6679-9745', '구성작가', '63610', '제주특별자치도 서귀포시 남원읍 남원체육관로 1-7 ~ 64-26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영후', 'm', 49, 174, 65, 'rock_@live.com', '010-7446-3604', '학생', '08771', '서울특별시 관악구 남부순환로 1444 ~ 1474', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최진호', 'm', 23, 164, 62, 'movement@naver.com', '010-2928-2196', '취업준비생', '04090', '서울특별시 마포구 독막로28길 7 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석성수', 'm', 25, 183, 60, 'third@naver.com', '010-5042-2462', '증권중개인', '01046', '서울특별시 강북구 노해로23길 115 ~ 138', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김재현', 'f', 26, 155, 44, 'capital@naver.com', '010-1163-2633', '취업준비생', '25306', '강원도 평창군 봉평면 경강로 428-28 ~ 777-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최채안', 'f', 35, 173, 53, 'never@yahoo.com', '010-4500-6649', '중식요리사', '63619', '제주특별자치도 서귀포시 남원읍 남원월산로22번길 17 ~ 63', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최준영', 'm', 32, 186, 85, 'ten@live.com', '010-8619-9140', '학생', '01077', '서울특별시 강북구 삼각산로36길 3 ~ 28', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지효슬', 'f', 44, 151, 67, 'money@daum.net', '010-2115-5836', '정비사', '01049', '서울특별시 강북구 노해로27길 6 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민래언', 'f', 20, 157, 64, 'mission@naver.com', '010-7997-6900', '건물주자제분', '06350', '서울특별시 강남구 광평로7길 3 ~ 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세아', 'f', 36, 177, 63, 'work@naver.com', '010-7295-8067', '감정평가사', '07024', '서울특별시 동작구 남부순환로269길 3 ~ 79', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최송빈', 'm', 21, 165, 81, 'baby@yahoo.com', '010-5749-2669', '시인', '61763', '광주광역시 남구 신장1길 2 ~ 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김연아', 'f', 23, 178, 69, 'summer@naver.com', '010-4120-3343', '취업준비생', '49401', '부산광역시 사하구 장평로449번길 41 ~ 61', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예은', 'f', 29, 158, 56, 'building@gmail.com', '010-9770-5403', '일식요리사', '01048', '서울특별시 강북구 노해로25길 5 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강은진', 'm', 48, 166, 83, 'company@gmail.com', '010-6100-7891', '학생', '01731', '서울특별시 노원구 중계로2가길 27-3 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤혁', 'm', 33, 189, 61, 'wrong_because@naver.com', '010-4686-5638', '건물주', '25631', '강원도 강릉시 강동면 분소골길 16 ~ 60', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차임', 'f', 16, 170, 68, 'nor_old@live.com', '010-9628-8513', '취업준비생', '14537', '경기도 부천시 원미구 석천로209번길 15 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영준', 'm', 22, 161, 63, 'production@gmail.com', '010-4866-9103', '아나운서', '01018', '서울특별시 강북구 4.19로 123 ~ 135', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤진', 'm', 45, 176, 83, 'tell@naver.com', '010-4762-4318', '건물주자제분', '04915', '서울특별시 광진구 긴고랑로14길 33 ~ 60', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수민', 'm', 22, 168, 65, 'technology@live.com', '010-6491-5033', '취업준비생', '03965', '서울특별시 마포구 월드컵로30다길 34 ~ 42', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동헌', 'm', 34, 162, 63, 'lie_walk@live.com', '010-8848-1833', '학생', '12523', '경기도 양평군 용문면 용문시장6길 1 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍신화', 'f', 23, 170, 43, 'million@live.com', '010-8593-7164', '패턴사', '24665', '강원도 인제군 상남면 구만동길 70 ~ 147', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배혜리', 'f', 31, 161, 42, 'to@live.com', '010-3293-8795', '학생', '01069', '서울특별시 강북구 덕릉로 93-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김두영', 'f', 38, 151, 65, 'your@naver.com', '010-1034-1910', '학생', '18435', '경기도 화성시 동탄공원로3길 1 ~ 40-24', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최정희', 'f', 47, 160, 40, 'reflect@naver.com', '010-9401-4235', '백수', '01111', '서울특별시 강북구 수유로5길 2 ~ 21', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김정아', 'f', 40, 174, 44, 'home@live.com', '010-5918-7567', '건물주자제분', '02496', '서울특별시 동대문구 망우로16길 20 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이안', 'f', 28, 165, 69, 'move_bar@naver.com', '010-9294-2924', '학생', '06145', '서울특별시 강남구 선릉로105길 3 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소루연', 'f', 41, 155, 58, 'early@daum.net', '010-2308-9267', '소아과의', '06224', '서울특별시 강남구 논현로 404 ~ 420', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신여솔', 'f', 34, 178, 42, 'bill@yahoo.com', '010-4119-2334', '한의사', '24664', '강원도 인제군 상남면 상남로 20 ~ 48-8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한규', 'm', 19, 169, 70, 'attention@naver.com', '010-5018-9696', '프로게이머', '63303', '제주특별자치도 제주시 화삼북로 36 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세준', 'm', 39, 183, 80, 'speech@gmail.com', '010-1352-6206', '영화배우', '01214', '서울특별시 강북구 숭인로7길 1-1 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하성', 'm', 44, 177, 70, 'part@yahoo.com', '010-9125-8287', '학생', '04985', '서울특별시 광진구 능동로32길 1 ~ 35', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추인태', 'm', 49, 164, 78, 'weapon@live.com', '010-7559-4012', '자동차딜러', '63523', '제주특별자치도 서귀포시 안덕면 동광로92번길 3 ~ 23', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천찬후', 'm', 34, 178, 79, 'number@daum.net', '010-2322-7894', '취업준비생', '08707', '서울특별시 관악구 봉천로6길 3 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유라', 'f', 41, 159, 43, 'early_us@gmail.com', '010-7142-6019', '조명감독', '08577', '서울특별시 금천구 독산로75길 12 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변영준', 'm', 29, 184, 62, 'come@gmail.com', '010-3099-8947', '학생', '01605', '서울특별시 노원구 동일로241길 68 ~ 84', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍효리', 'f', 46, 160, 45, 'yes@live.com', '010-6527-9035', '취업준비생', '01219', '서울특별시 강북구 도봉로10다길 4 ~ 24', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성현', 'm', 21, 170, 87, 'base_full@live.com', '010-1456-2125', '판사', '07956', '서울특별시 양천구 목동중앙남로16가길 4 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유슬', 'f', 33, 154, 54, 'box@yahoo.com', '010-7294-8715', '포토그래퍼', '01127', '서울특별시 강북구 솔매로33길 5 ~ 18-13', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최정안', 'f', 27, 167, 53, 'none@gmail.com', '010-9883-3510', '스포츠트레이너', '17879', '경기도 평택시 통복시장로54번길 33 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승연', 'f', 40, 158, 41, 'carry@gmail.com', '010-1446-9517', '취업준비생', '05392', '서울특별시 강동구 성내로 7 ~ 19', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최수연', 'f', 30, 171, 45, 'indicate@naver.com', '010-5038-4631', '취업준비생', '12520', '경기도 양평군 용문면 용문역길12번길 5-2 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오동율', 'm', 21, 166, 71, 'great@gmail.com', '010-6458-7735', '요리사', '11639', '경기도 의정부시 신흥로 64 ~ 70', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동훈', 'm', 26, 183, 66, 'eye@yahoo.com', '010-2716-9309', '취업준비생', '08829', '서울특별시 관악구 서림1길 31 ~ 71', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최여준', 'm', 25, 169, 82, 'hope_always@live.com', '010-6201-3776', '학생', '01112', '서울특별시 강북구 수유로8길 5 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽서혜', 'f', 35, 163, 51, 'American@gmail.com', '010-5244-2481', '비행기조종사', '07719', '서울특별시 강서구 가로공원로77길 6 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효설', 'f', 47, 174, 61, 'say@naver.com', '010-6488-9454', '무대디자이너', '06083', '서울특별시 강남구 봉은사로113길 19 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강설희', 'f', 30, 158, 48, 'start_forward@gmail.com', '010-5925-9257', '촬영기자', '25221', '강원도 횡성군 횡성읍 화성로1번길 1 ~ 10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지도연', 'm', 36, 168, 77, 'six@live.com', '010-2266-3702', '가구제조수리원', '61988', '광주광역시 서구 화운로83번길 25-1 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림효주', 'f', 41, 171, 68, 'people_treat@live.com', '010-7079-8999', '한의사', '61189', '광주광역시 북구 호동로15번길 15 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방은준', 'm', 29, 185, 68, 'sister@live.com', '010-3841-6780', '학생', '47116', '부산광역시 부산진구 성지로 62 ~ 90', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조준성', 'm', 24, 174, 82, 'enter_writer@daum.net', '010-9945-3568', '경호원', '63523', '제주특별자치도 서귀포시 안덕면 동광본동로22번길 3 ~ 20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위동연', 'm', 29, 174, 70, 'while@naver.com', '010-6553-3430', '취업준비생', '49390', '부산광역시 사하구 장평로420번길 7 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재호', 'm', 29, 186, 87, 'detail@daum.net', '010-4664-4576', '직업상담사', '05018', '서울특별시 광진구 아차산로33길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김솔지', 'f', 26, 152, 40, 'how_message@live.com', '010-1855-9219', '건축공학기술자', '61123', '광주광역시 북구 신촌로 2-1 ~ 38', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성은', 'f', 44, 179, 40, 'drop@live.com', '010-2585-9494', '취업준비생', '16282', '경기도 수원시 장안구 조원로74번길 1 ~ 49', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재호', 'm', 47, 161, 79, 'white@daum.net', '010-4623-3880', '학생', '61446', '광주광역시 동구 지호로 224 ~ 225', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신은찬', 'm', 45, 185, 68, 'structure@yahoo.com', '010-4918-9331', '영화감독', '62350', '광주광역시 광산구 월곡로 18-1 ~ 32', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태한', 'm', 38, 162, 72, 'prevent@naver.com', '010-3931-3577', '취업준비생', '03704', '서울특별시 서대문구 연희로11바길 5 ~ 35', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정시혁', 'm', 40, 178, 64, 'or@gmail.com', '010-8720-8889', '직업상담사', '01064', '서울특별시 강북구 오패산로78길 2 ~ 26', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤우', 'm', 38, 166, 80, 'everyone@daum.net', '010-1785-8476', '취업준비생', '17548', '경기도 안성시 공도읍 문터안길 5 ~ 100', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김채빈', 'f', 30, 152, 67, 'age@gmail.com', '010-4898-2231', '가구제조조립원', '01443', '서울특별시 도봉구 도봉로113길 4-3 ~ 42', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효연', 'f', 29, 154, 68, 'soldier@naver.com', '010-7800-1270', '디자이너', '10072', '경기도 김포시 운양로56번길 2 ~ 133', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영솔', 'f', 30, 162, 57, 'see@live.com', '010-2583-3337', '위생사', '04938', '서울특별시 광진구 용마산로30길 2 ~ 62', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성빈', 'f', 38, 170, 56, 'amount_couple@daum.net', '010-3773-8859', '소설가', '63621', '제주특별자치도 서귀포시 남원읍 남원체육관로 227 ~ 345', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김성희', 'm', 42, 164, 69, 'industry@live.com', '010-3393-1217', '군인', '63526', '제주특별자치도 서귀포시 안덕면 병악로 19 ~ 375', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정대언', 'm', 43, 165, 88, 'bill@live.com', '010-8551-6644', '독서지도사', '06267', '서울특별시 강남구 강남대로 238 ~ 246', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시혁', 'm', 29, 169, 65, 'like@naver.com', '010-8528-3803', '방송작가', '08242', '서울특별시 구로구 고척로33라길 14-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태헌', 'm', 20, 178, 65, 'top@live.com', '010-7047-2050', '가구제조조립원', '07733', '서울특별시 강서구 등촌로13마길 26-16 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금동희', 'f', 48, 167, 41, 'light_ground@naver.com', '010-6606-4794', '일식요리사', '08654', '서울특별시 금천구 시흥대로12길 10 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성재', 'm', 47, 188, 88, 'third@naver.com', '010-1383-1857', '은행원', '25227', '강원도 횡성군 횡성읍 향교서로 4 ~ 18', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김조안', 'f', 47, 169, 59, 'environment@live.com', '010-1900-2781', '방사선사', '02113', '서울특별시 중랑구 중랑천로24길 3 ~ 33', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이호영', 'm', 30, 160, 62, 'read@daum.net', '010-6789-4649', '학생', '25228', '강원도 횡성군 횡성읍 향교로3번길 2-1 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '안리원', 'f', 16, 161, 63, 'picture@gmail.com', '010-5963-8079', '아나운서', '06100', '서울특별시 강남구 선릉로115길 4 ~ 42', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류나윤', 'f', 37, 157, 63, 'network@gmail.com', '010-8097-4001', '캐디', '61757', '광주광역시 남구 야평길 1-1 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차윤진', 'm', 25, 177, 72, 'mouth@yahoo.com', '010-3760-3729', '메이크업아티스트', '03133', '서울특별시 종로구 수표로 130 ~ 134', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천희성', 'm', 35, 166, 89, 'upon_force@live.com', '010-2633-7459', '취업준비생', '06267', '서울특별시 강남구 강남대로 238 ~ 246', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이완', 'm', 23, 183, 78, 'student@live.com', '010-2461-6230', '학생', '06166', '서울특별시 강남구 삼성로100길 13 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연찬율', 'm', 37, 167, 67, 'threat_subject@yahoo.com', '010-9933-7974', '정비사', '06779', '서울특별시 서초구 강남대로12길 6 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김인혜', 'f', 45, 169, 60, 'certain@gmail.com', '010-8683-1616', '방송인', '08348', '서울특별시 구로구 개봉로11길 38-36', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차임', 'f', 35, 150, 42, 'parent@naver.com', '010-1949-1399', '학생', '05322', '서울특별시 강동구 상암로16길 46 ~ 46-6', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대규', 'm', 30, 189, 69, 'production@naver.com', '010-9781-1233', '학생', '01365', '서울특별시 도봉구 해등로36길 4 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한슬', 'f', 43, 152, 53, 'entire@live.com', '010-7330-9138', '음향및녹음기사', '06129', '서울특별시 강남구 강남대로 416 ~ 432', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정은', 'f', 26, 172, 44, 'almost@yahoo.com', '010-6113-4401', '취업준비생', '04775', '서울특별시 성동구 둘레9길 4 ~ 4-10', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정효린', 'f', 26, 166, 42, '@yahoo.com', '010-5212-6833', '학생', '06170', '서울특별시 강남구 봉은사로114길 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정안', 'f', 30, 161, 41, 'lose@live.com', '010-1261-8255', '학생', '62233', '광주광역시 광산구 고봉로 2 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지다효', 'f', 33, 172, 60, 'live@daum.net', '010-9850-6031', '건물주', '61751', '광주광역시 남구 압촌2길 2 ~ 12-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유채', 'f', 32, 161, 54, 'evidence@daum.net', '010-3419-7296', '취업준비생', '04938', '서울특별시 광진구 용마산로30길 2 ~ 62', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤오', 'm', 26, 169, 86, 'involve@gmail.com', '010-4559-1393', '내과의', '06112', '서울특별시 강남구 학동로20길 19-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구동한', 'm', 47, 174, 70, 'wonder@live.com', '010-7418-4510', '장학사', '01019', '서울특별시 강북구 삼각산로4나길 2 ~ 32-24', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤호', 'm', 42, 162, 61, 'its@gmail.com', '010-6000-2195', '항공승무원', '04364', '서울특별시 용산구 새창로35길 11 ~ 13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백은지', 'f', 46, 173, 65, 'disease@live.com', '010-6812-9239', '여론조사전문가', '12419', '경기도 가평군 가평읍 가평제방길 97 ~ 151', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차윤후', 'm', 28, 163, 74, 'identify@naver.com', '010-8289-2003', '설문조사원', '63528', '제주특별자치도 서귀포시 안덕면 사계남로216번길 1 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김예림', 'f', 48, 172, 65, 'student@live.com', '010-6840-4814', '한의사', '05211', '서울특별시 강동구 아리수로93가길 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정소윤', 'f', 37, 153, 59, 'speech@live.com', '010-9817-7853', '디자이너', '48984', '부산광역시 중구 구덕로 1 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '한초영', 'f', 40, 159, 58, 'whose@live.com', '010-7431-3829', '군인', '01483', '서울특별시 도봉구 해등로3길 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전이준', 'm', 26, 172, 89, 'hang@yahoo.com', '010-5031-6640', '신용분석가', '34428', '대전광역시 대덕구 계족로511번길 36 ~ 96', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤후', 'm', 36, 182, 70, 'me@yahoo.com', '010-3645-3493', '정형외과의', '05103', '서울특별시 광진구 자양로3길 6 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정래연', 'f', 49, 161, 60, 'sport@daum.net', '010-9300-4375', '학생', '61121', '광주광역시 북구 신촌로 27 ~ 37', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소서현', 'f', 25, 160, 43, 'director@yahoo.com', '010-9102-6421', '게임기획자', '35086', '대전광역시 중구 방아미로66번길 11 ~ 257', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수인', 'f', 42, 170, 64, 'involve@yahoo.com', '010-3581-1666', '시나리오작가', '14547', '경기도 부천시 원미구 석천로184번길 12 ~ 28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배원준', 'm', 40, 174, 86, 'realize_necessary@live.com', '010-9229-9347', '방사선사', '05255', '서울특별시 강동구 고덕로28길 10-4 ~ 52-30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성윤', 'm', 28, 177, 68, 'international@daum.net', '010-7505-6610', '외과의', '01208', '서울특별시 강북구 삼양로 118 ~ 138', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진유찬', 'm', 36, 173, 70, 'approach@gmail.com', '010-5091-4366', '취업준비생', '07784', '서울특별시 강서구 곰달래로 226 ~ 244', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황주환', 'm', 44, 163, 63, 'morning@live.com', '010-3015-1812', '학생', '61759', '광주광역시 남구 신양촌안길 5 ~ 9-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주환', 'm', 30, 177, 61, 'society@naver.com', '010-1852-3456', '방송기술감독', '04938', '서울특별시 광진구 용마산로30길 2 ~ 62', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김노윤', 'f', 38, 152, 55, 'available_social@yahoo.com', '010-8027-5894', '학생', '06608', '서울특별시 서초구 서운로 197 ~ 221', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유슬', 'f', 41, 173, 68, 'concern@live.com', '010-7428-8087', '독서지도사', '02569', '서울특별시 동대문구 약령중앙로 5 ~ 47-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세현', 'f', 39, 157, 69, 'former@live.com', '010-6551-2512', '세무사', '48947', '부산광역시 중구 광복중앙로33번길 14-2 ~ 16-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민대은', 'm', 29, 185, 80, 'easy@daum.net', '010-6472-5401', '간호사', '06131', '서울특별시 강남구 논현로 511 ~ 525', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이주', 'f', 40, 172, 67, 'fly@gmail.com', '010-8327-8166', '군인', '62270', '광주광역시 광산구 월계로 2 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다애', 'f', 28, 168, 47, 'half@gmail.com', '010-3220-5799', '버스운전사', '02511', '서울특별시 동대문구 겸재로 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정시현', 'm', 18, 185, 72, 'our@naver.com', '010-1245-1467', '양식기능사', '06139', '서울특별시 강남구 언주로97길 7 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승후', 'm', 28, 161, 82, 'blood@yahoo.com', '010-9787-9520', '외환딜러', '06267', '서울특별시 강남구 남부순환로 2609 ~ 2621', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방예주', 'f', 44, 152, 56, 'carry_quite@yahoo.com', '010-4980-1643', '기자', '01633', '서울특별시 노원구 덕릉로141가길 1 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차연아', 'f', 18, 168, 62, 'type@daum.net', '010-2814-4977', '소아과의', '11640', '경기도 의정부시 신흥로 57-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김자은', 'f', 43, 169, 63, 'through@naver.com', '010-9746-3073', '가수', '62264', '광주광역시 광산구 월계로16번길 7 ~ 81', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허진아', 'f', 32, 156, 54, 'for_ten@gmail.com', '010-1498-9875', '취업준비생', '05283', '서울특별시 강동구 천호대로219가길 5 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤택', 'm', 41, 186, 62, 'space@live.com', '010-3952-6774', '비서', '11637', '경기도 의정부시 신흥로100번길 3 ~ 43', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최현희', 'f', 16, 169, 61, 'throughout@gmail.com', '010-2654-7904', '치과의', '01641', '서울특별시 노원구 덕릉로134가길 18 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영준', 'm', 16, 160, 84, 'include@live.com', '010-3834-9099', '취업준비생', '08766', '서울특별시 관악구 조원로 48 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은오', 'f', 25, 167, 41, 'let@gmail.com', '010-4590-2345', '이미용사', '06923', '서울특별시 동작구 만양로15길 3 ~ 17-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승빈', 'm', 44, 183, 63, 'mind@naver.com', '010-2699-8875', '세무사', '01435', '서울특별시 도봉구 노해로57길 93', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동연', 'm', 47, 183, 73, 'establish@gmail.com', '010-2267-4183', '음향및녹음기사', '08767', '서울특별시 관악구 남부순환로 1443 ~ 1471', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재은', 'f', 48, 177, 46, 'allow_fine@live.com', '010-6796-5492', '감정평가사', '63528', '제주특별자치도 서귀포시 안덕면 사계남로27번길 1 ~ 10', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박하윤', 'm', 46, 174, 84, 'woman@yahoo.com', '010-1190-6770', '아나운서', '01012', '서울특별시 강북구 4.19로 58 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하성', 'm', 32, 177, 72, 'even@gmail.com', '010-3348-5597', '취업준비생', '01447', '서울특별시 도봉구 노해로60가길 2 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원원정', 'f', 22, 171, 50, 'strategy@yahoo.com', '010-7211-1410', '학생', '35266', '대전광역시 서구 갈마로147번길 4', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재아', 'f', 36, 172, 46, 'prevent@gmail.com', '010-9132-3238', '원자로조종감독자', '18304', '경기도 화성시 봉담읍 매봉로 475', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이채연', 'f', 27, 154, 62, 'legal@live.com', '010-3863-1803', '간호사', '63603', '제주특별자치도 서귀포시 토상로17번길 2 ~ 20', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동훈', 'm', 48, 180, 71, 'compare@naver.com', '010-8323-9868', '시나리오작가', '01214', '서울특별시 강북구 숭인로 3 ~ 23', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여도경', 'f', 39, 170, 68, 'sort@daum.net', '010-5455-3011', '농업기술자', '63603', '제주특별자치도 서귀포시 토상로69번길 71-11 ~ 71-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신호영', 'm', 35, 184, 74, 'federal@daum.net', '010-5084-3135', '취업준비생', '06243', '서울특별시 강남구 역삼로 115 ~ 123', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박로윤', 'f', 49, 163, 55, 'crime@live.com', '010-9264-8437', '취업준비생', '06082', '서울특별시 강남구 봉은사로113길 25 ~ 39', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강세안', 'f', 26, 169, 43, 'often@naver.com', '010-9919-8527', '택시기사', '01079', '서울특별시 강북구 수유로17나길 3 ~ 26-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추나현', 'f', 39, 161, 49, 'leave@live.com', '010-3858-2059', '뮤지컬배우', '06018', '서울특별시 강남구 압구정로50길 5-9 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권원준', 'm', 27, 169, 82, 'skin@daum.net', '010-3299-7281', '학생', '01605', '서울특별시 노원구 동일로241길 68 ~ 84', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최다희', 'f', 23, 162, 59, 'right@live.com', '010-5076-8305', '건물주자제분', '05371', '서울특별시 강동구 명일로 113 ~ 117', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이채유', 'f', 43, 179, 49, 'be@gmail.com', '010-1482-4120', '백수', '17773', '경기도 평택시 특구로 28 ~ 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤효연', 'f', 35, 170, 40, 'continue@gmail.com', '010-5164-3055', '직업상담사', '63163', '제주특별자치도 제주시 서천길 1 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세원', 'm', 21, 161, 80, 'bill_goal@daum.net', '010-6053-8189', '학생', '34428', '대전광역시 대덕구 계족로489번길 66 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄희윤', 'f', 27, 158, 46, 'mention_team@yahoo.com', '010-5600-3422', '학생', '07066', '서울특별시 동작구 신대방14가길 2 ~ 68', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도윤', 'm', 36, 179, 77, 'religious_eight@naver.com', '010-8295-2713', '사회복지사', '63323', '제주특별자치도 제주시 화삼북로 56 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최승빈', 'm', 42, 161, 89, 'character@gmail.com', '010-1782-8249', '동화작가', '63116', '제주특별자치도 제주시 오일장중길 6 ~ 115-21', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤용', 'm', 47, 160, 76, 'question@naver.com', '010-8685-3569', '이미용사', '63603', '제주특별자치도 서귀포시 토상로 2 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정혜윤', 'f', 21, 168, 45, 'line@naver.com', '010-8372-8688', '요리사', '63010', '제주특별자치도 제주시 한림읍 금능1길 2-4 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설윤아', 'f', 16, 152, 49, 'back@live.com', '010-8619-2687', '정형외과의', '05104', '서울특별시 광진구 자양로3가길 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김채유', 'f', 41, 172, 57, 'opportunity@gmail.com', '010-1279-2580', '축구선수', '08767', '서울특별시 관악구 남부순환로 1443 ~ 1471', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은율', 'f', 45, 168, 60, 'say@daum.net', '010-2189-2955', '취업준비생', '17892', '경기도 평택시 통복시장로55번길 9 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최원영', 'f', 48, 159, 53, 'save@live.com', '010-5569-2449', '학생', '61991', '광주광역시 서구 화정로 1 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태영', 'm', 40, 173, 82, 'mouth@naver.com', '010-4192-1131', '촬영기자', '24122', '강원도 화천군 상서면 구둔지길 32-6 ~ 59', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은우', 'f', 35, 158, 45, 'test@yahoo.com', '010-6191-5678', '취업준비생', '01212', '서울특별시 강북구 숭인로7가길 37', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최의찬', 'm', 17, 176, 73, 'yard_between@gmail.com', '010-1621-7670', '행사기획자', '61248', '광주광역시 북구 신임로31번길 83-2 ~ 83-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임성희', 'f', 23, 178, 54, 'rest@yahoo.com', '010-5515-6683', '학생', '04356', '서울특별시 용산구 새창로20길 1 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '나윤설', 'f', 22, 154, 61, 'city@live.com', '010-8191-1736', '세무사', '61987', '광주광역시 서구 화운로99번길 1-2 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진대연', 'm', 33, 164, 87, 'similar@yahoo.com', '010-1034-2770', '항공승무원', '63523', '제주특별자치도 서귀포시 안덕면 동광본동로33번길 5 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤오', 'm', 48, 176, 71, 'attack@daum.net', '010-8280-3071', '프로그래머', '61447', '광주광역시 동구 지호로106번길 1 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원훈', 'm', 32, 175, 69, 'understand_stage@daum.net', '010-8639-2771', '취업준비생', '49401', '부산광역시 사하구 장평로449번길 41 ~ 61', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은영', 'f', 34, 174, 41, 'child@naver.com', '010-5696-8040', '학생', '07741', '서울특별시 강서구 곰달래로 245 ~ 271', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김래윤', 'f', 27, 158, 63, 'between@gmail.com', '010-3509-5255', '취업준비생', '25228', '강원도 횡성군 횡성읍 향교로3번길 2-1 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '마성민', 'm', 38, 174, 66, 'wait@daum.net', '010-3540-6818', '음향및녹음기사', '18295', '경기도 화성시 봉담읍 매송고색로394번길 3-14', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성윤', 'm', 40, 176, 69, 'safe@naver.com', '010-1123-8849', '건물주', '62279', '광주광역시 광산구 월계로 217 ~ 223-22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태현', 'f', 16, 164, 64, 'oh@gmail.com', '010-3189-3278', '회계사', '04995', '서울특별시 광진구 천호대로104나길 2 ~ 19', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대인', 'm', 27, 164, 76, 'here@live.com', '010-7688-5990', '증권중개인', '07773', '서울특별시 강서구 곰달래로 87 ~ 111', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이설', 'f', 44, 153, 66, 'condition@daum.net', '010-3820-4143', '평생교육사', '61495', '광주광역시 동구 지원로42번길 36-2 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조우진', 'm', 31, 168, 65, 'play@naver.com', '010-2187-3459', '취업준비생', '03970', '서울특별시 마포구 월드컵로30다길 6 ~ 32', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박차영', 'f', 33, 174, 59, 'PM@naver.com', '010-5853-3679', '취업준비생', '07666', '서울특별시 강서구 공항대로58가길 20 ~ 82', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동희', 'm', 34, 173, 77, 'body@live.com', '010-9641-3724', '가구제조조립원', '24759', '강원도 고성군 토성면 장새미1길 4 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승호', 'm', 45, 172, 72, 'must@naver.com', '010-6588-8031', '물류관리사', '05401', '서울특별시 강동구 성내로 70 ~ 92', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오하영', 'f', 21, 157, 48, 'choice_whom@gmail.com', '010-1180-4255', '소설가', '06235', '서울특별시 강남구 테헤란로16길 9 ~ 17', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정두희', 'f', 31, 157, 62, 'box@daum.net', '010-2021-9275', '푸드스타일리스트', '61445', '광주광역시 동구 지호로 5 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동한', 'm', 44, 179, 80, 'cold@live.com', '010-8676-4781', '건축공학기술자', '01060', '서울특별시 강북구 도봉로102길 60 ~ 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시안', 'f', 25, 172, 56, 'ahead@live.com', '010-8186-9380', '취업준비생', '02113', '서울특별시 중랑구 중랑천로24길 3 ~ 33', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜연', 'f', 37, 175, 44, 'game@live.com', '010-2699-8318', '조경원', '62026', '광주광역시 서구 화정로 138 ~ 142', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시안', 'f', 21, 163, 57, 'legal@daum.net', '010-2948-6088', '취업준비생', '05062', '서울특별시 광진구 뚝섬로49길 11-1 ~ 44', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최아인', 'f', 25, 154, 58, 'simply@live.com', '010-9321-3589', '학생', '04992', '서울특별시 광진구 자양로39길 4 ~ 26', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준원', 'm', 44, 161, 73, 'course@live.com', '010-6475-1475', '일식요리사', '06334', '서울특별시 강남구 개포로109길 62 ~ 74', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어류아', 'f', 31, 165, 45, 'wait_guy@naver.com', '010-6360-4677', '일식요리사', '06147', '서울특별시 강남구 언주로98길 5 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하연', 'f', 42, 153, 59, 'by@daum.net', '010-7187-9987', '성형외과의', '06140', '서울특별시 강남구 논현로 512 ~ 526', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정채빈', 'f', 45, 158, 55, '@naver.com', '010-7809-3729', '축구선수', '06368', '서울특별시 강남구 광평로56길 11', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이인혜', 'f', 42, 154, 50, 'require@naver.com', '010-5636-3508', 'VJ', '03970', '서울특별시 마포구 월드컵로30길 4 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우하진', 'm', 22, 165, 88, 'including@yahoo.com', '010-7264-2712', '학생', '02594', '서울특별시 동대문구 황물로 37 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허세원', 'm', 16, 174, 70, 'sort@live.com', '010-2162-2006', '백수', '62348', '광주광역시 광산구 월곡로 6 ~ 16', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주애', 'f', 27, 158, 58, 'dinner_to@yahoo.com', '010-3418-8351', '취업준비생', '35086', '대전광역시 중구 방아미로 42 ~ 131', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지선', 'f', 49, 178, 63, 'road_true@yahoo.com', '010-1833-4806', '학생', '62279', '광주광역시 광산구 월계로 217 ~ 223-22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연희수', 'm', 45, 165, 65, 'think@daum.net', '010-6633-5067', '애널리스트', '03965', '서울특별시 마포구 월드컵로30다길 1 ~ 29', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성희', 'm', 43, 161, 70, 'camera@gmail.com', '010-3961-4619', '학생', '05210', '서울특별시 강동구 아리수로93길 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이희성', 'm', 23, 175, 68, 'we@live.com', '010-7982-5714', '보험계리인', '08859', '서울특별시 관악구 난향3길 8 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이안', 'm', 41, 176, 72, 'situation@live.com', '010-6778-4243', '교수', '04994', '서울특별시 광진구 천호대로104길 19 ~ 39', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장하연', 'f', 22, 164, 67, 'nature@daum.net', '010-5423-1642', '의무기록사', '61972', '광주광역시 서구 화운로199번길 15 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우동훈', 'm', 36, 174, 60, 'camera@gmail.com', '010-2922-5615', '취업준비생', '01127', '서울특별시 강북구 솔매로31가길 4 ~ 20', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김나연', 'f', 48, 174, 65, 'community_company@live.com', '010-8400-4841', '비서', '01454', '서울특별시 도봉구 도봉로114길 21 ~ 49', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배효설', 'f', 34, 173, 68, 'ball@gmail.com', '010-9180-1551', '취업준비생', '06252', '서울특별시 강남구 역삼로 106 ~ 114', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김자연', 'f', 36, 161, 60, 'general@live.com', '010-7903-5403', '항공기관사', '01115', '서울특별시 강북구 덕릉로24길 37 ~ 53', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예준', 'm', 16, 187, 71, 'fear_protect@daum.net', '010-5244-5274', '이미용사', '61248', '광주광역시 북구 신임로31번길 89 ~ 91', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이차은', 'f', 48, 154, 45, 'add@daum.net', '010-3553-2301', '취업준비생', '03728', '서울특별시 서대문구 모래내로 426 ~ 436', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양세비', 'f', 49, 169, 53, 'medical@live.com', '010-7605-7028', '취업준비생', '24665', '강원도 인제군 상남면 구만동길 70 ~ 147', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이위영', 'f', 27, 161, 57, 'serious@live.com', '010-2102-6347', '직업상담사', '03974', '서울특별시 마포구 성미산로15길 71', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태경', 'f', 18, 159, 42, 'memory@naver.com', '010-3446-5635', '학생', '05261', '서울특별시 강동구 상암로17길 5 ~ 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박혜율', 'f', 41, 164, 60, 'be@gmail.com', '010-5516-1556', '포토그래퍼', '46769', '부산광역시 강서구 가덕해안로2번길 2 ~ 9', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤성', 'm', 35, 179, 66, 'sport@gmail.com', '010-4797-1916', '정형외과의', '07518', '서울특별시 강서구 방화대로 408', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구영헌', 'm', 19, 160, 80, 'between_every@daum.net', '010-1416-7701', '제과제빵사', '06147', '서울특별시 강남구 언주로94길 5 ~ 15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천수혁', 'm', 40, 183, 82, 'wall@naver.com', '010-8108-1727', '백수', '61189', '광주광역시 북구 호동로15번길 6 ~ 8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤도', 'm', 41, 187, 68, 'send_nice@naver.com', '010-5143-9641', '취업준비생', '06170', '서울특별시 강남구 봉은사로114길 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박시연', 'f', 20, 173, 61, 'production@live.com', '010-6972-4340', '택시기사', '24664', '강원도 인제군 상남면 상남로38번길 2 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박두율', 'f', 47, 164, 42, 'college@naver.com', '010-6148-4610', '항공기장', '01178', '서울특별시 강북구 솔샘로53길 4 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주아', 'f', 21, 179, 65, 'artist@live.com', '010-8630-5312', '학생', '61960', '광주광역시 서구 상무화원로23번길 5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정두환', 'm', 17, 180, 70, 'able@gmail.com', '010-2673-4987', '감정평가사', '06149', '서울특별시 강남구 선릉로103길 3 ~ 11', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연욱', 'm', 31, 181, 66, 'continue@gmail.com', '010-1263-7019', '일식요리사', '06338', '서울특별시 강남구 개포로 626 ~ 638', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소초윤', 'f', 40, 166, 69, 'character@naver.com', '010-5939-7805', '금융자산운용가', '01742', '서울특별시 노원구 중계로19길 16 ~ 44', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '도동원', 'm', 31, 186, 67, 'season@yahoo.com', '010-4078-3636', '취업준비생', '06239', '서울특별시 강남구 테헤란로14길 26 ~ 48', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강예준', 'm', 21, 187, 87, 'such@naver.com', '010-6494-4989', '한의사', '17891', '경기도 평택시 통복시장로 36 ~ 42-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은정', 'f', 22, 154, 62, 'create@naver.com', '010-7270-2755', '외환딜러', '24665', '강원도 인제군 상남면 미덕길 20 ~ 227-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤주', 'f', 47, 156, 42, 'never@daum.net', '010-5190-5935', '원예기술자', '63303', '제주특별자치도 제주시 화삼북로2길 9 ~ 32', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명영혜', 'f', 39, 173, 41, 'where@daum.net', '010-8459-9801', '학생', '48952', '부산광역시 중구 광복로97번길 1 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어노윤', 'f', 49, 178, 58, 'nor@yahoo.com', '010-6816-4860', '칼럼니스트', '48951', '부산광역시 중구 광복로85번길 9-1 ~ 17-4', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백윤기', 'm', 41, 172, 86, 'half@daum.net', '010-5052-7865', '건물주자제분', '06524', '서울특별시 서초구 강남대로101안길 2 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김애슬', 'f', 47, 178, 42, 'sort@naver.com', '010-4278-7841', '취업준비생', '34390', '대전광역시 대덕구 중리북로37번길 63 ~ 110', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현서', 'f', 49, 154, 43, 'argue_air@gmail.com', '010-4321-5969', '가구제조조립원', '08704', '서울특별시 관악구 조원로 143 ~ 183', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정민건', 'm', 26, 165, 70, 'kid@daum.net', '010-8475-2372', '구성작가', '08829', '서울특별시 관악구 서림1길 31 ~ 71', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영현', 'f', 39, 173, 61, 'doctor@daum.net', '010-6824-9056', '캐디', '06642', '서울특별시 서초구 서리풀6길 10-3 ~ 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백주훈', 'm', 20, 170, 79, 'picture@naver.com', '010-2776-6558', '학생', '06044', '서울특별시 강남구 학동로1길 5 ~ 22', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김대인', 'm', 44, 183, 85, 'travel_professor@gmail.com', '010-1737-4617', '방송인', '63322', '제주특별자치도 제주시 화삼로 166 ~ 167', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재현', 'm', 29, 181, 78, 'eight_like@yahoo.com', '010-6335-4372', '호텔경영사', '06248', '서울특별시 강남구 역삼로 166 ~ 180', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주은', 'f', 33, 157, 62, 'page_become@daum.net', '010-7888-2585', '양식기능사', '03192', '서울특별시 종로구 수표로18가길 4 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최하율', 'm', 43, 166, 89, 'follow@naver.com', '010-7631-3614', '학생', '06524', '서울특별시 서초구 강남대로107길 5 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주효설', 'f', 20, 156, 68, 'position@yahoo.com', '010-5277-4528', '어부', '34394', '대전광역시 대덕구 중리로7번길 6 ~ 80', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천은정', 'f', 34, 163, 44, 'white@naver.com', '010-7973-8442', '학생', '03664', '서울특별시 서대문구 증가로8길 42-5', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표윤채', 'm', 29, 188, 88, 'list@yahoo.com', '010-7567-2820', '아나운서', '03693', '서울특별시 서대문구 모래내로 209 ~ 247', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국도영', 'f', 18, 153, 49, 'Congress_of@yahoo.com', '010-8203-9441', '무대디자이너', '06190', '서울특별시 강남구 도곡로 515 ~ 531', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '안승호', 'm', 36, 172, 73, 'this@yahoo.com', '010-9560-6337', '취업준비생', '63154', '제주특별자치도 제주시 서사로2길 8 ~ 30', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최아윤', 'f', 27, 169, 68, 'crime_southern@yahoo.com', '010-6493-7702', '보험계리인', '49400', '부산광역시 사하구 장평로443번길 59 ~ 78', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이채현', 'f', 49, 170, 44, 'because@live.com', '010-8858-4544', '건물주자제분', '46770', '부산광역시 강서구 가덕해안로821번길 13 ~ 147', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유진', 'f', 44, 160, 40, 'war@daum.net', '010-7472-2208', '기자', '03315', '서울특별시 은평구 갈현로43길 1 ~ 22-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권성한', 'm', 40, 186, 85, 'compare@live.com', '010-7260-1726', '건물주', '05102', '서울특별시 광진구 자양로3길 26 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하예설', 'f', 45, 165, 57, 'machine_drug@naver.com', '010-9099-1306', '호텔경영사', '63116', '제주특별자치도 제주시 오일장동길 2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은률', 'm', 40, 162, 72, 'explain@daum.net', '010-7292-5070', '학생', '61751', '광주광역시 남구 압촌길 48-1 ~ 125', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장예정', 'f', 38, 178, 43, 'when_listen@yahoo.com', '010-6270-7667', '은행원', '01440', '서울특별시 도봉구 노해로57길 6 ~ 14', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승빈', 'f', 27, 156, 68, 'story@naver.com', '010-8550-9551', '방송작가', '34121', '대전광역시 유성구 대덕대로560번길 5 ~ 40', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이진혁', 'm', 43, 176, 66, 'heat_size@yahoo.com', '010-4310-5085', '택시기사', '48949', '부산광역시 중구 광복로67번길 30-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재빈', 'f', 27, 173, 51, 'avoid@live.com', '010-8937-1651', '법무사', '05318', '서울특별시 강동구 상암로12길 4 ~ 42', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민성', 'm', 39, 171, 78, 'lay@yahoo.com', '010-5128-5808', '취업준비생', '06224', '서울특별시 강남구 역삼로 205 ~ 229', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주아', 'f', 19, 152, 61, 'data@daum.net', '010-7305-8942', '음향및녹음기사', '07642', '서울특별시 강서구 수명로2길 16', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다나', 'f', 27, 177, 43, 'true@daum.net', '010-1391-6150', '성우', '61121', '광주광역시 북구 신촌로23번길 2 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이혜선', 'f', 22, 164, 54, 'relationship@naver.com', '010-5026-8038', '중식요리사', '03657', '서울특별시 서대문구 모래내로 303-25 ~ 329', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소노영', 'f', 19, 152, 55, 'wall@gmail.com', '010-2615-5608', '취업준비생', '06984', '서울특별시 동작구 현충로 250', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이윤', 'f', 16, 175, 65, 'just_tell@naver.com', '010-2748-1215', '백수', '61163', '광주광역시 북구 밤실로167번길 1 ~ 16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원찬', 'm', 19, 167, 76, 'late@daum.net', '010-7572-7566', '게임기획자', '04366', '서울특별시 용산구 새창로42길 5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장수애', 'f', 17, 176, 69, 'especially@gmail.com', '010-6754-8095', '조경원', '01444', '서울특별시 도봉구 도봉로113길 43 ~ 60', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기화설', 'f', 20, 177, 48, 'administration@naver.com', '010-8522-8170', '취업준비생', '47580', '부산광역시 연제구 대리로5번길 4 ~ 32', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은희', 'f', 44, 159, 50, 'be@daum.net', '010-9104-6162', '무대디자이너', '01047', '서울특별시 강북구 노해로23길 53 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태율', 'm', 44, 184, 70, 'wonder@daum.net', '010-7918-8986', '시조시인', '05206', '서울특별시 강동구 아리수로87길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정시애', 'f', 44, 174, 62, 'fact@yahoo.com', '010-4649-7509', '금융자산운용가', '05105', '서울특별시 광진구 자양로3길 31 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김지현', 'f', 23, 171, 41, 'authority@gmail.com', '010-7747-9443', '소설가', '61190', '광주광역시 북구 호동로34번길 1 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이솔빈', 'f', 42, 176, 49, 'share_beyond@naver.com', '010-3067-9311', '금융자산운용가', '04920', '서울특별시 광진구 천호대로101길 5 ~ 27-2', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동영', 'm', 16, 189, 67, 'item@gmail.com', '010-6815-3765', '백수', '08769', '서울특별시 관악구 조원로 4 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예율', 'f', 40, 157, 47, 'admit@yahoo.com', '010-2041-1701', '학생', '48952', '부산광역시 중구 광복로67번길 30-10', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표세빈', 'f', 19, 167, 57, 'respond@gmail.com', '010-1810-3595', '취업준비생', '17548', '경기도 안성시 공도읍 문터1길 6', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정현우', 'm', 39, 171, 61, 'try@live.com', '010-6302-7632', '장학사', '01173', '서울특별시 강북구 삼양로 194 ~ 208', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김리원', 'f', 39, 159, 60, 'if_consider@daum.net', '010-6149-5513', '이미용사', '17879', '경기도 평택시 통복시장로54번길 33 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은후', 'm', 21, 168, 63, 'charge@gmail.com', '010-4796-8151', '건물주자제분', '61162', '광주광역시 북구 밤실로191번길 6 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동연', 'm', 43, 173, 78, 'form_group@gmail.com', '010-5025-6483', '학생', '61189', '광주광역시 북구 호동로15번길 6 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효성', 'm', 18, 177, 67, 'cause@daum.net', '010-2904-3196', '방사선사', '01633', '서울특별시 노원구 덕릉로141가길 1 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은후', 'm', 43, 168, 67, 'always@gmail.com', '010-2498-8391', '의사', '04550', '서울특별시 중구 을지로12길 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금재우', 'm', 22, 185, 72, 'which@live.com', '010-6607-3709', 'PD', '63296', '제주특별자치도 제주시 화남로 66 ~ 72', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다혜', 'f', 23, 164, 65, 'minute_information@daum.net', '010-5393-7296', '전화교환원', '06333', '서울특별시 강남구 개포로 625', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍선우', 'm', 48, 174, 88, 'name@yahoo.com', '010-4545-2928', '공무원', '02597', '서울특별시 동대문구 황물로 62', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준우', 'm', 27, 160, 63, 'call@daum.net', '010-5391-2845', '취업준비생', '63277', '제주특별자치도 제주시 중앙로3길 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이한', 'f', 26, 167, 44, 'about@yahoo.com', '010-3395-7650', '취업준비생', '06261', '서울특별시 강남구 도곡로18길 3 ~ 4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동훈', 'm', 28, 162, 83, 'know@live.com', '010-1526-4981', '정형외과의', '61239', '광주광역시 북구 버들로 25 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동희', 'm', 23, 188, 78, 'color_others@yahoo.com', '010-6833-1369', '도선사', '05213', '서울특별시 강동구 아리수로94길 19 ~ 91', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최연욱', 'm', 26, 182, 76, 'guy@naver.com', '010-4290-1561', '사회복지사', '04727', '서울특별시 성동구 금호로 154', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염채아', 'f', 30, 179, 43, 'step@naver.com', '010-7371-6267', '취업준비생', '18436', '경기도 화성시 동탄공원로 24 ~ 36', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재찬', 'm', 26, 174, 71, 'good@daum.net', '010-1286-7062', '주유원', '02135', '서울특별시 중랑구 중랑천로2길 67 ~ 74', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영하', 'f', 37, 152, 56, 'wear@yahoo.com', '010-3305-3482', '기자', '61163', '광주광역시 북구 밤실로169번길 10-2 ~ 16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '은성연', 'f', 41, 159, 48, 'family@yahoo.com', '010-1494-5799', '취업준비생', '05209', '서울특별시 강동구 아리수로97길 20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박나현', 'f', 39, 176, 54, 'hotel_there@gmail.com', '010-1680-3606', '학생', '49484', '부산광역시 사하구 장평로41번길 16 ~ 94', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주윤설', 'f', 17, 162, 51, 'boy_generation@live.com', '010-8791-8325', '학생', '61960', '광주광역시 서구 상무화원로 1 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이희예', 'f', 32, 169, 60, 'whole@live.com', '010-5896-6682', '어부', '01078', '서울특별시 강북구 수유로23길 37 ~ 57', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박서희', 'f', 36, 159, 60, 'impact@live.com', '010-9067-8210', '백수', '05361', '서울특별시 강동구 진황도로 145 ~ 151-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정우준', 'm', 30, 178, 85, 'family_morning@live.com', '010-2693-1717', '여론조사전문가', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재은', 'f', 37, 177, 49, 'visit@yahoo.com', '010-2568-3665', '백수', '06900', '서울특별시 동작구 노들로 618 ~ 756', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤열', 'm', 37, 170, 75, 'often@daum.net', '010-2638-2316', 'IT컨설턴트', '03318', '서울특별시 은평구 갈현로41길 3 ~ 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명효설', 'f', 19, 160, 41, 'late@naver.com', '010-8550-9066', '임상병리사', '01814', '서울특별시 노원구 공릉로 192 ~ 208', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방성혁', 'm', 30, 162, 68, 'whose_enjoy@naver.com', '010-8289-3372', '치과기공사', '08859', '서울특별시 관악구 난향3길 8 ~ 46', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이훈', 'm', 49, 164, 84, 'collection@live.com', '010-7120-1295', '은행원', '34058', '대전광역시 유성구 대덕대로905번길 8 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변태영', 'm', 39, 172, 81, 'green@yahoo.com', '010-1418-4367', '학생', '03974', '서울특별시 마포구 성미산로15길 71', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하정', 'f', 47, 160, 46, 'tell@live.com', '010-5177-5968', '극작가', '08782', '서울특별시 관악구 장군봉길 6 ~ 72', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김재연', 'f', 22, 171, 41, 'not@live.com', '010-2001-7815', '음악치료사', '18297', '경기도 화성시 봉담읍 매송고색로422번길 20 ~ 60', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염인아', 'f', 19, 156, 41, 'win@live.com', '010-8191-8951', '취업준비생', '06044', '서울특별시 강남구 학동로1길 5 ~ 22', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤교', 'm', 23, 175, 87, 'material@daum.net', '010-9562-3710', '양식요리사', '04924', '서울특별시 광진구 용마산로3길 6 ~ 32', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시은', 'f', 39, 169, 61, 'win@live.com', '010-9959-7146', '학생', '35266', '대전광역시 서구 갈마로147번길 30', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주승윤', 'f', 43, 179, 52, 'member@yahoo.com', '010-6270-2726', '시인', '63010', '제주특별자치도 제주시 한림읍 금능2길 1 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동현', 'm', 29, 169, 69, 'arrive@yahoo.com', '010-4822-7285', '가구제조수리원', '06681', '서울특별시 서초구 방배로15길 38 ~ 58', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지영', 'f', 39, 157, 61, 'animal@live.com', '010-9171-8814', '취업준비생', '08782', '서울특별시 관악구 장군봉8길 2 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이장현', 'm', 33, 186, 65, 'enter@gmail.com', '010-6191-7759', '학생', '08767', '서울특별시 관악구 남부순환로 1443 ~ 1471', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문민건', 'm', 34, 163, 80, 'interview@gmail.com', '010-9800-4037', '취업준비생', '06582', '서울특별시 서초구 동광로33길 39 ~ 40', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태헌', 'm', 34, 181, 80, 'open@live.com', '010-4333-5805', '시조시인', '17549', '경기도 안성시 공도읍 만수로 4 ~ 59-45', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이현', 'f', 39, 166, 42, 'place@yahoo.com', '010-7654-4931', '취업준비생', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원영', 'm', 19, 185, 61, 'popular@live.com', '010-8481-9616', '프로골퍼', '18334', '경기도 화성시 봉담읍 모세골길 2-7 ~ 41', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성혁', 'm', 39, 171, 76, 'trouble@gmail.com', '010-8514-7643', '측량기술자', '34411', '대전광역시 대덕구 계족로574번길 16 ~ 64', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박한나', 'f', 45, 170, 59, 'never@daum.net', '010-8740-8779', '사회복지사', '06021', '서울특별시 강남구 도산대로45길 5-5 ~ 10-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조자윤', 'f', 20, 164, 64, 'me@yahoo.com', '010-1021-1577', '학생', '01483', '서울특별시 도봉구 해등로3길 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서원일', 'm', 29, 165, 74, 'must@live.com', '010-4945-3729', '공예가연구원', '47112', '부산광역시 부산진구 성지로104번가길 4 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예주', 'f', 18, 176, 69, 'prove_place@yahoo.com', '010-5286-6894', '치과의', '25221', '강원도 횡성군 횡성읍 화성로 3 ~ 27-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이호', 'm', 44, 168, 89, 'happen@yahoo.com', '010-9777-8231', '방송작가', '63016', '제주특별자치도 제주시 한림읍 금능남로 128 ~ 446', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효성', 'm', 26, 178, 86, 'within@naver.com', '010-8173-9395', '취업준비생', '61189', '광주광역시 북구 호동로43번길 21 ~ 23', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정승준', 'm', 38, 175, 84, 'staff@yahoo.com', '010-3522-1418', '금융자산운용가', '06020', '서울특별시 강남구 압구정로46길 42 ~ 77', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승이', 'f', 29, 168, 67, 'available@live.com', '010-5657-4804', '조경원', '61963', '광주광역시 서구 상무평화로 89 ~ 118', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정혜주', 'f', 33, 161, 57, 'memory@daum.net', '010-3305-7946', '검사', '02478', '서울특별시 동대문구 약령중앙로12길 1 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최설빈', 'f', 38, 150, 55, 'hold@naver.com', '010-3244-9925', '원자로조종감독자', '01730', '서울특별시 노원구 중계로2길 50 ~ 78-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염수연', 'f', 41, 173, 52, 'begin@gmail.com', '010-6829-6894', '위생사', '05399', '서울특별시 강동구 성내로14길 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주송윤', 'f', 29, 152, 62, 'moment_hit@live.com', '010-3772-5597', '가구제조조립원', '06082', '서울특별시 강남구 봉은사로105길 12-7 ~ 12-11', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변두윤', 'f', 41, 165, 63, 'minute@naver.com', '010-7708-3966', '직업상담사', '07739', '서울특별시 강서구 등촌로13바길 3 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석대권', 'm', 46, 179, 64, 'writer_television@naver.com', '010-4098-6526', '취업준비생', '01194', '서울특별시 강북구 솔샘로50길 4 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍두윤', 'm', 43, 174, 61, 'all@daum.net', '010-9541-5409', '엔지니어', '03315', '서울특별시 은평구 갈현로45가길 1 ~ 27-2', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박수애', 'f', 29, 170, 62, 'leg@yahoo.com', '010-7272-7888', '취업준비생', '61913', '광주광역시 서구 화운로334번길 4 ~ 11', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은섭', 'm', 17, 178, 89, 'better@daum.net', '010-4970-4085', '독서지도사', '18469', '경기도 화성시 동탄기흥로 550 ~ 608', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원형', 'm', 47, 161, 69, 'people@live.com', '010-6352-8898', '학생', '05260', '서울특별시 강동구 올림픽로98가길 68 ~ 72', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채정아', 'f', 39, 158, 69, 'dinner_cover@daum.net', '010-7927-7666', '학생', '62265', '광주광역시 광산구 월계로 74 ~ 94', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설유연', 'f', 32, 169, 50, 'style@live.com', '010-8256-1259', '속기사', '04801', '서울특별시 성동구 광나루로9길 2 ~ 8', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양원형', 'm', 24, 166, 86, 'whatever@live.com', '010-2761-2185', '학생', '24665', '강원도 인제군 상남면 구만동길 70 ~ 147', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은설', 'f', 22, 175, 64, 'instead@gmail.com', '010-2390-3392', '학생', '04010', '서울특별시 마포구 포은로8길 5 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정선희', 'f', 25, 152, 62, 'rule@daum.net', '010-4332-2151', '농업기술자', '04550', '서울특별시 중구 을지로12길 27 ~ 27-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영찬', 'm', 32, 187, 86, 'watch@yahoo.com', '010-6235-8080', '내과의', '08859', '서울특별시 관악구 난향2길 5 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최다윤', 'f', 26, 159, 65, 'system@gmail.com', '010-1079-7460', '감정평가사', '25627', '강원도 강릉시 강동면 범울재길 6 ~ 26-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민진', 'm', 44, 182, 83, 'national_industry@gmail.com', '010-8535-5546', '학생', '04793', '서울특별시 성동구 성수일로12길 4 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김재우', 'm', 32, 184, 80, 'economic@gmail.com', '010-3207-8171', '직업상담사', '03616', '서울특별시 서대문구 세검정로1길 61-14 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다형', 'm', 42, 189, 82, 'two@daum.net', '010-8682-9096', '학생', '08654', '서울특별시 금천구 시흥대로12길 10 ~ 36', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예진', 'f', 30, 171, 46, 'experience@naver.com', '010-6049-1890', '물류관리사', '34354', '대전광역시 대덕구 계족로 743 ~ 760', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세비', 'f', 45, 179, 61, 'lie_ahead@live.com', '010-6343-9651', '구성작가', '11636', '경기도 의정부시 신흥로 71 ~ 103-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유영', 'f', 24, 168, 64, 'bad@naver.com', '010-6319-4804', '학생', '18471', '경기도 화성시 동탄기흥로 536-23 ~ 536-25', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원태율', 'm', 22, 168, 67, 'traditional@yahoo.com', '010-1486-8924', '취업준비생', '03318', '서울특별시 은평구 갈현로41나길 5 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤주', 'f', 48, 164, 42, 'event@yahoo.com', '010-1665-4507', '원예기술자', '08581', '서울특별시 금천구 독산로73길 9 ~ 33', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권동윤', 'm', 42, 169, 82, 'throughout_doctor@daum.net', '010-3362-4599', '간호조무사', '63526', '제주특별자치도 서귀포시 안덕면 병악로404번길 6-5', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최여환', 'm', 42, 182, 81, 'Mr_surface@live.com', '010-2400-4815', '취업준비생', '08787', '서울특별시 관악구 쑥고개로 123 ~ 139', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연영설', 'f', 22, 164, 69, 'continue_today@gmail.com', '010-1163-6580', '외과의', '05304', '서울특별시 강동구 천중로53길 6 ~ 32', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세은', 'f', 17, 152, 57, 'check_stop@yahoo.com', '010-6427-1835', '보험계리인', '07733', '서울특별시 강서구 등촌로13나길 25 ~ 41', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박채이', 'f', 25, 156, 54, 'simply@naver.com', '010-3173-2494', '음악치료사', '61447', '광주광역시 동구 지호로127번길 3-10 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유신', 'm', 23, 178, 63, 'data@naver.com', '010-3131-2437', '취업준비생', '05103', '서울특별시 광진구 자양로3길 6 ~ 24', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은률', 'm', 27, 172, 78, 'employee_live@naver.com', '010-4878-4309', '비서', '61991', '광주광역시 서구 화정로 1 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유현', 'm', 37, 162, 80, 'too@live.com', '010-3331-7105', '어부', '24666', '강원도 인제군 상남면 내린천로 1130 ~ 2410', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤찬영', 'm', 30, 165, 89, 'near@yahoo.com', '010-4016-4615', '의사', '25364', '강원도 평창군 방림면 하우골길 5-12 ~ 111-30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영지', 'f', 29, 161, 50, 'nation@yahoo.com', '010-7474-9508', '해양환경기사', '46769', '부산광역시 강서구 가덕해안로2번가길 10 ~ 135', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전효헌', 'm', 41, 184, 64, 'growth@daum.net', '010-4451-3804', '운동감독', '08317', '서울특별시 구로구 구로동로7다길 28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김성민', 'm', 45, 166, 60, 'since@yahoo.com', '010-1220-6723', '선물중개인', '01810', '서울특별시 노원구 공릉로 264', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도윤', 'f', 42, 177, 42, 'require@gmail.com', '010-8748-2377', '캐디', '06082', '서울특별시 강남구 봉은사로109길 18 ~ 22-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장민진', 'm', 42, 185, 71, 'culture@yahoo.com', '010-7776-2825', '노무사', '61451', '광주광역시 동구 지호로 54 ~ 98-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김연우', 'f', 35, 151, 53, 'news@naver.com', '010-7486-7362', '취업준비생', '04039', '서울특별시 마포구 홍익로 23 ~ 25', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대권', 'm', 28, 168, 85, 'report_black@live.com', '010-1355-1935', '항공기관사', '24102', '강원도 화천군 상서면 가둔지길 52-13 ~ 144', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김시원', 'm', 21, 169, 61, 'attention@daum.net', '010-2342-7689', '학생', '06983', '서울특별시 동작구 현충로10길 101 ~ 109', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최효은', 'f', 19, 157, 66, 'cover@gmail.com', '010-1804-3588', '학생', '04920', '서울특별시 광진구 천호대로101길 29 ~ 33', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조영재', 'm', 23, 176, 83, 'mean@yahoo.com', '010-1315-5600', '취업준비생', '12523', '경기도 양평군 용문면 용문시장6길 1 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강서훈', 'm', 33, 180, 72, 'save_federal@naver.com', '010-2493-6322', '학생', '04801', '서울특별시 성동구 광나루로9가길 3 ~ 24', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조이주', 'f', 19, 170, 44, 'clear_financial@gmail.com', '010-1179-4617', '카피라이터', '01455', '서울특별시 도봉구 도봉로112길 12 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국자연', 'f', 42, 170, 60, 'second@live.com', '010-9720-3060', '백수', '35062', '대전광역시 중구 범골로 10 ~ 20', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이준', 'm', 39, 162, 78, 'high@yahoo.com', '010-7617-3923', '광고및홍보전문가', '24158', '강원도 화천군 사내면 화악산로 885 ~ 909-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현한나', 'f', 16, 155, 57, 'per@gmail.com', '010-5140-3434', '방송기술감독', '34121', '대전광역시 유성구 대덕대로590번길 11-10 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁원영', 'm', 21, 166, 67, 'southern_allow@gmail.com', '010-8475-9512', '학생', '47103', '부산광역시 부산진구 성지로 148 ~ 160', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정슬민', 'f', 29, 164, 67, 'discover@gmail.com', '010-4875-5280', '전화교환원', '05330', '서울특별시 강동구 구천면로36길 2 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동인', 'm', 40, 180, 63, 'heavy_visit@naver.com', '010-8760-6603', '학생', '02114', '서울특별시 중랑구 중랑천로29길 9 ~ 49', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최설윤', 'f', 24, 153, 67, 'design@gmail.com', '010-9532-4887', '군인', '08774', '서울특별시 관악구 신원로5길 13 ~ 61', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전윤후', 'm', 44, 171, 88, 'what_food@daum.net', '010-7617-7726', '외환딜러', '12518', '경기도 양평군 용문면 용문삼성로101번길 1 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '나한영', 'f', 44, 178, 65, 'laugh@naver.com', '010-7719-9631', '학생', '61763', '광주광역시 남구 신장2안길 2 ~ 60', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이준', 'm', 35, 165, 82, 'maintain@live.com', '010-8587-4336', '건물주자제분', '34121', '대전광역시 유성구 대덕대로560번길 5 ~ 40', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박여준', 'm', 40, 164, 71, 'agree@naver.com', '010-1787-7125', '건물주', '03622', '서울특별시 서대문구 세검정로 60 ~ 74-18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원호', 'm', 36, 161, 71, 'account@gmail.com', '010-1669-7887', '중식요리사', '63116', '제주특별자치도 제주시 오일장중길 128 ~ 145', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석서환', 'm', 20, 161, 81, 'president@naver.com', '010-6103-8822', '애완동물미용사', '01019', '서울특별시 강북구 삼각산로4나길 2 ~ 32-24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤주', 'f', 48, 164, 68, 'marriage@yahoo.com', '010-9882-2466', '학생', '06190', '서울특별시 강남구 도곡로 515 ~ 531', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재영', 'm', 18, 165, 87, 'hear@daum.net', '010-1221-1779', '초중고교교사', '06350', '서울특별시 강남구 광평로9길 3 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현준', 'm', 49, 176, 83, 'peace@yahoo.com', '010-3991-9039', '학생', '07506', '서울특별시 강서구 방화대로 94 ~ 96', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위동현', 'm', 45, 189, 79, 'thus@live.com', '010-9169-1973', '섬유공학기술자', '04996', '서울특별시 광진구 능동로35길 18 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정한슬', 'f', 41, 150, 50, 'nice@yahoo.com', '010-8172-9289', '시인', '01435', '서울특별시 도봉구 노해로57길 93', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임은찬', 'm', 30, 177, 79, 'participant@gmail.com', '010-4590-7541', '금융자산운용가', '06081', '서울특별시 강남구 봉은사로109길 34 ~ 46', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이지혁', 'm', 16, 164, 89, 'standard@yahoo.com', '010-8791-5217', '중식요리사', '06950', '서울특별시 동작구 상도로19길 41-9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태은', 'm', 45, 183, 82, 'could@yahoo.com', '010-3559-6709', '취업준비생', '07767', '서울특별시 강서구 가로공원로78길 64 ~ 94', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최연영', 'f', 42, 178, 51, 'knowledge@live.com', '010-6550-3889', '치과의', '61926', '광주광역시 서구 천변좌로306번길 2 ~ 15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동해', 'm', 33, 164, 62, 'private@live.com', '010-1396-3376', '취업준비생', '05227', '서울특별시 강동구 동남로83길 49 ~ 94', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤렬', 'm', 32, 164, 75, 'might_word@live.com', '010-1407-8292', '측량기술자', '04915', '서울특별시 광진구 긴고랑로14길 33 ~ 60', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박현솔', 'f', 21, 176, 57, 'tend@gmail.com', '010-4658-5995', '학생', '18435', '경기도 화성시 동탄공원로2길 7 ~ 45', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은오', 'm', 19, 176, 72, 'American@naver.com', '010-6618-2541', '건물주자제분', '01150', '서울특별시 강북구 오현로 163 ~ 165-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오동희', 'm', 18, 183, 61, 'case_area@yahoo.com', '010-4013-4477', '학생', '03318', '서울특별시 은평구 갈현로41나길 4-3', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박래환', 'm', 34, 171, 80, 'material@daum.net', '010-7838-2458', '조명감독', '63322', '제주특별자치도 제주시 화삼로 166 ~ 167', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배예은', 'f', 34, 166, 46, 'might@live.com', '010-3998-4582', '설문조사원', '61121', '광주광역시 북구 신촌로23번길 2 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전서현', 'f', 43, 169, 48, 'response_street@yahoo.com', '010-5625-1290', '취업준비생', '06176', '서울특별시 강남구 영동대로76길 8 ~ 12', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽서아', 'f', 23, 152, 57, 'plan@live.com', '010-1946-7136', '백수', '48948', '부산광역시 중구 광복로55번길 1 ~ 8-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배래원', 'm', 29, 160, 88, 'writer@daum.net', '010-1135-4185', '중식요리사', '08772', '서울특별시 관악구 문성로 107 ~ 119', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동언', 'm', 20, 178, 75, 'my@naver.com', '010-8773-8354', '건물주자제분', '61446', '광주광역시 동구 지호로 224 ~ 225', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강지호', 'm', 48, 173, 85, 'save@live.com', '010-7970-8034', '회계사', '61741', '광주광역시 남구 신효천2길 9 ~ 48', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원대훈', 'm', 45, 184, 62, 'sing@daum.net', '010-9343-4252', '피부관리사', '17892', '경기도 평택시 통복시장로54번길 3 ~ 29', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남은섭', 'm', 18, 171, 78, 'international@naver.com', '010-3844-8445', '칼럼니스트', '47122', '부산광역시 부산진구 성지로 48 ~ 60', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '손은우', 'm', 31, 176, 86, 'government@live.com', '010-5424-1813', '전화교환원', '08859', '서울특별시 관악구 난향5길 2 ~ 43', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류한성', 'm', 45, 163, 86, 'central@live.com', '010-8407-3580', '시나리오작가', '06582', '서울특별시 서초구 동광로27길 6 ~ 88', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정루아', 'f', 18, 161, 66, 'same_federal@gmail.com', '010-1650-8071', '취업준비생', '05323', '서울특별시 강동구 올림픽로92길 6 ~ 16', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정정연', 'f', 35, 174, 59, 'drug@live.com', '010-5201-2356', '백수', '05366', '서울특별시 강동구 명일로 146 ~ 166', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현영', 'f', 36, 153, 41, 'study@gmail.com', '010-4436-3872', '뮤지컬배우', '01733', '서울특별시 노원구 중계로2가길 1 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기원일', 'm', 28, 172, 68, 'legal@yahoo.com', '010-6039-8084', '장의사', '11664', '경기도 의정부시 신흥로 326', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주소희', 'f', 19, 154, 61, 'know@live.com', '010-2978-5566', '건물주자제분', '08317', '서울특별시 구로구 구로동로7다길 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정대언', 'm', 48, 185, 89, 'dead@naver.com', '010-9988-3255', '노무사', '63299', '제주특별자치도 제주시 화남로 37 ~ 71', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석동율', 'm', 44, 166, 63, 'onto@live.com', '010-5522-6531', '취업준비생', '17894', '경기도 평택시 통복시장로16번길 3 ~ 35', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원호', 'm', 24, 172, 68, 'whose@live.com', '010-1512-1002', '학생', '04994', '서울특별시 광진구 천호대로102길 4 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은우', 'f', 34, 166, 46, 'he@yahoo.com', '010-4182-8390', '음악치료사', '03653', '서울특별시 서대문구 모래내로 364 ~ 369', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김주현', 'f', 47, 174, 54, 'everybody@live.com', '010-1031-3185', '학생', '16218', '경기도 수원시 장안구 창룡대로207번길 8 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영후', 'm', 39, 172, 75, 'table@live.com', '010-9457-5665', '전화교환원', '18304', '경기도 화성시 봉담읍 매봉로 475', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민준', 'm', 36, 163, 82, 'number@daum.net', '010-3315-4462', '프로그래머', '05018', '서울특별시 광진구 아차산로33길 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최채민', 'f', 42, 165, 48, 'early_bit@gmail.com', '010-2382-4902', '취업준비생', '06127', '서울특별시 강남구 테헤란로13길 55 ~ 65', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동혜', 'm', 40, 174, 71, 'over@daum.net', '010-8750-4674', '계산원', '25230', '강원도 횡성군 횡성읍 횡성로 340 ~ 390', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권시애', 'f', 39, 169, 45, 'develop_collection@daum.net', '010-4396-1270', '은행원', '16217', '경기도 수원시 장안구 창훈로 24 ~ 32', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은영', 'f', 30, 170, 52, 'yet@daum.net', '010-6544-1603', '취업준비생', '06209', '서울특별시 강남구 도곡로 443 ~ 457', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유연', 'f', 38, 152, 69, 'try@yahoo.com', '010-5819-3015', '구급대원', '06057', '서울특별시 강남구 도산대로50길 54', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은규', 'm', 17, 172, 69, 'everyone@gmail.com', '010-3409-4966', '건물주', '06529', '서울특별시 서초구 신반포로43길 23-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임연우', 'f', 44, 158, 65, 'or@yahoo.com', '010-6082-2558', '방송인', '01443', '서울특별시 도봉구 노해로60길 43 ~ 69', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원일', 'm', 41, 166, 76, 'article@gmail.com', '010-9175-9825', '의사', '01047', '서울특별시 강북구 노해로27길 47 ~ 109', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동헌', 'm', 39, 162, 80, 'address@live.com', '010-7728-9638', '촬영기자', '11683', '경기도 의정부시 신흥로 345 ~ 365', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤설', 'f', 42, 175, 49, 'share@daum.net', '010-5658-3751', '학생', '62265', '광주광역시 광산구 월계로 74 ~ 94', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박서은', 'f', 33, 161, 60, 'dinner@daum.net', '010-8724-6270', '외과의', '04908', '서울특별시 광진구 긴고랑로13길 47 ~ 92', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영후', 'm', 22, 166, 86, 'problem_history@yahoo.com', '010-6229-1937', '비서', '08859', '서울특별시 관악구 난향2길 5 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박현주', 'f', 28, 160, 47, 'these@gmail.com', '010-6700-6128', '포토그래퍼', '03666', '서울특별시 서대문구 증가로8길 42-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연태원', 'm', 19, 186, 84, 'likely@naver.com', '010-3839-2614', '농수산물중개인', '06082', '서울특별시 강남구 봉은사로109길 18 ~ 22-5', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하아람', 'f', 20, 172, 53, 'walk@naver.com', '010-2935-4003', '항공기관사', '04026', '서울특별시 마포구 포은로2가길 29 ~ 66', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박인하', 'm', 22, 189, 80, 'management_speak@live.com', '010-2608-3688', '쇼콜라티에', '47112', '부산광역시 부산진구 성지로104번길 43-6 ~ 81-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승준', 'm', 20, 163, 63, 'town@naver.com', '010-7799-7269', '영화감독', '01047', '서울특별시 강북구 노해로21길 58 ~ 103', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁혜린', 'f', 34, 164, 40, 'anything_want@live.com', '010-2806-9426', '금융자산운용가', '62395', '광주광역시 광산구 고봉로 165', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권은세', 'f', 27, 171, 64, 'local@gmail.com', '010-3094-3491', '프로바둑기사', '16218', '경기도 수원시 장안구 창룡대로207번길 82-12', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우래훈', 'm', 43, 179, 77, 'activity@daum.net', '010-2206-8266', '학생', '08829', '서울특별시 관악구 서림1길 31 ~ 71', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하은', 'm', 35, 179, 82, 'professor@naver.com', '010-4695-4149', '프로바둑기사', '11670', '경기도 의정부시 신흥로 252 ~ 282', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤철', 'm', 18, 173, 65, 'upon@gmail.com', '010-7362-9454', '취업준비생', '07957', '서울특별시 양천구 목동중앙남로11길 4 ~ 30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다애', 'f', 32, 156, 58, 'seek@naver.com', '010-1960-9330', '취업준비생', '05101', '서울특별시 광진구 뚝섬로52가길 30 ~ 54', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이황', 'm', 31, 171, 63, 'say@live.com', '010-5577-3704', '외환딜러', '06045', '서울특별시 강남구 학동로19길 5 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁연아', 'f', 37, 174, 62, 'face@daum.net', '010-4208-6759', '캐디', '17892', '경기도 평택시 통복시장로53번길 2 ~ 36', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동환', 'm', 34, 181, 86, 'include@live.com', '010-5614-6222', '원자로조종감독자', '07964', '서울특별시 양천구 목동중앙남로 3 ~ 15-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하소율', 'f', 21, 179, 60, 'western_note@yahoo.com', '010-5545-4969', '성우', '63523', '제주특별자치도 서귀포시 안덕면 동광본동로33번길 5 ~ 34', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이리안', 'f', 45, 163, 69, 'majority@yahoo.com', '010-8138-4346', '취업준비생', '63116', '제주특별자치도 제주시 오일장서길 15-10 ~ 76', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류세민', 'f', 25, 174, 50, 'probably_board@yahoo.com', '010-8536-1115', '사회복지사', '14603', '경기도 부천시 원미구 석천로 94 ~ 95', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박혜린', 'f', 46, 158, 49, 'order@live.com', '010-5495-3093', '취업준비생', '06155', '서울특별시 강남구 삼성로103길 6 ~ 32', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재빈', 'f', 37, 158, 42, 'walk_piece@naver.com', '010-6380-4936', '교수', '06913', '서울특별시 동작구 만양로18길 10 ~ 41', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한수', 'm', 34, 182, 69, 'air@live.com', '010-6885-5670', '학생', '08716', '서울특별시 관악구 국회단지6길 2 ~ 30', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은주', 'f', 49, 153, 68, 'other@daum.net', '010-3911-4033', '경영컨설턴트', '05261', '서울특별시 강동구 올림픽로98가길 38 ~ 62', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박현이', 'f', 42, 157, 45, 'partner@naver.com', '010-2555-3027', '여론조사전문가', '06265', '서울특별시 강남구 강남대로 262 ~ 276', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '도혜수', 'f', 45, 159, 51, 'safe@naver.com', '010-3598-5092', '학생', '08599', '서울특별시 금천구 금하로1길 70 ~ 100', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원우', 'm', 19, 173, 87, 'cost@gmail.com', '010-1376-7799', '프로그래머', '04908', '서울특별시 광진구 긴고랑로13길 47 ~ 92', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은진', 'm', 46, 187, 79, 'simple@live.com', '010-5760-5900', '학생', '01224', '서울특별시 강북구 오현로 186 ~ 204', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기슬비', 'f', 29, 175, 57, 'industry@yahoo.com', '010-6742-4451', '비서', '06524', '서울특별시 서초구 강남대로101길 7 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김채율', 'f', 38, 169, 66, 'energy_ground@gmail.com', '010-1187-1099', '공인중개사', '34975', '대전광역시 중구 문화로99번길 57 ~ 82', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연서', 'm', 24, 160, 74, 'author@gmail.com', '010-3755-1984', '공무원', '06156', '서울특별시 강남구 삼성로103길 5 ~ 31', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤해', 'm', 44, 186, 69, 'eight@live.com', '010-4616-7237', '건물주', '03617', '서울특별시 서대문구 세검정로 99-1 ~ 105', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여연아', 'f', 19, 170, 52, 'onto@live.com', '010-8305-6186', '제과제빵사', '24766', '강원도 고성군 토성면 인흥3길 5 ~ 16', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대윤', 'm', 30, 172, 84, 'moment@yahoo.com', '010-6690-7245', '극작가', '01361', '서울특별시 도봉구 해등로32길 76 ~ 80', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '마현이', 'f', 48, 176, 46, 'ahead@daum.net', '010-8935-9523', '손해사정사', '34112', '대전광역시 유성구 대덕대로633번길 1 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원호', 'm', 22, 162, 87, 'early@daum.net', '010-6072-3015', '세무사', '03664', '서울특별시 서대문구 증가로8길 42-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정효성', 'm', 24, 169, 68, 'loss@live.com', '010-7184-4472', '학생', '11683', '경기도 의정부시 신흥로 345 ~ 365', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이찬', 'm', 38, 187, 66, 'step_drop@gmail.com', '010-1655-1676', '방송작가', '63303', '제주특별자치도 제주시 화삼로1길 15 ~ 20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예정', 'f', 18, 158, 43, 'heat@daum.net', '010-4743-6348', '취업준비생', '04775', '서울특별시 성동구 둘레9길 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정두환', 'm', 27, 170, 71, 'food_degree@daum.net', '010-9079-8196', '메이크업아티스트', '61741', '광주광역시 남구 신효천2길 9 ~ 48', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예원', 'f', 46, 154, 54, 'piece@naver.com', '010-7669-1925', 'VJ', '06183', '서울특별시 강남구 영동대로85길 13 ~ 19', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채승민', 'm', 18, 166, 61, 'animal@live.com', '010-5599-9993', '취업준비생', '01165', '서울특별시 강북구 도봉로 88 ~ 104', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유현', 'f', 24, 170, 64, 'challenge@yahoo.com', '010-8769-8308', '프로골퍼', '63297', '제주특별자치도 제주시 화남로 36 ~ 62', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영찬', 'm', 47, 167, 63, 'today_wait@daum.net', '010-5967-4167', '의무기록사', '01127', '서울특별시 강북구 삼양로 240 ~ 246-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정루안', 'f', 49, 169, 46, 'together@naver.com', '010-6521-2374', '학생', '02591', '서울특별시 동대문구 황물로 9 ~ 15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선준일', 'm', 44, 186, 61, 'issue@naver.com', '010-6729-9393', '소아과의', '03900', '서울특별시 마포구 한강난지로 22 ~ 162', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김아진', 'f', 36, 172, 45, 'let@daum.net', '010-1809-8279', '선물중개인', '04791', '서울특별시 성동구 성수일로 107 ~ 111', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길해슬', 'f', 38, 168, 44, 'born@live.com', '010-4836-3390', '요리사', '06144', '서울특별시 강남구 선릉로107길 13 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕윤렬', 'm', 26, 160, 65, 'language@gmail.com', '010-9501-1082', '텔레마케터', '63303', '제주특별자치도 제주시 화삼로 1 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동한', 'm', 28, 160, 64, 'power@naver.com', '010-4249-9793', '은행원', '02113', '서울특별시 중랑구 중랑천로20길 5 ~ 49', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변효상', 'm', 22, 180, 77, 'remain@yahoo.com', '010-9566-7804', '뮤지컬배우', '03693', '서울특별시 서대문구 모래내로 209 ~ 247', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천민진', 'm', 20, 181, 62, 'act@yahoo.com', '010-9878-9492', '간호사', '17549', '경기도 안성시 공도읍 만가대길 1 ~ 74', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정현영', 'f', 40, 170, 67, 'night@yahoo.com', '010-3516-8485', '영화배우', '07767', '서울특별시 강서구 가로공원로80길 53 ~ 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황윤후', 'm', 32, 171, 84, 'enjoy_modern@yahoo.com', '010-5847-9206', '구급대원', '07955', '서울특별시 양천구 목동중앙남로14길 1 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최유성', 'm', 48, 160, 86, 'physical@naver.com', '010-2521-6639', '취업준비생', '25303', '강원도 평창군 봉평면 기풍로 48-3 ~ 202', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '송윤오', 'f', 34, 175, 69, 'bit@gmail.com', '010-9667-3552', '학생', '47612', '부산광역시 연제구 마곡천로 31 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유채', 'f', 20, 172, 41, 'official@naver.com', '010-7772-4412', '무대디자이너', '06984', '서울특별시 동작구 현충로 220', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박장현', 'm', 27, 171, 82, 'short@naver.com', '010-7137-6475', '시인', '46769', '부산광역시 강서구 가덕해안로 3 ~ 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진승혜', 'f', 24, 161, 55, 'art@gmail.com', '010-5354-3210', '학생', '05210', '서울특별시 강동구 아리수로97길 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설은섭', 'm', 45, 182, 73, 'identify_perform@yahoo.com', '010-1858-6129', '소방관', '08774', '서울특별시 관악구 신원로3가길 1 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최우준', 'm', 43, 167, 80, 'marriage_one@naver.com', '010-8087-3160', '항공승무원', '35078', '대전광역시 중구 학고개로53번길 17 ~ 25', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재빈', 'm', 41, 179, 68, 'sport_process@naver.com', '010-5411-4571', '취업준비생', '11663', '경기도 의정부시 신흥로 331 ~ 335-1', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '함인월', 'f', 23, 168, 40, 'building@gmail.com', '010-8624-3301', '건물주자제분', '61913', '광주광역시 서구 천변좌하로 616 ~ 622-12', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공주아', 'f', 27, 154, 66, 'alone@live.com', '010-8259-5630', '원자로조종감독자', '05226', '서울특별시 강동구 동남로83길 2 ~ 44', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김주해', 'f', 41, 165, 40, 'possible@live.com', '010-1261-4302', '취업준비생', '24666', '강원도 인제군 상남면 왕성동길 12 ~ 175', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대현', 'm', 24, 179, 64, 'respond@daum.net', '010-2623-4231', '스포츠트레이너', '08653', '서울특별시 금천구 시흥대로12길 45 ~ 82', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최두윤', 'f', 18, 177, 54, 'evening@naver.com', '010-4906-3671', '취업준비생', '04924', '서울특별시 광진구 용마산로3길 6 ~ 32', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방유찬', 'm', 48, 167, 61, 'store@naver.com', '010-2180-7287', '물류관리사', '03617', '서울특별시 서대문구 세검정로 99-1 ~ 105', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정아', 'f', 46, 153, 66, 'these@daum.net', '010-4913-1753', '애널리스트', '02498', '서울특별시 동대문구 망우로18가길 31 ~ 105', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원호', 'm', 41, 165, 87, 'collection@naver.com', '010-4838-8929', '학생', '06021', '서울특별시 강남구 압구정로46길 78', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강현주', 'f', 21, 173, 40, 'want@naver.com', '010-9538-4017', '축구선수', '06267', '서울특별시 강남구 남부순환로 2609 ~ 2621', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연지', 'f', 26, 162, 66, 'firm@live.com', '010-8881-9209', '학생', '07705', '서울특별시 강서구 강서로45다길 25 ~ 69', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이혜영', 'f', 40, 176, 50, 'financial_discussion@naver.com', '010-3617-6929', '취업준비생', '24766', '강원도 고성군 토성면 인흥3길 5 ~ 16', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문채윤', 'f', 16, 160, 48, 'tree@live.com', '010-5074-2206', '무대디자이너', '06227', '서울특별시 강남구 역삼로 204 ~ 230', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이준', 'm', 21, 162, 64, 'local@daum.net', '010-4597-1072', '내과의', '05021', '서울특별시 광진구 광나루로22나길 1 ~ 30', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천송희', 'f', 45, 176, 59, 'finger@gmail.com', '010-2893-6177', '산부인과의', '08558', '서울특별시 금천구 독산로74길 6 ~ 36', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양윤진', 'm', 47, 164, 63, 'line@live.com', '010-8011-9745', '학생', '08317', '서울특별시 구로구 구로동로7다길 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이찬', 'm', 34, 163, 63, 'young@daum.net', '010-8403-2079', '정비사', '63211', '제주특별자치도 제주시 오복7길 3 ~ 30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동언', 'm', 36, 164, 88, 'under@daum.net', '010-4095-2094', '학생', '61961', '광주광역시 서구 상무화원로31번길 16 ~ 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이해아', 'f', 20, 167, 63, 'price@naver.com', '010-3656-1385', '가구제조수리원', '11637', '경기도 의정부시 신흥로100번길 3 ~ 43', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유채', 'f', 19, 175, 48, 'great@yahoo.com', '010-8914-5635', '영화배우', '61908', '광주광역시 서구 화운로303번길 1 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이진영', 'm', 16, 189, 78, 'writer@daum.net', '010-6917-8373', '원자로조종감독자', '06559', '서울특별시 서초구 동광로3길 27 ~ 61', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽서원', 'f', 31, 168, 43, 'best@live.com', '010-6278-2743', '교수', '61751', '광주광역시 남구 압촌길 48-1 ~ 125', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소이윤', 'f', 44, 170, 45, 'employee@live.com', '010-1809-6791', '학생', '61987', '광주광역시 서구 화운로99번길 1-2 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임성현', 'm', 30, 185, 89, 'top@naver.com', '010-2921-7939', '농업기술자', '07617', '서울특별시 강서구 방화대로21길 10 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이수', 'm', 30, 163, 61, 'establish@live.com', '010-4843-5980', '취업준비생', '05237', '서울특별시 강동구 고덕로25길 6 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이해율', 'f', 27, 163, 51, 'period_surface@naver.com', '010-8917-4762', '취업준비생', '03701', '서울특별시 서대문구 연희로11자길 13 ~ 14-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김대경', 'm', 37, 164, 65, 'easy@yahoo.com', '010-5178-5143', '건물주', '46769', '부산광역시 강서구 가덕해안로2번가길 10 ~ 135', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금인태', 'm', 38, 177, 71, 'whether@daum.net', '010-9437-9888', '속기사', '04936', '서울특별시 광진구 긴고랑로 85 ~ 105', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤주빈', 'f', 24, 167, 65, 'bar@naver.com', '010-4576-4819', '세무사', '08713', '서울특별시 관악구 국회단지7길 2 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은영', 'f', 40, 158, 64, 'pretty_professional@gmail.com', '010-7457-7698', '무대연출가', '63185', '제주특별자치도 제주시 서사로22길 2 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김슬비', 'f', 21, 153, 67, 'second@yahoo.com', '010-8784-3386', '취업준비생', '08775', '서울특별시 관악구 신원로2길 4-4 ~ 13', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은한', 'f', 36, 151, 60, 'scene_shoulder@live.com', '010-6952-6545', '손해사정사', '04356', '서울특별시 용산구 새창로20가길 6 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태훈', 'm', 17, 181, 82, 'professor@daum.net', '010-1826-6451', '영화감독', '08763', '서울특별시 관악구 조원로 148 ~ 182', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원준', 'm', 18, 161, 74, 'run@naver.com', '010-1186-2803', '경찰', '04995', '서울특별시 광진구 천호대로104가길 3 ~ 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최솔희', 'f', 22, 159, 50, 'standard@live.com', '010-8218-5277', '취업준비생', '06137', '서울특별시 강남구 언주로99길 9 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이연재', 'm', 40, 186, 89, 'seem@naver.com', '010-2311-3699', '텔레마케터', '07069', '서울특별시 동작구 신대방13길 6 ~ 36', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신초현', 'f', 24, 172, 45, 'professor@live.com', '010-1681-6908', '임상병리사', '63277', '제주특별자치도 제주시 중앙로3길 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금환희', 'm', 24, 166, 60, 'agree@daum.net', '010-3233-7826', '프로경주선수', '08703', '서울특별시 관악구 신사로22길 2 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박래원', 'm', 45, 180, 61, 'entire@gmail.com', '010-5928-1562', '학생', '03970', '서울특별시 마포구 월드컵로30나길 7 ~ 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박도원', 'm', 42, 185, 70, 'of_tough@naver.com', '010-4911-3824', '취업준비생', '08229', '서울특별시 구로구 경인로35길 64-25 ~ 64-27', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길대규', 'm', 37, 166, 88, 'foreign@live.com', '010-1842-8707', '자동차딜러', '06619', '서울특별시 서초구 서운로 134 ~ 142-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민국', 'm', 25, 161, 88, 'natural@yahoo.com', '010-5725-4771', '기자', '06524', '서울특별시 서초구 강남대로109길 41 ~ 45-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤후', 'm', 36, 161, 86, 'we_loss@live.com', '010-8162-5308', '취업준비생', '03318', '서울특별시 은평구 갈현로41나길 5 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황승희', 'f', 41, 162, 46, 'hot@live.com', '010-2241-6070', '기자', '18487', '경기도 화성시 동부대로925번길 12 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤태', 'm', 48, 179, 66, 'billion@naver.com', '010-9848-5372', '외환딜러', '06664', '서울특별시 서초구 방배로16길 5 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박지빈', 'f', 31, 154, 66, 'together_several@daum.net', '010-6458-7962', '취업준비생', '10072', '경기도 김포시 운양로56번길 2 ~ 133', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문영인', 'm', 46, 167, 86, 'victim_player@daum.net', '010-4211-1698', '취업준비생', '02476', '서울특별시 동대문구 약령시로5길 4 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정민건', 'm', 39, 178, 85, 'here@live.com', '010-8565-1698', '네일아티스트', '16220', '경기도 수원시 장안구 창룡대로 171 ~ 177', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정도윤', 'm', 44, 174, 76, 'put@daum.net', '010-4556-6892', '교수', '61447', '광주광역시 동구 지호로124번길 10 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박세윤', 'f', 27, 164, 52, 'almost_exist@gmail.com', '010-8652-3641', '축구선수', '07759', '서울특별시 강서구 곰달래로 147 ~ 165', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박혜정', 'f', 28, 177, 56, 'coach@gmail.com', '010-8044-8203', '취업준비생', '07750', '서울특별시 강서구 곰달래로 167 ~ 195', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정정아', 'f', 31, 154, 63, 'could@yahoo.com', '010-4224-5299', '취업준비생', '35063', '대전광역시 중구 범골로 3 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤일', 'm', 35, 171, 76, 'account@yahoo.com', '010-6653-3997', '프로그래머', '06338', '서울특별시 강남구 개포로116길 3 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김여설', 'f', 40, 171, 49, 'either@daum.net', '010-9230-2646', '농업기술자', '61163', '광주광역시 북구 밤실로191번길 5 ~ 47-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤우', 'm', 37, 186, 72, 'stay@live.com', '010-8386-6328', '버스운전사', '35273', '대전광역시 서구 갈마로103번길 6 ~ 41', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박신아', 'f', 20, 169, 48, 'thus@live.com', '010-4548-2334', '성우', '06227', '서울특별시 강남구 역삼로 204 ~ 230', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표원준', 'm', 21, 170, 87, 'morning@naver.com', '010-8052-1016', '치어리더', '05371', '서울특별시 강동구 풍성로67길 56', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승이', 'f', 26, 159, 66, 'field_smile@yahoo.com', '010-8198-6024', '기자', '34390', '대전광역시 대덕구 중리북로37번길 63 ~ 110', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤성', 'm', 18, 183, 78, 'heavy@yahoo.com', '010-7748-8208', '칼럼니스트', '63192', '제주특별자치도 제주시 오현길 60 ~ 90', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정희성', 'm', 25, 160, 82, 'those@naver.com', '010-1024-9546', '학생', '47591', '부산광역시 연제구 대리로6번길 87 ~ 123', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '마은세', 'f', 23, 157, 59, 'how@gmail.com', '010-4676-9616', '학생', '01366', '서울특별시 도봉구 삼양로 574-29 ~ 574-35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우윤설', 'f', 34, 178, 48, 'office@live.com', '010-4686-5660', '애널리스트', '10117', '경기도 김포시 장릉로 3 ~ 77', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김아라', 'f', 44, 167, 58, 'kill@gmail.com', '010-6906-8551', '캐디', '04791', '서울특별시 성동구 성수일로 107 ~ 111', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최아지', 'f', 43, 173, 65, 'appear@naver.com', '010-4055-7374', '건물주자제분', '35273', '대전광역시 서구 갈마로103번길 6 ~ 41', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이호', 'm', 29, 176, 82, 'cover@gmail.com', '010-5046-7711', '공예가연구원', '01811', '서울특별시 노원구 공릉로 232', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최슬은', 'f', 46, 150, 48, 'several@live.com', '010-3153-3956', '백수', '25304', '강원도 평창군 봉평면 기풍5길 3 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공원찬', 'm', 45, 169, 83, 'it@gmail.com', '010-3226-1289', '여론조사전문가', '07570', '서울특별시 강서구 공항대로55길 5 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤영', 'f', 45, 159, 46, 'power_recently@gmail.com', '010-7607-5085', '학생', '06238', '서울특별시 강남구 테헤란로16길 27 ~ 44', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박루아', 'f', 46, 156, 47, 'film@gmail.com', '010-5804-8663', '공예가연구원', '08774', '서울특별시 관악구 신원로3나길 1 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은찬', 'm', 25, 167, 61, 'individual@gmail.com', '010-4524-6054', '학생', '01046', '서울특별시 강북구 노해로23길 115 ~ 138', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이채', 'f', 21, 160, 46, 'while@yahoo.com', '010-3923-9317', '소설가', '07733', '서울특별시 강서구 등촌로13나길 5 ~ 16-7', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕채우', 'f', 49, 178, 56, 'institution@naver.com', '010-6189-1121', '판사', '48706', '부산광역시 동구 망양로809번길 12 ~ 12-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주지민', 'f', 23, 165, 55, 'hit@gmail.com', '010-7711-5982', '학생', '07569', '서울특별시 강서구 공항대로53가길 49 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전예솔', 'f', 36, 169, 53, 'agent@live.com', '010-3103-5070', '검사', '61944', '광주광역시 서구 천변좌하로 260 ~ 302', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유안', 'f', 39, 173, 56, 'player@naver.com', '010-2301-6074', '요리사', '03313', '서울특별시 은평구 갈현로47가길 2 ~ 37', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김재아', 'f', 49, 159, 67, 'adult@gmail.com', '010-5257-6266', '학생', '25228', '강원도 횡성군 횡성읍 향교서로 1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박채연', 'f', 22, 176, 41, 'throughout_according@gmail.com', '010-4451-7512', '법무사', '08859', '서울특별시 관악구 난향3길 8 ~ 46', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이혜진', 'f', 27, 169, 42, 'art@yahoo.com', '010-9313-3457', '학생', '04925', '서울특별시 광진구 용마산로3길 38 ~ 88', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장송빈', 'm', 46, 179, 64, 'though@live.com', '010-9169-8480', '학생', '06028', '서울특별시 강남구 압구정로4길 14-11', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황대규', 'm', 29, 184, 77, 'mean@yahoo.com', '010-9105-5283', '스포츠트레이너', '06347', '서울특별시 강남구 광평로51길 27 ~ 49', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염한규', 'm', 47, 160, 75, 'step@live.com', '010-3610-9682', '건물주', '06175', '서울특별시 강남구 테헤란로114길 14 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차민', 'f', 45, 171, 40, 'air@yahoo.com', '010-4924-5608', '경호원', '02519', '서울특별시 동대문구 장안벚꽃로 213 ~ 219-1', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김대인', 'm', 32, 174, 61, 'learn@live.com', '010-3293-2164', '학생', '61913', '광주광역시 서구 천변좌하로632번길 1 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천영혜', 'f', 49, 167, 57, 'cancer@gmail.com', '010-8934-2543', '프로게이머', '06232', '서울특별시 강남구 강남대로 376 ~ 390', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허시원', 'm', 30, 179, 80, 'remain@yahoo.com', '010-9725-6647', '성형외과의', '34394', '대전광역시 대덕구 중리로7번길 6 ~ 80', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이해아', 'f', 31, 154, 54, 'grow@naver.com', '010-1127-7355', '여론조사전문가', '17548', '경기도 안성시 공도읍 문터길 7 ~ 130', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤태', 'm', 20, 173, 69, 'thus@gmail.com', '010-8135-5188', '취업준비생', '06127', '서울특별시 강남구 테헤란로13길 55 ~ 65', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최유찬', 'm', 47, 187, 88, 'pretty@live.com', '010-4072-7599', '검사', '05264', '서울특별시 강동구 올림픽로98길 8 ~ 62', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세이', 'f', 23, 171, 57, 'power_send@yahoo.com', '010-4764-8846', '대출상담사', '63528', '제주특별자치도 서귀포시 안덕면 사계남로216번길 1 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조도연', 'm', 47, 178, 73, 'direction_do@yahoo.com', '010-7346-2793', '동화작가', '12523', '경기도 양평군 용문면 용문시장2길 1 ~ 20-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄예섬', 'f', 34, 160, 62, 'media@gmail.com', '010-6920-8988', '학생', '06687', '서울특별시 서초구 방배로13길 65 ~ 67', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김두나', 'f', 18, 165, 50, 'rate@live.com', '010-4490-9440', '물류관리사', '07738', '서울특별시 강서구 등촌로13바길 59', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤하', 'f', 26, 175, 66, 'Republican_bank@daum.net', '010-6912-8490', '게임기획자', '08799', '서울특별시 관악구 낙성대로3길 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효재', 'm', 20, 165, 72, 'activity_staff@yahoo.com', '010-4742-6372', '농수산물중개인', '24768', '강원도 고성군 토성면 원암온천2길 2 ~ 45-13', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄원정', 'f', 34, 178, 42, 'choice_manage@daum.net', '010-5402-2997', '공무원', '06181', '서울특별시 강남구 영동대로85길 6 ~ 24', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예영', 'f', 26, 157, 55, 'now@live.com', '010-9022-1583', '콜센터상담원', '05359', '서울특별시 강동구 천호대로198길 37 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남희영', 'f', 45, 159, 48, 'seem@daum.net', '010-2080-5231', '계산원', '03192', '서울특별시 종로구 수표로20길 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '심래헌', 'm', 22, 177, 66, 'nothing@yahoo.com', '010-9685-4450', '유치원교사', '63595', '제주특별자치도 서귀포시 태평로421번길 4 ~ 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여동운', 'm', 29, 161, 84, 'specific_ask@live.com', '010-1075-1421', '학생', '61942', '광주광역시 서구 상일로 28 ~ 62', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이아름', 'f', 45, 179, 47, 'lead_begin@live.com', '010-3760-9608', '건물주자제분', '01633', '서울특별시 노원구 덕릉로141길 2 ~ 58', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태환', 'm', 49, 176, 68, 'such@daum.net', '010-7761-4418', '가구제조수리원', '25303', '강원도 평창군 봉평면 기풍8길 14-1 ~ 70-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태환', 'm', 46, 169, 76, 'dinner@naver.com', '010-5196-8166', '애널리스트', '61189', '광주광역시 북구 호동로15번길 14', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효은', 'f', 39, 167, 59, 'administration@live.com', '010-1164-9172', '도선사', '06524', '서울특별시 서초구 강남대로101안길 2 ~ 8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박여설', 'f', 47, 169, 45, 'test_there@gmail.com', '010-1690-8946', '취업준비생', '04071', '서울특별시 마포구 독막로2길 6 ~ 38', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '손세윤', 'f', 24, 156, 61, 'or@daum.net', '010-1742-9473', '취업준비생', '08835', '서울특별시 관악구 서림1길 4 ~ 86', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정하솔', 'f', 32, 154, 48, 'deep@live.com', '010-3252-5558', '비서', '18294', '경기도 화성시 봉담읍 매봉로123번길 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강나현', 'f', 18, 179, 57, 'do@naver.com', '010-8120-6371', '학생', '01206', '서울특별시 강북구 도봉로13가길 6 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤아준', 'm', 47, 167, 68, 'such@live.com', '010-4630-4039', '메이크업아티스트', '35266', '대전광역시 서구 갈마로147번길 23 ~ 25', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예솔', 'f', 36, 172, 49, 'conference@daum.net', '010-8811-8529', '취업준비생', '06352', '서울특별시 강남구 광평로47길 17 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유찬', 'm', 30, 161, 76, 'up@naver.com', '010-8178-4771', '백수', '63148', '제주특별자치도 제주시 서연길 11-3 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김리혜', 'f', 36, 161, 55, 'production@naver.com', '010-1404-1118', '한식요리사', '05002', '서울특별시 광진구 동일로38길 8 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박아름', 'f', 20, 151, 42, 'financial@naver.com', '010-8850-5986', 'IT컨설턴트', '06056', '서울특별시 강남구 도산대로50길 21 ~ 49', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정찬우', 'm', 40, 180, 64, 'stay@naver.com', '010-2767-2085', '취업준비생', '06151', '서울특별시 강남구 언주로98길 28 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태경', 'f', 38, 168, 45, 'present_stage@naver.com', '010-4854-3856', '은행원', '01633', '서울특별시 노원구 덕릉로141나길 2 ~ 28-12', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위영헌', 'm', 28, 175, 86, 'particularly@naver.com', '010-4843-2304', 'VJ', '16282', '경기도 수원시 장안구 조원로74번길 1 ~ 49', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현유성', 'm', 45, 172, 85, 'road@live.com', '010-9556-3640', '야구선수', '04922', '서울특별시 광진구 긴고랑로 80 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이장우', 'm', 43, 186, 67, 'change@daum.net', '010-5685-3760', '패턴사', '61957', '광주광역시 서구 상무평화로 43', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서채영', 'f', 31, 163, 41, 'final@live.com', '010-9342-8649', '취업준비생', '34391', '대전광역시 대덕구 중리서로34번길 16 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원준', 'm', 44, 182, 71, 'no_despite@gmail.com', '010-3507-9316', '장제사', '63010', '제주특별자치도 제주시 한림읍 금능7길 4 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정한규', 'm', 24, 174, 75, 'design@gmail.com', '010-5171-6883', '사회복지사', '04925', '서울특별시 광진구 용마산로3길 38 ~ 88', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은설', 'f', 49, 175, 53, 'policy@gmail.com', '010-2048-7842', '독서지도사', '04366', '서울특별시 용산구 새창로42길 5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어윤태', 'm', 17, 180, 66, 'bad@daum.net', '010-9698-4324', '취업준비생', '34112', '대전광역시 유성구 대덕대로643번길 6 ~ 24', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한슬', 'f', 40, 151, 48, 'six@naver.com', '010-2823-4115', '학생', '47112', '부산광역시 부산진구 성지로104번길 43-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세희', 'f', 28, 172, 62, 'low@live.com', '010-4201-2918', '외과의', '08576', '서울특별시 금천구 시흥대로130길 24-8', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은채', 'f', 23, 166, 50, 'way@daum.net', '010-3879-6524', '취업준비생', '01818', '서울특별시 노원구 공릉로 164 ~ 172', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현채정', 'f', 30, 153, 42, 'writer@live.com', '010-5788-6325', '건물주자제분', '01113', '서울특별시 강북구 덕릉로24길 6 ~ 18', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민송현', 'f', 18, 167, 63, 'huge_argue@naver.com', '010-8789-9738', '취업준비생', '07767', '서울특별시 강서구 가로공원로78가길 1 ~ 77', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다헌', 'm', 30, 180, 73, 'president@naver.com', '010-1604-8533', '건물주자제분', '03701', '서울특별시 서대문구 연희로11자길 13 ~ 14-5', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영혜', 'f', 33, 177, 44, 'against@naver.com', '010-1735-6773', '제과제빵사', '34112', '대전광역시 유성구 대덕대로633번길 1 ~ 32', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박도헌', 'f', 16, 170, 49, 'they@daum.net', '010-6249-2316', '학생', '34388', '대전광역시 대덕구 중리서로 64 ~ 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남영준', 'm', 45, 176, 72, 'alone_land@yahoo.com', '010-8084-8587', '교수', '05017', '서울특별시 광진구 아차산로33길 14 ~ 48', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차수민', 'f', 28, 164, 56, 'still_my@gmail.com', '010-8401-2601', '취업준비생', '01049', '서울특별시 강북구 노해로29길 3 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세원', 'm', 39, 175, 62, 'memory@gmail.com', '010-1845-2781', '취업준비생', '05022', '서울특별시 광진구 광나루로24길 23 ~ 80', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천유현', 'm', 34, 165, 88, 'read_pressure@gmail.com', '010-2216-4016', '교수', '61751', '광주광역시 남구 압촌3길 3 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영준', 'm', 43, 182, 88, 'truth@yahoo.com', '010-7967-9941', '학생', '01127', '서울특별시 강북구 솔매로33길 5 ~ 18-13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오혜선', 'f', 16, 161, 49, 'nor@live.com', '010-6239-7861', '택시기사', '63113', '제주특별자치도 제주시 서해안로 131 ~ 167', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이훈', 'm', 31, 183, 84, 'behavior@gmail.com', '010-5561-3921', '취업준비생', '61441', '광주광역시 동구 지산로78번길 1 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최준혁', 'm', 37, 189, 63, 'up@gmail.com', '010-9506-2727', '프로그래머', '24766', '강원도 고성군 토성면 인흥2길 4 ~ 15-13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문한솔', 'f', 41, 150, 65, 'wish@naver.com', '010-4960-3740', '학생', '01180', '서울특별시 강북구 솔매로22가길 8 ~ 42-3', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강윤우', 'm', 33, 169, 73, 'plant@yahoo.com', '010-5004-6955', '외환딜러', '11663', '경기도 의정부시 신흥로 331 ~ 335-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박정은', 'f', 27, 177, 62, 'tend@gmail.com', '010-7630-8678', '교수', '06608', '서울특별시 서초구 서운로 197 ~ 221', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김정빈', 'f', 28, 154, 56, 'skin@daum.net', '010-3883-2788', '취업준비생', '08789', '서울특별시 관악구 봉천로58길 3 ~ 24', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽하일', 'm', 27, 170, 74, 'middle@yahoo.com', '010-4739-5372', '취업준비생', '07642', '서울특별시 강서구 수명로2길 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '함혜림', 'f', 42, 168, 50, 'paper@daum.net', '010-3117-6372', '치과의', '05394', '서울특별시 강동구 성내로13길 21 ~ 61', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소은주', 'f', 36, 169, 41, 'for@gmail.com', '010-4978-5660', '학생', '08782', '서울특별시 관악구 장군봉길 6 ~ 72', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유성', 'm', 35, 173, 89, 'cut@live.com', '010-7542-8214', '설문조사원', '08766', '서울특별시 관악구 조원로 48 ~ 70', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍슬민', 'f', 23, 177, 62, 'go_wall@yahoo.com', '010-5394-7876', '게임기획자', '04544', '서울특별시 중구 을지로15길 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김려원', 'f', 47, 153, 54, 'myself@daum.net', '010-9301-5590', '백수', '63277', '제주특별자치도 제주시 중앙로3길 32 ~ 32-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은성', 'm', 26, 166, 89, 'enter@live.com', '010-8452-5578', '노무사', '08843', '서울특별시 관악구 문성로 220 ~ 244', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길하원', 'f', 24, 161, 45, 'local@yahoo.com', '010-2670-1401', '학생', '08705', '서울특별시 관악구 조원로 107 ~ 141', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추윤제', 'm', 34, 170, 68, 'whom@yahoo.com', '010-1413-1550', '구급대원', '05347', '서울특별시 강동구 천호대로201길 6 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석유준', 'm', 41, 170, 63, 'on_senior@gmail.com', '010-9286-9253', '시나리오작가', '48952', '부산광역시 중구 광복로85번길 10 ~ 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정채빈', 'f', 19, 164, 47, 'prove@live.com', '010-3395-4559', '취업준비생', '35077', '대전광역시 중구 학고개로49번길 1 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조은재', 'm', 24, 187, 64, 'establish@yahoo.com', '010-5339-6138', '건물주자제분', '08782', '서울특별시 관악구 장군봉4길 2 ~ 50', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태림', 'f', 25, 166, 44, 'toward@live.com', '010-1971-3580', '여행가이드', '06587', '서울특별시 서초구 동광로30길 5 ~ 42', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동후', 'm', 41, 183, 70, 'scene@naver.com', '010-9462-1935', '독서지도사', '08782', '서울특별시 관악구 장군봉길 6 ~ 72', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염다훈', 'm', 23, 163, 85, 'view@gmail.com', '010-4678-1397', '학생', '05320', '서울특별시 강동구 구천면로39길 5 ~ 15', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최다훈', 'm', 28, 178, 63, 'amount_ok@live.com', '010-9724-7936', '건물주자제분', '08774', '서울특별시 관악구 신원로3마길 1 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하설', 'f', 46, 164, 53, 'method@yahoo.com', '010-1579-1361', '극작가', '14546', '경기도 부천시 원미구 석천로183번길 11 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김래언', 'f', 29, 162, 40, 'meet@daum.net', '010-2449-5695', '취업준비생', '24665', '강원도 인제군 상남면 구만동길 70 ~ 147', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄두윤', 'm', 36, 182, 85, 'name_these@live.com', '010-7254-9332', '아나운서', '24768', '강원도 고성군 토성면 원암온천길 10 ~ 106-1', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박한규', 'm', 31, 163, 81, 'marriage@yahoo.com', '010-6093-6161', '자동차딜러', '01047', '서울특별시 강북구 노해로27길 47 ~ 109', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김장완', 'm', 33, 175, 70, 'itself@daum.net', '010-5757-4349', '금융자산운용가', '24665', '강원도 인제군 상남면 내린천로 3031-8 ~ 3387', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤찬', 'm', 34, 180, 65, 'certain@naver.com', '010-5209-9641', '매표원', '14547', '경기도 부천시 원미구 석천로178번길 7 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효성', 'm', 45, 166, 86, 'film@yahoo.com', '010-7604-1117', '취업준비생', '03166', '서울특별시 종로구 송월길 82 ~ 164', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은교', 'm', 22, 176, 64, 'remain@gmail.com', '010-2490-6840', '공예가연구원', '46771', '부산광역시 강서구 가덕해안로1325번길 2 ~ 50', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세빈', 'f', 18, 156, 60, 'other_performance@yahoo.com', '010-6216-8853', 'VJ', '04793', '서울특별시 성동구 성수일로10길 3 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최연후', 'm', 19, 168, 71, 'part@yahoo.com', '010-1883-7166', '가구제조수리원', '63526', '제주특별자치도 서귀포시 안덕면 병악로404번길 11 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정우준', 'm', 32, 161, 61, 'behavior@yahoo.com', '010-2229-4091', '취업준비생', '61189', '광주광역시 북구 호동로43번길 3 ~ 7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유수아', 'f', 44, 154, 51, 'money@live.com', '010-7815-1398', '주유원', '04914', '서울특별시 광진구 긴고랑로12길 4 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동한', 'm', 33, 168, 80, 'point@naver.com', '010-5727-9250', '카피라이터', '05210', '서울특별시 강동구 아리수로93길 40', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최로윤', 'f', 28, 156, 43, 'wonder@daum.net', '010-6624-6110', '취업준비생', '03657', '서울특별시 서대문구 모래내로 303-25 ~ 329', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이찬', 'm', 23, 163, 78, 'appear@daum.net', '010-2431-3310', '보험계리인', '02585', '서울특별시 동대문구 천호대로 83 ~ 95', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이래현', 'f', 41, 171, 60, 'cold@gmail.com', '010-8951-3930', '섬유공학기술자', '61907', '광주광역시 서구 천변좌하로548번길 11 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동혜', 'm', 29, 169, 87, 'government@live.com', '010-8392-6749', '취업준비생', '08317', '서울특별시 구로구 구로동로7다길 28', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최우재', 'm', 20, 186, 80, 'material@gmail.com', '010-4614-2389', '외환딜러', '02520', '서울특별시 동대문구 장안벚꽃로 201 ~ 205', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연주', 'f', 24, 173, 65, 'service@yahoo.com', '010-4979-9495', '방송인', '63308', '제주특별자치도 제주시 황사평6길 139 ~ 176-1', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '송이훈', 'm', 48, 178, 74, 'deal_international@naver.com', '010-9368-4016', '학생', '03663', '서울특별시 서대문구 증가로6길 62-17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차희슬', 'f', 35, 159, 68, 'American@daum.net', '010-9871-4235', '건물주자제분', '01360', '서울특별시 도봉구 해등로34길 7 ~ 93', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태영', 'm', 33, 183, 85, 'manager@daum.net', '010-7893-2126', '학생', '07733', '서울특별시 강서구 등촌로13마길 5 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최여혜', 'f', 47, 179, 59, 'store@yahoo.com', '010-2439-5220', '시인', '01366', '서울특별시 도봉구 삼양로 574-23', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류은후', 'm', 20, 168, 70, 'reduce@daum.net', '010-4904-8333', '항공정비사', '34993', '대전광역시 중구 문화로78번길 5 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오성수', 'm', 48, 180, 69, 'among@naver.com', '010-5193-7881', '일식요리사', '18482', '경기도 화성시 동부대로970번길 168', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김시연', 'f', 49, 163, 63, 'husband@gmail.com', '010-1228-7412', '피부관리사', '08799', '서울특별시 관악구 낙성대로3길 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오준완', 'm', 39, 173, 64, 'change@gmail.com', '010-8482-5973', '스튜어디스', '11639', '경기도 의정부시 신흥로 64 ~ 70', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '함주희', 'f', 23, 158, 46, 'build@gmail.com', '010-8408-5520', '일식요리사', '07616', '서울특별시 강서구 방화대로21길 26 ~ 94-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '심해정', 'f', 32, 169, 68, 'increase@live.com', '010-4634-8338', '학생', '03657', '서울특별시 서대문구 모래내로 303-25 ~ 329', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정도율', 'm', 24, 161, 63, 'with@yahoo.com', '010-6160-8463', '손해사정사', '25620', '강원도 강릉시 강동면 대동안길 1-1 ~ 34', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤규', 'm', 43, 178, 61, 'always@naver.com', '010-8637-5720', '방사선사', '03659', '서울특별시 서대문구 모래내로 297 ~ 303-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한규', 'm', 17, 168, 64, 'under_option@yahoo.com', '010-5862-1087', '양식요리사', '49379', '부산광역시 사하구 장평로450번길 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정희영', 'f', 48, 155, 42, 'mission@naver.com', '010-3384-3837', '학생', '02116', '서울특별시 중랑구 중랑천로14길 24 ~ 58', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정우찬', 'm', 43, 170, 61, 'no@gmail.com', '010-7517-5855', '취업준비생', '04550', '서울특별시 중구 을지로12길 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효은', 'f', 28, 150, 67, 'myself@daum.net', '010-4277-4739', '학생', '01178', '서울특별시 강북구 삼양로 178 ~ 180', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유찬', 'm', 35, 187, 74, 'tax@live.com', '010-3755-5144', '주유원', '04544', '서울특별시 중구 을지로15길 16-14 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최수진', 'f', 30, 171, 55, 'before@gmail.com', '010-7486-5432', '학생', '08627', '서울특별시 금천구 금하로15길 3 ~ 19', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤원재', 'm', 37, 185, 68, 'father_generation@daum.net', '010-4523-1767', '보험계리인', '02511', '서울특별시 동대문구 장안벚꽃로 291 ~ 337', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영하', 'f', 38, 157, 51, 'specific@daum.net', '010-9749-9064', '캐디', '61962', '광주광역시 서구 상무평화로 78 ~ 79', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시현', 'm', 48, 167, 65, 'particularly_identify@yahoo.com', '010-9785-1486', '취업준비생', '47580', '부산광역시 연제구 대리로5번가길 2 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정우헌', 'm', 46, 189, 89, 'south@yahoo.com', '010-2131-4321', '학생', '63277', '제주특별자치도 제주시 중앙로3길 2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤규', 'm', 38, 168, 83, 'safe@yahoo.com', '010-3995-5983', '구급대원', '04909', '서울특별시 광진구 긴고랑로11길 4 ~ 30', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤혁', 'm', 49, 162, 86, 'rate@yahoo.com', '010-7153-6919', '간호사', '24155', '강원도 화천군 사내면 햇골길 93 ~ 151', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '성자연', 'f', 39, 178, 65, 'teacher@naver.com', '010-3573-3464', '학생', '08320', '서울특별시 구로구 구로동로8길 10 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정임', 'f', 38, 177, 41, 'star_national@gmail.com', '010-7119-9849', '행사기획자', '05292', '서울특별시 강동구 양재대로138길 21 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주송현', 'f', 42, 167, 42, 'account@naver.com', '010-8899-7934', '학생', '04903', '서울특별시 광진구 용마산로31길 6 ~ 38-8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김성원', 'm', 28, 178, 80, 'her@naver.com', '010-1437-5827', '운동감독', '07601', '서울특별시 강서구 양천로 12 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유찬', 'm', 34, 170, 66, 'see_heavy@gmail.com', '010-5310-2655', '취업준비생', '06339', '서울특별시 강남구 개포로 640 ~ 670', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동혜', 'm', 48, 186, 73, 'leg@daum.net', '010-2303-6752', '동화작가', '25620', '강원도 강릉시 강동면 대동제방길 6 ~ 67', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은찬', 'm', 42, 169, 75, 'surface@daum.net', '010-2581-6112', '취업준비생', '06921', '서울특별시 동작구 만양로1길 1 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정진영', 'm', 49, 160, 86, 'money@daum.net', '010-8223-8709', '학생', '34428', '대전광역시 대덕구 계족로517번길 35 ~ 98', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위서진', 'm', 34, 166, 89, 'keep_consider@naver.com', '010-8317-8194', '택시기사', '08244', '서울특별시 구로구 고척로33라길 14-12', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세원', 'm', 23, 167, 84, 'cold@live.com', '010-1789-6192', '학생', '01210', '서울특별시 강북구 숭인로13길 27-2 ~ 53', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김채민', 'f', 37, 174, 54, 'figure@yahoo.com', '010-1070-3925', '독서지도사', '34305', '대전광역시 대덕구 갑천도시고속도로 23', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유은찬', 'm', 24, 184, 61, 'value@naver.com', '010-8154-4575', '카피라이터', '05022', '서울특별시 광진구 광나루로26길 7 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이지애', 'f', 32, 163, 59, 'policy@naver.com', '010-1305-3515', '공무원', '04910', '서울특별시 광진구 긴고랑로11길 11 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤섭', 'm', 17, 165, 73, 'section_interest@naver.com', '010-5132-7197', '검사', '48949', '부산광역시 중구 광복중앙로24번길 4 ~ 4-10', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원초영', 'f', 41, 150, 66, 'goal_item@naver.com', '010-6026-2551', '한식요리사', '02116', '서울특별시 중랑구 중랑천로14길 24 ~ 58', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여세민', 'f', 16, 158, 68, 'want@live.com', '010-1724-9832', '프로경주선수', '48949', '부산광역시 중구 광복중앙로24번길 4 ~ 4-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하원훈', 'm', 20, 174, 78, 'station@live.com', '010-6751-4146', '노무사', '05211', '서울특별시 강동구 아리수로93길 9 ~ 61', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태겸', 'f', 41, 175, 65, 'away@yahoo.com', '010-7946-6375', '프로그래머', '61960', '광주광역시 서구 상무화원로3번길 4-5 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류솔윤', 'f', 48, 168, 49, 'which@yahoo.com', '010-2674-8255', '촬영기자', '05366', '서울특별시 강동구 명일로 146 ~ 166', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추준아', 'm', 17, 167, 87, 'very@live.com', '010-1879-3209', '장학사', '05001', '서울특별시 광진구 동일로42길 2 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시원', 'm', 33, 178, 86, 'soldier@daum.net', '010-9081-1582', '방송작가', '08772', '서울특별시 관악구 남부순환로 1478 ~ 1508', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조현후', 'm', 44, 181, 74, 'grow@gmail.com', '010-8369-8821', '취업준비생', '03192', '서울특별시 종로구 수표로18가길 4 ~ 26', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대윤', 'm', 42, 180, 62, 'possible@gmail.com', '010-1586-9228', '학생', '02113', '서울특별시 중랑구 중랑천로20길 5 ~ 49', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재빈', 'm', 35, 181, 89, 'subject@gmail.com', '010-8042-3234', '외환딜러', '24107', '강원도 화천군 상서면 가둔지길 10-13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김주은', 'f', 36, 166, 59, 'individual@naver.com', '010-6086-4642', '장제사', '01641', '서울특별시 노원구 덕릉로134가길 18 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤규', 'm', 40, 174, 66, 'how_six@naver.com', '010-3092-1457', '학생', '18335', '경기도 화성시 봉담읍 복만터길2번길 1 ~ 36-9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서래환', 'm', 27, 184, 73, 'also@live.com', '010-7116-9407', '시인', '01045', '서울특별시 강북구 노해로27길 48 ~ 112', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤우', 'm', 30, 172, 78, 'sea@daum.net', '010-4212-1387', '학생', '47611', '부산광역시 연제구 마곡천로 1 ~ 29-5', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강이안', 'm', 41, 175, 61, 'blood@yahoo.com', '010-7076-3683', '취업준비생', '62395', '광주광역시 광산구 고봉로 175 ~ 262-2', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태환', 'm', 20, 164, 68, 'better@gmail.com', '010-1682-8741', '학생', '48980', '부산광역시 중구 광복로6번길 3 ~ 14-1', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민효성', 'm', 48, 178, 72, 'private@gmail.com', '010-7483-7645', '야구선수', '04987', '서울특별시 광진구 능동로34길 86 ~ 155', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방윤아', 'f', 30, 174, 40, 'name_could@daum.net', '010-3621-4719', '학생', '01168', '서울특별시 강북구 솔매로28길 1 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장차영', 'f', 39, 170, 46, 'these_reflect@daum.net', '010-1886-5617', '개그맨', '01195', '서울특별시 강북구 삼양로 161', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지민', 'm', 27, 173, 85, 'law@daum.net', '010-4662-4738', '속기사', '05099', '서울특별시 광진구 뚝섬로48길 5 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최서원', 'f', 35, 155, 57, 'member@naver.com', '010-3608-3495', '취업준비생', '24161', '강원도 화천군 사내면 호음로 793-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국노영', 'f', 35, 151, 51, 'know_whether@daum.net', '010-4784-9420', '취업준비생', '06263', '서울특별시 강남구 도곡로14길 7 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하일', 'm', 44, 178, 85, 'skin@daum.net', '010-9623-2320', '법무사', '34394', '대전광역시 대덕구 중리로7번길 6 ~ 80', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최슬희', 'f', 35, 177, 63, 'better@yahoo.com', '010-8962-8702', '노무사', '05361', '서울특별시 강동구 명일로 157-10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림현주', 'f', 31, 151, 69, 'social@gmail.com', '010-7306-8535', '학생', '07016', '서울특별시 동작구 남부순환로269길 22 ~ 82', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지연', 'f', 40, 172, 56, 'star@live.com', '010-5998-2239', '학생', '05307', '서울특별시 강동구 양재대로131길 9 ~ 46', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이도윤', 'm', 49, 183, 64, 'contain@gmail.com', '010-2018-9752', '법무사', '17893', '경기도 평택시 통복시장로13번길 1 ~ 22', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유준', 'm', 37, 175, 75, 'would@gmail.com', '010-9529-3301', '간호사', '01626', '서울특별시 노원구 동일로242가길 30-11', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤규', 'm', 37, 177, 82, 'recognize@naver.com', '010-8496-6927', '직업상담사', '63277', '제주특별자치도 제주시 중앙로3길 33', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금선정', 'f', 25, 174, 58, 'also@naver.com', '010-6345-4495', '취업준비생', '01819', '서울특별시 노원구 공릉로 144 ~ 162', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원우', 'm', 37, 184, 61, 'avoid_vote@naver.com', '010-2524-6885', '취업준비생', '01189', '서울특별시 강북구 삼양로 181 ~ 203', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김연우', 'f', 24, 158, 54, 'stage@daum.net', '010-1919-8388', '학생', '04775', '서울특별시 성동구 둘레9길 14', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박아설', 'f', 35, 166, 49, 'young@daum.net', '010-3103-7683', '학생', '18473', '경기도 화성시 동탄기흥로502번길 206', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최우헌', 'm', 31, 165, 84, 'law@yahoo.com', '010-7167-5691', '취업준비생', '61447', '광주광역시 동구 지호로 108 ~ 214-7', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정로영', 'f', 20, 173, 42, 'focus@live.com', '010-8718-2286', '측량기술자', '24664', '강원도 인제군 상남면 아홉사리로 2392 ~ 3226-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김소영', 'f', 36, 178, 57, 'pass@yahoo.com', '010-4338-8415', '주유원', '08557', '서울특별시 금천구 독산로74길 9 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김예정', 'f', 38, 157, 40, 'crime@live.com', '010-6713-7969', '한식요리사', '07639', '서울특별시 강서구 강서로45라길 12 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이노은', 'f', 45, 163, 46, 'area@naver.com', '010-6234-9218', '감정평가사', '08577', '서울특별시 금천구 독산로75길 12 ~ 40', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현이', 'f', 18, 158, 44, 'step@gmail.com', '010-6430-5904', '전화교환원', '02595', '서울특별시 동대문구 황물로 53 ~ 65-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박수민', 'f', 47, 166, 41, 'simple@gmail.com', '010-6944-9899', '헤드헌터', '08319', '서울특별시 구로구 구로동로8길 1 ~ 39', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유리', 'f', 18, 169, 63, 'save@yahoo.com', '010-2548-7691', '학생', '48777', '부산광역시 동구 망양로808번길 1 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박정연', 'f', 45, 168, 45, 'same@daum.net', '010-4199-8149', '스튜어디스', '01048', '서울특별시 강북구 노해로21길 7 ~ 50', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최유창', 'm', 19, 182, 81, 'certain@daum.net', '010-9358-7949', '경영컨설턴트', '06589', '서울특별시 서초구 동광로32길 7', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남이호', 'm', 43, 170, 89, 'and@daum.net', '010-8597-2386', '프로골퍼', '63017', '제주특별자치도 제주시 한림읍 금능농공길 105-45 ~ 155-43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕수연', 'f', 42, 166, 63, 'debate_positive@daum.net', '010-5495-9466', '학생', '34411', '대전광역시 대덕구 계족로574번길 16 ~ 64', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세현', 'f', 19, 168, 41, 'tend@naver.com', '010-7181-7992', '방송인', '04925', '서울특별시 광진구 용마산로3길 38 ~ 88', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백은찬', 'm', 40, 168, 76, 'will@gmail.com', '010-6391-9755', '학생', '07616', '서울특별시 강서구 방화대로21길 26 ~ 94-15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '손초아', 'f', 39, 160, 59, 'current_daughter@naver.com', '010-5951-1206', '공무원', '07362', '서울특별시 영등포구 신길로42길 4 ~ 44-22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기성한', 'm', 23, 184, 67, 'come@yahoo.com', '010-4189-2127', '취업준비생', '63296', '제주특별자치도 제주시 화남로 66 ~ 72', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우정율', 'f', 30, 159, 59, 'school@naver.com', '010-6782-3916', '쇼콜라티에', '08770', '서울특별시 관악구 남부순환로 1430 ~ 1440', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김해정', 'f', 21, 153, 51, 'modern@naver.com', '010-9528-8720', '경찰', '06177', '서울특별시 강남구 도곡로 603', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최주희', 'f', 39, 178, 61, 'whose@gmail.com', '010-8252-4484', '취업준비생', '63303', '제주특별자치도 제주시 화삼북로 36 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원우', 'm', 17, 186, 84, 'call@gmail.com', '010-7395-7127', '촬영기자', '05301', '서울특별시 강동구 천중로51길 48 ~ 78', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어태율', 'm', 19, 179, 84, 'fast@naver.com', '010-4274-1932', '학생', '35266', '대전광역시 서구 갈마로147번길 17', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선예찬', 'm', 35, 173, 88, 'bank@yahoo.com', '010-2807-1574', '취업준비생', '05028', '서울특별시 광진구 아차산로39길 8 ~ 44', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정슬비', 'f', 21, 168, 52, 'situation@yahoo.com', '010-5396-9089', '교수', '06021', '서울특별시 강남구 도산대로49길 3', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정현우', 'm', 38, 161, 76, 'scene@naver.com', '010-8235-1831', '취업준비생', '48952', '부산광역시 중구 광복로97번길 1 ~ 11', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤도', 'm', 44, 177, 72, 'management@gmail.com', '010-4270-2811', '임상병리사', '01178', '서울특별시 강북구 솔샘로59길 6 ~ 18', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤섬', 'f', 49, 153, 45, 'important_conference@live.com', '010-1059-6235', '취업준비생', '02572', '서울특별시 동대문구 경동시장로 2 ~ 42-1', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장재혁', 'm', 24, 176, 86, 'great@naver.com', '010-2209-6602', '학생', '06027', '서울특별시 강남구 압구정로4길 10 ~ 14-4', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승환', 'm', 34, 164, 67, 'drug@yahoo.com', '010-7739-9602', '백수', '03728', '서울특별시 서대문구 모래내로 426 ~ 436', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문윤영', 'f', 37, 160, 46, 'stay@live.com', '010-4221-2193', '축구선수', '46771', '부산광역시 강서구 가덕해안로1169번길 6 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신시안', 'f', 30, 177, 55, 'them_whatever@gmail.com', '010-6835-5403', '임상병리사', '02496', '서울특별시 동대문구 망우로14길 10 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은상', 'm', 38, 178, 74, 'create@gmail.com', '010-8231-1594', '학생', '08578', '서울특별시 금천구 독산로73길 6 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어윤우', 'f', 20, 161, 59, 'laugh_style@daum.net', '010-4607-9029', '학생', '08700', '서울특별시 관악구 조원로 5-6 ~ 43', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석지영', 'f', 31, 152, 59, 'way@yahoo.com', '010-7406-2192', '시인', '16216', '경기도 수원시 장안구 창훈로 27 ~ 37-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배보성', 'm', 27, 173, 66, 'ago@naver.com', '010-3876-1968', 'IT컨설턴트', '08859', '서울특별시 관악구 난향길 4 ~ 92', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다은', 'f', 46, 168, 61, 'above@live.com', '010-8639-8244', '취업준비생', '08349', '서울특별시 구로구 개봉로11길 38-3', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최현영', 'f', 21, 170, 69, 'fast@live.com', '010-3009-5823', '학생', '01114', '서울특별시 강북구 수유로4길 65-1 ~ 65-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정노훈', 'f', 28, 163, 60, 'this@daum.net', '010-2887-7703', '촬영기자', '01633', '서울특별시 노원구 덕릉로141가길 1 ~ 36', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장승하', 'f', 23, 159, 43, 'person@gmail.com', '010-9460-3035', '취업준비생', '24664', '강원도 인제군 상남면 아홉사리로 2392 ~ 3226-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구주환', 'm', 28, 175, 82, 'environment@gmail.com', '010-3142-7774', '건물주', '62270', '광주광역시 광산구 월계로16번길 6 ~ 50', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조윤호', 'm', 36, 164, 88, 'already@live.com', '010-3885-4420', '학생', '08319', '서울특별시 구로구 구로동로8길 1 ~ 39', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주혜', 'f', 16, 176, 56, 'best@gmail.com', '010-1623-2311', '학생', '06582', '서울특별시 서초구 동광로33길 39 ~ 40', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염효주', 'f', 47, 156, 66, 'however@live.com', '010-4049-8861', '영화감독', '05350', '서울특별시 강동구 천호대로193길 7 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김시우', 'm', 19, 163, 89, 'environment@yahoo.com', '010-6726-3335', '학생', '04209', '서울특별시 마포구 만리재옛2길 3 ~ 33-1', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박누리', 'f', 29, 164, 45, 'everything@daum.net', '010-5044-7542', '노무사', '06167', '서울특별시 강남구 삼성로100길 8 ~ 24-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성희', 'm', 48, 184, 78, 'share@gmail.com', '010-8412-8782', '취업준비생', '07960', '서울특별시 양천구 목동중앙남로10길 2 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성연', 'f', 22, 170, 42, 'inside@daum.net', '010-2946-7567', '방송작가', '61147', '광주광역시 북구 배재길 47 ~ 126', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정현영', 'f', 37, 155, 65, 'actually_pull@naver.com', '010-7319-3619', '변리사', '02121', '서울특별시 중랑구 중랑천로12길 71-4 ~ 88', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박희수', 'f', 42, 164, 59, 'key@naver.com', '010-7575-4114', '공인중개사', '01045', '서울특별시 강북구 노해로27길 48 ~ 112', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구소빈', 'f', 45, 175, 65, 'specific@daum.net', '010-4934-8466', '의사', '06190', '서울특별시 강남구 도곡로 515 ~ 531', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태윤', 'm', 39, 169, 69, 'option@naver.com', '010-8692-6547', '음향및녹음기사', '06021', '서울특별시 강남구 도산대로45길 5-5 ~ 10-10', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강선우', 'm', 41, 166, 88, 'laugh@live.com', '010-9095-6389', '학생', '35266', '대전광역시 서구 갈마로147번길 35 ~ 45-18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최원준', 'm', 38, 186, 60, 'step@yahoo.com', '010-6571-7919', '학생', '06141', '서울특별시 강남구 논현로 508', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설효현', 'f', 48, 163, 40, 'until@gmail.com', '010-7457-5890', '축구선수', '35266', '대전광역시 서구 갈마로147번길 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김설영', 'f', 39, 175, 51, 'radio@yahoo.com', '010-2035-3200', '학생', '04994', '서울특별시 광진구 천호대로102길 4 ~ 36', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구준호', 'm', 22, 161, 83, 'know@daum.net', '010-2900-9446', '광고및홍보전문가', '63010', '제주특별자치도 제주시 한림읍 금능길 20 ~ 119-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이영', 'f', 29, 177, 48, 'moment@gmail.com', '010-3496-7591', '취업준비생', '16217', '경기도 수원시 장안구 창훈로 24 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박연후', 'm', 34, 173, 79, 'on@gmail.com', '010-4488-4902', '애널리스트', '06148', '서울특별시 강남구 선릉로103길 21-4 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '여혜율', 'f', 30, 173, 43, 'tonight_kid@naver.com', '010-6174-8476', '메이크업아티스트', '06348', '서울특별시 강남구 광평로51길 22 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박유현', 'f', 22, 170, 58, 'than@gmail.com', '010-3722-6199', '물류관리사', '25630', '강원도 강릉시 강동면 산성우리길 3 ~ 13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최애솔', 'f', 26, 174, 44, 'fact@daum.net', '010-5854-9408', '학생', '17894', '경기도 평택시 통복시장로16번길 3 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동은', 'm', 30, 181, 77, 'area_woman@yahoo.com', '010-2979-4754', '선물중개인', '08311', '서울특별시 구로구 구로동로8길 76 ~ 93', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김세빈', 'f', 19, 167, 66, 'begin@gmail.com', '010-1758-5602', '프로골퍼', '48951', '부산광역시 중구 광복로85번길 9-1 ~ 17-4', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정서우', 'f', 46, 169, 59, 'young@naver.com', '010-1588-4076', '취업준비생', '05399', '서울특별시 강동구 성내로14길 18', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은섭', 'm', 38, 189, 70, 'act@naver.com', '010-8986-4439', '가수', '01216', '서울특별시 강북구 도봉로10길 38 ~ 78', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동혜', 'm', 22, 165, 75, 'law_focus@naver.com', '010-6231-4125', '택시기사', '03179', '서울특별시 종로구 송월길 75 ~ 107', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤준', 'm', 32, 178, 81, 'leave@daum.net', '010-5174-6149', '학생', '63277', '제주특별자치도 제주시 중앙로3길 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세은', 'f', 29, 172, 58, 'piece@daum.net', '010-7237-1463', '디자이너', '61987', '광주광역시 서구 화운로83번길 26-1 ~ 36', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최희성', 'm', 17, 162, 66, 'do@yahoo.com', '010-3617-5501', '프로바둑기사', '04722', '서울특별시 성동구 금호로11가길 6 ~ 12-11', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하은', 'f', 19, 166, 49, 'put@yahoo.com', '010-9383-4230', '치어리더', '01219', '서울특별시 강북구 도봉로10나길 4 ~ 22', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하채하', 'f', 43, 165, 47, 'standard@yahoo.com', '010-3513-3877', '항공기관사', '07512', '서울특별시 강서구 방화대로 409', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박서준', 'm', 34, 160, 62, 'plant@gmail.com', '010-6836-8584', '외환딜러', '01216', '서울특별시 강북구 도봉로10길 38 ~ 78', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤섭', 'm', 36, 168, 74, 'smile_particular@gmail.com', '010-1399-9275', '학생', '03318', '서울특별시 은평구 갈현로41나길 1 ~ 3-21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '도동현', 'm', 22, 177, 83, 'discover@naver.com', '010-2445-7113', '탤런트', '08315', '서울특별시 구로구 구로동로8길 43 ~ 69', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허아영', 'f', 31, 164, 57, 'machine@yahoo.com', '010-8946-9356', '소방관', '04096', '서울특별시 마포구 독막로29길 6 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원영', 'm', 47, 188, 69, 'director@yahoo.com', '010-2847-4450', '건물주', '05211', '서울특별시 강동구 아리수로93가길 25', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이애솔', 'f', 37, 172, 53, 'defense@yahoo.com', '010-7072-9514', '취업준비생', '08244', '서울특별시 구로구 고척로33라길 14-10', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤후', 'm', 20, 176, 77, 'red_value@daum.net', '010-7205-6242', '학생', '05302', '서울특별시 강동구 천중로49길 51 ~ 82', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다아', 'f', 40, 170, 56, 'walk_write@gmail.com', '010-1992-6316', '법무사', '05307', '서울특별시 강동구 양재대로131길 9 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은섬', 'f', 30, 173, 69, 'nation@naver.com', '010-6164-9586', '교수', '61953', '광주광역시 서구 천변좌하로 142 ~ 206', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권지아', 'f', 41, 179, 43, 'firm@naver.com', '010-6449-6647', '캐디', '12514', '경기도 양평군 용문면 용문체육공원길 55 ~ 119', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선시율', 'f', 23, 167, 65, 'public@naver.com', '010-8032-4706', '판사', '63603', '제주특별자치도 서귀포시 토상로17번길 2 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재율', 'f', 29, 159, 60, 'chance@yahoo.com', '010-3083-4385', '간병인', '02496', '서울특별시 동대문구 망우로14길 10 ~ 28', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주연지', 'f', 43, 154, 62, 'herself@naver.com', '010-1193-9928', '건물주자제분', '08349', '서울특별시 구로구 개봉로11길 38-21 ~ 38-23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최찬율', 'm', 18, 163, 84, 'key@live.com', '010-2193-7737', '백수', '03974', '서울특별시 마포구 성미산로15길 79', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤채', 'm', 25, 169, 72, 'particularly_possible@yahoo.com', '010-3661-5044', '보험계리인', '25620', '강원도 강릉시 강동면 대동제방길 6 ~ 67', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정송민', 'f', 27, 168, 41, 'it@gmail.com', '010-1663-6293', '간병인', '62040', '광주광역시 서구 화운로23번길 2 ~ 14-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동현', 'm', 29, 170, 75, 'problem@gmail.com', '010-1434-5019', '검사', '07767', '서울특별시 강서구 가로공원로80가길 4 ~ 76', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재훈', 'm', 30, 161, 74, 'bill@live.com', '010-6949-2543', '학생', '06587', '서울특별시 서초구 동광로30길 5 ~ 42', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김준성', 'm', 33, 168, 70, 'seek@naver.com', '010-5793-8241', '건물주자제분', '08317', '서울특별시 구로구 구로동로7다길 25-2 ~ 27', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명지애', 'f', 44, 166, 59, 'action@daum.net', '010-6163-3962', 'VJ', '04550', '서울특별시 중구 을지로12길 25 ~ 25-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지빈', 'f', 32, 150, 49, 'quickly@naver.com', '010-1321-1934', '방송연출가', '34388', '대전광역시 대덕구 중리북로 47 ~ 61', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표혜수', 'f', 32, 152, 58, 'offer@naver.com', '010-7317-4156', '취업준비생', '08348', '서울특별시 구로구 개봉로11길 38-24', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재민', 'f', 25, 174, 40, 'operation@yahoo.com', '010-2702-3883', '건물주자제분', '04914', '서울특별시 광진구 긴고랑로10길 5 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원영', 'm', 45, 168, 70, 'their_fund@daum.net', '010-2475-6578', '학생', '05295', '서울특별시 강동구 양재대로134길 7 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차은', 'f', 49, 172, 61, 'send@yahoo.com', '010-8881-1950', '학생', '07570', '서울특별시 강서구 공항대로53가길 50 ~ 54', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이준', 'm', 48, 171, 85, 'effort@yahoo.com', '010-2064-6569', '학생', '61938', '광주광역시 서구 화운로230번길 2 ~ 32', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최정임', 'f', 31, 158, 61, 'spend@daum.net', '010-1175-2508', '경호원', '07551', '서울특별시 강서구 공항대로55길 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박송연', 'f', 21, 159, 65, 'go@yahoo.com', '010-6906-4427', '스튜어디스', '62394', '광주광역시 광산구 고봉로 351-19 ~ 358-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재빈', 'f', 31, 163, 65, 'miss@gmail.com', '010-3123-9292', '학생', '07778', '서울특별시 강서구 곰달래로 126', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류아현', 'f', 31, 172, 66, 'kid_send@naver.com', '010-2886-6787', '캐디', '06282', '서울특별시 강남구 도곡로 504 ~ 540', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍서현', 'f', 22, 177, 60, 'social@gmail.com', '010-6494-5519', '학생', '02592', '서울특별시 동대문구 황물로 30 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지혜은', 'f', 43, 156, 54, 'conference@daum.net', '010-3619-9164', '케이크디자이너', '05021', '서울특별시 광진구 광나루로22길 7 ~ 24', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김래교', 'f', 29, 170, 57, 'vote@naver.com', '010-6088-5628', '취업준비생', '48952', '부산광역시 중구 광복로85번길 10 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장선영', 'f', 34, 168, 40, 'develop@yahoo.com', '010-4440-9774', '취업준비생', '63010', '제주특별자치도 제주시 한림읍 금능7길 4 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정정아', 'f', 17, 176, 49, 'style@live.com', '010-3785-1168', '판사', '62270', '광주광역시 광산구 월계로 2 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유준', 'm', 31, 187, 81, 'reflect@naver.com', '010-8927-4320', '취업준비생', '07565', '서울특별시 강서구 공항대로55길 47 ~ 61', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영재', 'm', 43, 172, 83, 'pretty@yahoo.com', '010-1918-7407', '병원코디네이트', '03965', '서울특별시 마포구 월드컵로32길 9 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현윤지', 'f', 31, 167, 43, 'ask@yahoo.com', '010-5204-2188', '건물주자제분', '63186', '제주특별자치도 제주시 서사로21길 2-1 ~ 28', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주은', 'f', 49, 162, 61, 'task@live.com', '010-3545-2731', '주유원', '04364', '서울특별시 용산구 새창로35길 18 ~ 31', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김인영', 'f', 29, 169, 43, 'race_peace@naver.com', '010-6853-1131', '취업준비생', '07666', '서울특별시 강서구 공항대로58가길 20 ~ 82', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정채하', 'f', 48, 163, 48, 'together@daum.net', '010-5281-2535', '세무사', '02595', '서울특별시 동대문구 황물로 53 ~ 65-14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동한', 'm', 40, 170, 65, 'much@yahoo.com', '010-2475-8549', '개그맨', '04938', '서울특별시 광진구 용마산로34길 7 ~ 35', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤도', 'm', 22, 183, 81, 'officer@daum.net', '010-5568-3752', '교수', '62265', '광주광역시 광산구 월계로16번길 78', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진솔은', 'f', 44, 165, 67, 'deep@naver.com', '010-1019-7131', '노무사', '06148', '서울특별시 강남구 언주로98길 31 ~ 39-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림민서', 'm', 16, 162, 87, 'drug@naver.com', '010-5680-4102', '취업준비생', '18308', '경기도 화성시 봉담읍 매봉로 387 ~ 420-30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백현정', 'f', 45, 160, 65, 'talk_picture@naver.com', '010-8341-1705', '구성작가', '07782', '서울특별시 강서구 곰달래로 168 ~ 196', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수현', 'f', 48, 161, 48, 'technology@gmail.com', '010-9368-8598', '학생', '06232', '서울특별시 강남구 강남대로 376 ~ 390', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주서은', 'f', 41, 161, 41, 'effect@gmail.com', '010-1396-4437', '건물주', '08242', '서울특별시 구로구 고척로33라길 14-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박신아', 'f', 42, 178, 47, 'west@live.com', '010-4385-4783', '시인', '14547', '경기도 부천시 원미구 석천로178번길 7 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하시원', 'm', 47, 164, 72, 'foreign@naver.com', '010-7815-3830', '택시기사', '07762', '서울특별시 강서구 가로공원로82길 4 ~ 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다예', 'f', 44, 165, 49, 'open@naver.com', '010-1740-7217', '비서', '01048', '서울특별시 강북구 노해로27길 3 ~ 41', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지율', 'f', 23, 178, 69, 'role@yahoo.com', '010-5848-1771', '수질환경연구원', '61189', '광주광역시 북구 호동로15번길 14', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시우', 'm', 42, 160, 81, 'whatever@daum.net', '010-7320-2891', '해양환경기사', '01150', '서울특별시 강북구 오현로 163 ~ 165-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원영', 'f', 24, 152, 46, 'half@daum.net', '010-4802-3107', '음향및녹음기사', '08818', '서울특별시 관악구 대학길 127 ~ 170', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김류원', 'f', 44, 160, 62, 'firm@yahoo.com', '010-9668-1746', '중식요리사', '04920', '서울특별시 광진구 천호대로103길 8 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이헌', 'm', 31, 168, 65, 'serious@daum.net', '010-3259-4503', '학생', '61162', '광주광역시 북구 밤실로 193 ~ 213', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다언', 'f', 45, 166, 44, 'form@live.com', '010-1403-3467', '변리사', '61189', '광주광역시 북구 호동로43번길 17 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕이주', 'f', 28, 150, 46, 'small@gmail.com', '010-9476-6406', '학생', '35077', '대전광역시 중구 학고개로53번길 1 ~ 15', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정준후', 'm', 33, 172, 76, 'degree_eat@gmail.com', '010-8024-7165', '사회복지사', '04543', '서울특별시 중구 을지로11길 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕은찬', 'm', 49, 183, 84, 'meeting_stuff@daum.net', '010-7200-1109', '학생', '08716', '서울특별시 관악구 국회단지6길 2 ~ 30', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정임', 'f', 25, 152, 49, 'whatever@yahoo.com', '010-5687-9739', '학생', '07506', '서울특별시 강서구 방화대로 94 ~ 96', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우희예', 'f', 24, 174, 46, 'many@live.com', '010-3366-1304', '일식요리사', '04987', '서울특별시 광진구 능동로32길 95 ~ 163', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지호', 'm', 44, 185, 70, 'everybody@gmail.com', '010-1031-7476', '건물주', '07733', '서울특별시 강서구 등촌로13나길 25 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추재찬', 'm', 21, 179, 71, '@yahoo.com', '010-5587-6879', '음향및녹음기사', '14585', '경기도 부천시 원미구 석천로110번길 6 ~ 62', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이세진', 'f', 23, 179, 60, 'door@gmail.com', '010-2514-5617', '평생교육사', '06915', '서울특별시 동작구 만양로14사길 1 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤섭', 'm', 48, 171, 85, 'responsibility_remove@naver.com', '010-2242-8084', '장학사', '63621', '제주특별자치도 서귀포시 남원읍 남원체육관로279번길 1 ~ 23', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박화영', 'f', 33, 164, 47, 'if_chance@gmail.com', '010-6272-1226', '여행가이드', '04364', '서울특별시 용산구 새창로35길 9', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시훈', 'm', 40, 182, 61, 'hear@naver.com', '010-8858-1712', '프로골퍼', '08816', '서울특별시 관악구 대학7길 52', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍도원', 'm', 46, 162, 80, 'campaign@yahoo.com', '010-2391-9104', '시조시인', '06132', '서울특별시 강남구 논현로 503 ~ 509', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정소희', 'f', 32, 159, 51, 'son@live.com', '010-1008-5699', '투자분석가', '63523', '제주특별자치도 서귀포시 안덕면 동광본동로22번길 3 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유주', 'f', 18, 173, 54, 'air@yahoo.com', '010-1430-5604', '장학사', '01193', '서울특별시 강북구 솔샘로48길 4', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최신아', 'f', 37, 150, 46, 'management@gmail.com', '010-9155-4907', '취업준비생', '01360', '서울특별시 도봉구 해등로34길 7 ~ 93', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강지환', 'm', 26, 170, 73, 'foot@live.com', '010-7636-2072', '양식기능사', '07692', '서울특별시 강서구 강서로46길 39 ~ 79', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동운', 'm', 31, 182, 88, 'author_month@naver.com', '010-3634-8730', '학생', '07066', '서울특별시 동작구 신대방14가길 2 ~ 68', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구소희', 'f', 17, 174, 60, 'else@daum.net', '010-8745-1836', '여행가이드', '01168', '서울특별시 강북구 솔매로30길 1 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최환희', 'm', 26, 184, 61, 'measure@daum.net', '010-4037-5672', '구성작가', '08819', '서울특별시 관악구 대학길 52 ~ 98', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동해', 'm', 44, 165, 66, 'local@daum.net', '010-5893-7623', '유치원교사', '02114', '서울특별시 중랑구 중랑천로17가길 2 ~ 20', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방현우', 'm', 28, 183, 79, 'message@naver.com', '010-8792-1905', '간호사', '06687', '서울특별시 서초구 방배로11길 35', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임다희', 'f', 20, 165, 63, 'gun@gmail.com', '010-4979-4542', '취업준비생', '06558', '서울특별시 서초구 동광로3길 32 ~ 64', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박해은', 'f', 29, 170, 69, 'score@live.com', '010-8580-8020', '항공정비사', '25620', '강원도 강릉시 강동면 대동제방길 6 ~ 67', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천승준', 'm', 45, 181, 89, 'someone@gmail.com', '010-2136-7311', '회계사', '03900', '서울특별시 마포구 한강난지로 22 ~ 162', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국윤후', 'm', 25, 185, 88, 'even_against@gmail.com', '010-5251-6686', '전화교환원', '17548', '경기도 안성시 공도읍 마정길 2 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정루완', 'f', 31, 167, 68, 'high@daum.net', '010-1541-7645', '변리사', '25311', '강원도 평창군 봉평면 금당계곡로 1258 ~ 1883', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤상', 'm', 24, 167, 87, 'western_wind@daum.net', '010-4271-3815', '회계사', '06587', '서울특별시 서초구 동광로30길 5 ~ 42', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염세연', 'f', 37, 167, 68, 'lead@gmail.com', '010-6356-2892', '취업준비생', '04040', '서울특별시 마포구 홍익로 1 ~ 19', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '은이연', 'f', 44, 151, 50, 'believe_scene@daum.net', '010-8154-4906', '음향및녹음기사', '07709', '서울특별시 강서구 강서로45다길 62-7 ~ 68', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이초현', 'f', 42, 170, 58, 'dead@live.com', '010-3593-9167', '음악치료사', '06362', '서울특별시 강남구 광평로42길 3 ~ 22-12', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은영', 'f', 43, 177, 50, 'death@naver.com', '010-6967-9941', '조리사', '11640', '경기도 의정부시 신흥로 63 ~ 67', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백주혁', 'm', 22, 164, 77, 'dead_how@naver.com', '010-5527-6933', '경영컨설턴트', '01014', '서울특별시 강북구 4.19로11길 6 ~ 35', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선윤형', 'm', 23, 179, 69, 'free@naver.com', '010-1693-6108', '방사선사', '04205', '서울특별시 마포구 만리재옛9길 1 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예율', 'f', 31, 161, 48, 'minute@gmail.com', '010-1450-1858', '건물주자제분', '06325', '서울특별시 강남구 선릉로10길 4 ~ 28', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차원일', 'm', 34, 188, 68, 'friend@live.com', '010-4329-8692', '간호사', '08835', '서울특별시 관악구 서림1길 4 ~ 86', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대훈', 'm', 26, 186, 62, 'movement@gmail.com', '010-9727-4013', '위생사', '34992', '대전광역시 중구 문화로94번길 3 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승민', 'm', 48, 187, 76, 'yard_over@naver.com', '010-4675-9010', '시조시인', '06017', '서울특별시 강남구 압구정로46길 6 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차영', 'f', 36, 164, 65, 'guy@live.com', '010-9312-2641', '건물주자제분', '08799', '서울특별시 관악구 낙성대로 77 ~ 101', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지서현', 'f', 41, 155, 69, 'period@live.com', '010-8518-8423', '택시기사', '03974', '서울특별시 마포구 성미산로15길 73', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤후', 'm', 40, 189, 80, 'pattern@naver.com', '010-5306-4890', '학생', '07709', '서울특별시 강서구 강서로45다길 62-7 ~ 68', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로선이', 'f', 45, 150, 45, 'better@daum.net', '010-1198-9768', '백수', '05321', '서울특별시 강동구 구천면로39길 23 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이안', 'm', 20, 181, 64, 'kill@daum.net', '010-3000-2851', '버스운전사', '06582', '서울특별시 서초구 동광로33길 25 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로윤형', 'm', 42, 160, 60, 'candidate@gmail.com', '010-2924-4197', '학생', '01456', '서울특별시 도봉구 도봉로112길 50 ~ 74', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최영린', 'f', 16, 177, 54, 'matter_discover@gmail.com', '010-9563-9070', '상품중개인', '08578', '서울특별시 금천구 독산로73길 6 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석설희', 'f', 32, 161, 45, 'off@live.com', '010-8759-9492', '피부관리사', '48706', '부산광역시 동구 망양로809번길 12 ~ 12-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤호', 'm', 43, 184, 75, 'pick_in@gmail.com', '010-4118-5741', '의사', '05110', '서울특별시 광진구 뚝섬로48길 46 ~ 66', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효정', 'f', 24, 164, 51, 'pay@naver.com', '010-8232-7357', '선물중개인', '34058', '대전광역시 유성구 대덕대로989번길 9-12 ~ 25', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진영아', 'f', 36, 166, 48, 'establish@live.com', '010-5415-4505', '학생', '11637', '경기도 의정부시 신흥로106번길 4 ~ 52-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재현', 'm', 27, 171, 64, 'difficult@yahoo.com', '010-4179-5367', '항공기관사', '04918', '서울특별시 광진구 긴고랑로14길 63 ~ 90', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤혁', 'm', 29, 169, 82, 'term@gmail.com', '010-9858-4794', '건물주', '05227', '서울특별시 강동구 동남로83길 49 ~ 94', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성빈', 'm', 45, 171, 73, 'three@naver.com', '010-1029-4642', '취업준비생', '11678', '경기도 의정부시 신흥로 346 ~ 382', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박아설', 'f', 21, 167, 42, 'analysis@naver.com', '010-8412-6328', '구성작가', '61189', '광주광역시 북구 호동로15번길 15 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성찬', 'm', 48, 188, 70, 'throughout@gmail.com', '010-6794-3113', '가수', '06330', '서울특별시 강남구 개포로 522', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도훈', 'm', 26, 189, 63, 'reach_image@daum.net', '010-4625-8607', '학생', '04953', '서울특별시 광진구 용마산로2길 6 ~ 22-6', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동우', 'm', 47, 184, 61, 'business_interesting@live.com', '010-1328-1813', '가수', '62349', '광주광역시 광산구 월곡로 17 ~ 31', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이찬', 'm', 36, 185, 73, 'drug@gmail.com', '010-3142-1759', '농업기술자', '34428', '대전광역시 대덕구 계족로521번길 33 ~ 96', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준아', 'm', 18, 164, 65, 'development@gmail.com', '010-3598-4031', '피부관리사', '08600', '서울특별시 금천구 금하로1다길 2 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소윤채', 'm', 34, 162, 75, 'especially_action@live.com', '010-4154-8648', '보험계리인', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공예나', 'f', 49, 168, 47, 'enter_sense@daum.net', '010-8397-4746', '항공기관사', '47612', '부산광역시 연제구 마곡천로 29-8', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정승일', 'm', 35, 167, 69, 'his@live.com', '010-6809-3257', '조경원', '06608', '서울특별시 서초구 서운로 197 ~ 221', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문원준', 'm', 47, 166, 65, 'prepare@live.com', '010-3614-2757', '학생', '01189', '서울특별시 강북구 삼양로 181 ~ 203', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표이찬', 'm', 20, 181, 71, 'period@naver.com', '010-7530-5258', '조리사', '05017', '서울특별시 광진구 아차산로33길 50 ~ 52', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은진', 'm', 30, 186, 85, 'idea_health@live.com', '010-5333-2099', '감정평가사', '08713', '서울특별시 관악구 국회단지27길 1 ~ 15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정정안', 'f', 18, 169, 59, 'build@live.com', '010-7525-7218', '해양환경기사', '05016', '서울특별시 광진구 아차산로33길 49 ~ 53', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤후', 'm', 22, 188, 73, 'weapon@live.com', '010-6741-6688', '섬유공학기술자', '62208', '광주광역시 광산구 계안길 7 ~ 71', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차연', 'f', 29, 150, 60, 'various@gmail.com', '010-6600-8165', '취업준비생', '06613', '서울특별시 서초구 서운로 178 ~ 194', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태은', 'm', 39, 181, 70, 'can@naver.com', '010-6199-1764', '농수산물중개인', '12413', '경기도 가평군 가평읍 가화로 127 ~ 207', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '고소이', 'f', 40, 167, 59, 'but@naver.com', '010-3452-4931', '의무기록사', '06147', '서울특별시 강남구 언주로98길 5 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성연', 'f', 49, 150, 50, 'school@yahoo.com', '010-6762-3430', '취업준비생', '05102', '서울특별시 광진구 자양로3길 26 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동인', 'm', 21, 174, 80, 'age@gmail.com', '010-8660-5162', '중식요리사', '07519', '서울특별시 강서구 양천로 125', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은슬', 'f', 18, 178, 48, 'cell@naver.com', '010-8629-4945', '자동차딜러', '07667', '서울특별시 강서구 공항대로58가길 81', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황유한', 'm', 44, 166, 69, 'side@yahoo.com', '010-5420-2602', '방송기술감독', '25233', '강원도 횡성군 횡성읍 횡성로 401 ~ 409', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁인영', 'f', 33, 155, 61, 'he@naver.com', '010-7600-3562', '학생', '24769', '강원도 고성군 토성면 장성천길 185 ~ 284-14', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '공설희', 'f', 25, 163, 48, 'performance@gmail.com', '010-3082-3537', '가수', '63302', '제주특별자치도 제주시 화삼북로 35 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정해아', 'f', 35, 160, 52, 'approach_feeling@gmail.com', '010-2769-5457', '섬유공학기술자', '06081', '서울특별시 강남구 봉은사로109길 34 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동율', 'm', 38, 184, 88, 'performance_country@naver.com', '010-9908-2467', '프로경주선수', '01123', '서울특별시 강북구 솔매로31길 20 ~ 42', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이효솔', 'f', 19, 168, 46, 'operation@gmail.com', '010-4922-6325', '교수', '61500', '광주광역시 동구 지원로5번길 3 ~ 29-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '함송혁', 'm', 19, 172, 64, 'research@live.com', '010-9591-6475', '칼럼니스트', '18295', '경기도 화성시 봉담읍 매봉로 321-27 ~ 378', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이재민', 'm', 18, 184, 65, 'tax_other@naver.com', '010-2476-6809', '학생', '04366', '서울특별시 용산구 새창로42길 5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성한', 'm', 35, 183, 76, 'apply_especially@yahoo.com', '010-7937-1838', '방송작가', '02497', '서울특별시 동대문구 망우로14가길 9-1 ~ 65-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤진', 'm', 28, 181, 84, 'forget@yahoo.com', '010-5591-9484', '버스운전사', '63194', '제주특별자치도 제주시 오현길 9 ~ 35-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤준', 'm', 35, 165, 81, 'still@naver.com', '010-2360-6133', '학생', '62459', '광주광역시 광산구 건재로 101-78 ~ 101-82', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정소현', 'f', 46, 175, 68, 'development@daum.net', '010-6561-4914', '건물주자제분', '04995', '서울특별시 광진구 천호대로104가길 3 ~ 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태영', 'm', 37, 162, 61, 'eat@gmail.com', '010-2621-1004', '프로바둑기사', '01048', '서울특별시 강북구 노해로23길 5 ~ 50', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁우준', 'm', 24, 172, 70, 'this@gmail.com', '010-9276-6572', '투자분석가', '18329', '경기도 화성시 봉담읍 분천길 1 ~ 189', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤혁', 'm', 24, 173, 78, 'ago@naver.com', '010-6950-5484', '항공승무원', '63277', '제주특별자치도 제주시 중앙로3길 29-2 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명윤수', 'm', 30, 162, 89, 'Republican_simple@gmail.com', '010-4620-7357', '버스운전사', '04910', '서울특별시 광진구 긴고랑로11길 11 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤다운', 'f', 33, 159, 63, 'return@yahoo.com', '010-8455-9182', '취업준비생', '04544', '서울특별시 중구 을지로15길 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정인혜', 'f', 25, 152, 64, 'box@yahoo.com', '010-6927-2471', '이미용사', '63185', '제주특별자치도 제주시 서사로24길 2 ~ 28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박채이', 'f', 45, 159, 42, 'fast@gmail.com', '010-9220-8139', '직업상담사', '02498', '서울특별시 동대문구 망우로16길 32 ~ 58', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이헌', 'm', 17, 162, 89, 'keep@daum.net', '010-4548-6600', '계산원', '08578', '서울특별시 금천구 독산로75길 3 ~ 39', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이송빈', 'm', 33, 185, 88, 'out@gmail.com', '010-6443-4260', '사회복지사', '01633', '서울특별시 노원구 덕릉로135길 3 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍신애', 'f', 35, 170, 54, 'always@yahoo.com', '010-8298-2924', '아나운서', '10120', '경기도 김포시 유현1로 71 ~ 95', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태율', 'm', 43, 180, 83, 'market@naver.com', '010-2005-6089', '학생', '25364', '강원도 평창군 방림면 하우골길 5-12 ~ 111-30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최화설', 'f', 36, 171, 54, 'other_live@naver.com', '010-3699-7271', '방송연출가', '05255', '서울특별시 강동구 고덕로24나길 4 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최유라', 'f', 48, 155, 55, 'pretty@naver.com', '010-5330-1153', '학생', '01046', '서울특별시 강북구 노해로23길 115 ~ 138', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최두나', 'f', 33, 166, 50, 'small@daum.net', '010-3908-9585', '투자분석가', '61766', '광주광역시 남구 신효천1길 2 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림한수', 'm', 47, 175, 70, 'cold@yahoo.com', '010-8316-6820', '섬유공학기술자', '04987', '서울특별시 광진구 능동로36길 95 ~ 187', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이수', 'm', 40, 179, 86, 'whose@daum.net', '010-8534-4507', '버스운전사', '07642', '서울특별시 강서구 수명로2길 16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이영', 'f', 27, 151, 64, 'though@live.com', '010-6707-4493', '독서지도사', '63211', '제주특별자치도 제주시 오복5길 3 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정예솔', 'f', 43, 151, 40, 'lie_investment@gmail.com', '010-6101-4438', '의사', '12518', '경기도 양평군 용문면 용문삼성로65번길 1 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조태영', 'm', 42, 183, 67, 'take@live.com', '010-6967-6373', '취업준비생', '25620', '강원도 강릉시 강동면 대동길 3 ~ 152', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박정아', 'f', 20, 157, 65, 'leg@daum.net', '010-8989-8228', '건물주자제분', '08349', '서울특별시 구로구 개봉로11길 38-35', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어성엽', 'm', 28, 181, 66, 'financial@gmail.com', '010-5364-6120', '학생', '07741', '서울특별시 강서구 곰달래로 245 ~ 271', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동해', 'm', 43, 170, 61, 'be@live.com', '010-7450-9750', '취업준비생', '14603', '경기도 부천시 원미구 석천로 94 ~ 95', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최리예', 'f', 24, 169, 41, 'study@gmail.com', '010-1607-4883', '취업준비생', '03318', '서울특별시 은평구 갈현로41길 3 ~ 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길수현', 'f', 38, 167, 60, 'before_several@daum.net', '010-6863-4060', '패턴사', '46769', '부산광역시 강서구 가덕해안로2번가길 10 ~ 135', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백다효', 'f', 48, 177, 67, 'three@naver.com', '010-9625-6483', '응급구조사', '02114', '서울특별시 중랑구 중랑천로29길 9 ~ 49', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은섭', 'm', 16, 182, 66, 'pay@gmail.com', '010-9302-6400', '포토그래퍼', '02497', '서울특별시 동대문구 망우로14가길 9-1 ~ 65-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재우', 'm', 45, 178, 78, 'difficult@gmail.com', '010-4934-1917', '취업준비생', '02476', '서울특별시 동대문구 약령시로7길 3 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정민찬', 'm', 38, 180, 78, 'south@naver.com', '010-7437-5931', '위생사', '06103', '서울특별시 강남구 선릉로115길 3 ~ 45', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석동훈', 'm', 41, 182, 69, 'human@live.com', '010-4359-4165', '여론조사전문가', '34427', '대전광역시 대덕구 청림길 21 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이안', 'm', 26, 175, 66, 'huge@yahoo.com', '010-4070-7540', '택시기사', '24664', '강원도 인제군 상남면 엄달골길 46 ~ 637', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허장원', 'm', 47, 180, 72, 'spring_certain@gmail.com', '010-2302-7549', '학생', '05261', '서울특별시 강동구 상암로17길 5 ~ 9', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태율', 'm', 27, 167, 81, 'current@daum.net', '010-4790-1318', '취업준비생', '06127', '서울특별시 강남구 테헤란로13길 55 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김슬민', 'f', 45, 179, 66, 'blue@live.com', '010-6762-4065', '헤드헌터', '61188', '광주광역시 북구 호동로15번길 55 ~ 98', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방태영', 'm', 28, 165, 69, 'able_Congress@naver.com', '010-3737-7484', '보험계리인', '07767', '서울특별시 강서구 가로공원로80길 53 ~ 86', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차주원', 'f', 34, 161, 50, 'either@gmail.com', '010-7002-3164', '취업준비생', '01127', '서울특별시 강북구 삼양로 240 ~ 246-14', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이은성', 'm', 25, 181, 75, 'later@naver.com', '010-6779-7918', '정비사', '01048', '서울특별시 강북구 노해로23길 5 ~ 50', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '고수희', 'f', 31, 174, 41, 'important@live.com', '010-9122-4355', '방송인', '07786', '서울특별시 강서구 곰달래로 272', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원준', 'm', 26, 172, 64, 'series@naver.com', '010-2511-2461', '건물주', '61161', '광주광역시 북구 밤실로208번길 3 ~ 55', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영혜', 'f', 42, 173, 69, 'success@live.com', '010-7272-8655', '취업준비생', '61189', '광주광역시 북구 호동로43번길 10 ~ 10-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금서빈', 'f', 31, 150, 50, 'term_person@daum.net', '010-4575-6885', '치어리더', '35266', '대전광역시 서구 갈마로147번길 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽애린', 'f', 49, 150, 49, 'and@live.com', '010-8162-5148', '속기사', '02114', '서울특별시 중랑구 중랑천로15길 6 ~ 58', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한규', 'm', 23, 167, 73, 'bill@naver.com', '010-1731-9081', '원예기술자', '01165', '서울특별시 강북구 도봉로 88 ~ 104', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길주호', 'm', 33, 181, 84, 'at@gmail.com', '010-9319-5867', '방송인', '35078', '대전광역시 중구 학고개로49번길 17 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김서영', 'f', 33, 175, 40, 'pain@naver.com', '010-3060-1004', '취업준비생', '61042', '광주광역시 북구 신용산길 460', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최소빈', 'f', 27, 168, 47, 'local_different@gmail.com', '010-9962-7941', '건물주', '61189', '광주광역시 북구 호동로15번길 9', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤설', 'f', 25, 174, 64, 'hundred@naver.com', '010-5129-2358', '속기사', '05001', '서울특별시 광진구 동일로48길 6 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤서애', 'f', 17, 177, 58, 'back@yahoo.com', '010-2466-6035', '변리사', '07665', '서울특별시 강서구 공항대로58가길 3 ~ 73', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원재', 'm', 45, 177, 79, 'here@daum.net', '010-2701-8987', '백수', '06532', '서울특별시 서초구 신반포로43길 10 ~ 21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김주찬', 'm', 22, 183, 65, 'current@daum.net', '010-1231-5113', '측량기술자', '08782', '서울특별시 관악구 장군봉4길 2 ~ 50', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '마동한', 'm', 40, 187, 82, 'style@yahoo.com', '010-9849-5451', '카피라이터', '62040', '광주광역시 서구 화운로23번길 2 ~ 14-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전유찬', 'm', 23, 185, 79, 'color@naver.com', '010-5894-1648', '금융자산운용가', '05062', '서울특별시 광진구 뚝섬로51길 1 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은섭', 'm', 19, 172, 69, 'agreement@live.com', '010-2413-7435', '증권중개인', '24161', '강원도 화천군 사내면 호음로 793-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이황', 'm', 24, 164, 80, 'poor_person@live.com', '010-3439-8908', '취업준비생', '11665', '경기도 의정부시 신흥로 309 ~ 329', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤수', 'm', 39, 167, 83, 'increase@live.com', '010-6944-3133', '간호사', '08789', '서울특별시 관악구 봉천로58길 3 ~ 24', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방윤영', 'f', 22, 158, 57, 'as@naver.com', '010-9521-9703', '취업준비생', '08843', '서울특별시 관악구 문성로 220 ~ 244', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '심효림', 'f', 29, 173, 44, 'month@daum.net', '010-2490-5533', '해양환경기사', '05292', '서울특별시 강동구 양재대로138길 21 ~ 51', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤서', 'f', 21, 177, 69, 'collection@gmail.com', '010-5919-4026', '한의사', '11671', '경기도 의정부시 신흥로 265 ~ 275', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최효주', 'f', 16, 165, 46, 'any_finish@daum.net', '010-6849-1217', '운동감독', '01729', '서울특별시 노원구 중계로2길 82 ~ 88', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '한희수', 'm', 35, 178, 60, 'ok@gmail.com', '010-4787-4853', '취업준비생', '06330', '서울특별시 강남구 개포로 516', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최주연', 'f', 22, 174, 59, 'study@live.com', '010-6652-5574', '정형외과의', '47125', '부산광역시 부산진구 성지로 93 ~ 133-1', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박연우', 'm', 20, 160, 86, 'discover@yahoo.com', '010-7584-7061', '패턴사', '11639', '경기도 의정부시 신흥로 64 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허도헌', 'm', 24, 172, 89, 'cold@naver.com', '010-1083-8537', '디자이너', '01447', '서울특별시 도봉구 도봉로113길 7 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동은', 'm', 41, 189, 85, 'whose@daum.net', '010-4866-9501', '학생', '06018', '서울특별시 강남구 압구정로50길 5-9 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효성', 'm', 36, 181, 86, 'city@gmail.com', '010-5133-2625', '비행기조종사', '05101', '서울특별시 광진구 뚝섬로52가길 30 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄효준', 'm', 22, 174, 85, 'some@naver.com', '010-6583-5782', '네일아티스트', '48707', '부산광역시 동구 망양로763번길 2 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다훈', 'm', 42, 167, 79, 'seat@gmail.com', '010-9520-4703', '음향및녹음기사', '06244', '서울특별시 강남구 역삼로 125 ~ 151', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로민준', 'm', 30, 168, 66, 'billion@yahoo.com', '010-2742-6028', '행사기획자', '01079', '서울특별시 강북구 수유로17나길 3 ~ 26-4', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박희예', 'f', 21, 164, 63, 'positive@naver.com', '010-4741-7179', '프로경주선수', '05099', '서울특별시 광진구 뚝섬로50길 3 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원우', 'm', 22, 172, 85, 'manage_often@gmail.com', '010-7922-9138', '학생', '08768', '서울특별시 관악구 남부순환로 1351 ~ 1377', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤헌', 'm', 29, 182, 61, 'different@daum.net', '010-8193-2810', '건물주', '01605', '서울특별시 노원구 동일로241길 68 ~ 84', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정해연', 'f', 43, 171, 50, 'effort@live.com', '010-6848-8999', '건물주', '34121', '대전광역시 유성구 대덕대로568번길 5 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김예율', 'f', 30, 155, 55, 'record_rich@gmail.com', '010-2525-3386', '학생', '01129', '서울특별시 강북구 덕릉로 94 ~ 122', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최서윤', 'f', 23, 166, 47, 'law@daum.net', '010-9894-1785', '회계사', '05307', '서울특별시 강동구 양재대로131길 9 ~ 46', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박우원', 'm', 41, 169, 73, 'house@daum.net', '010-5816-4994', '취업준비생', '61189', '광주광역시 북구 호동로15번길 2', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현희', 'f', 47, 165, 63, 'begin@live.com', '010-9691-3751', '텔레마케터', '06683', '서울특별시 서초구 방배로13길 10 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오세진', 'f', 17, 150, 67, 'nation_despite@gmail.com', '010-5026-8068', '직업상담사', '01204', '서울특별시 강북구 솔샘로60길 13-13', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김우원', 'm', 27, 163, 73, 'rise@naver.com', '010-3955-4869', '계산원', '62432', '광주광역시 광산구 고내상길79번길 2 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이영재', 'm', 34, 188, 61, 'one@daum.net', '010-4823-7174', '학생', '34121', '대전광역시 유성구 대덕대로590번길 11-10 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동희', 'm', 26, 172, 87, 'brother@gmail.com', '010-9660-6828', '학생', '05372', '서울특별시 강동구 풍성로65길 5 ~ 35', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변해연', 'f', 18, 162, 61, 'game_kitchen@naver.com', '010-2538-4053', '스포츠트레이너', '06269', '서울특별시 강남구 도곡로18길 41 ~ 61', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은후', 'm', 30, 176, 81, 'parent_run@daum.net', '010-3684-7955', '스포츠트레이너', '04934', '서울특별시 광진구 긴고랑로15길 15 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '소효슬', 'f', 29, 177, 41, 'success@naver.com', '010-6323-2264', '양식요리사', '01065', '서울특별시 강북구 오패산로77가길 3 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동훈', 'm', 38, 182, 67, 'system_inside@live.com', '010-2031-5269', '정비사', '08863', '서울특별시 관악구 문성로 74 ~ 86', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박대한', 'm', 48, 171, 62, 'catch@gmail.com', '010-6596-5442', '행사기획자', '11637', '경기도 의정부시 신흥로106번길 4 ~ 52-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원준', 'm', 47, 176, 63, 'continue@daum.net', '010-5285-6844', '취업준비생', '06622', '서울특별시 서초구 서운로 122', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다은', 'f', 18, 175, 63, 'officer@naver.com', '010-4207-9310', '학생', '06555', '서울특별시 서초구 동광로3길 70 ~ 91', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '염혜린', 'f', 39, 159, 65, 'main@gmail.com', '010-7086-1403', '양식요리사', '08745', '서울특별시 관악구 봉천로49다길 2 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이솔', 'f', 24, 173, 51, 'deep_base@naver.com', '010-6081-6099', '한의사', '01219', '서울특별시 강북구 도봉로10다길 4 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강리연', 'f', 42, 164, 41, 'win@gmail.com', '010-2191-1189', '감정평가사', '05003', '서울특별시 광진구 광나루로15길 7-3 ~ 33', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이희영', 'f', 27, 158, 65, 'save_no@daum.net', '010-5112-4929', '취업준비생', '08716', '서울특별시 관악구 국회단지6길 2 ~ 30', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시혁', 'm', 38, 177, 74, 'glass@gmail.com', '010-6044-5924', '취업준비생', '48947', '부산광역시 중구 광복로49번길 3 ~ 37-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최아준', 'm', 40, 177, 70, 'election@gmail.com', '010-1138-2644', '학생', '08317', '서울특별시 구로구 구로동로7라길 2 ~ 39', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다훈', 'm', 32, 167, 64, 'defense@naver.com', '010-5856-7793', '검사', '63525', '제주특별자치도 서귀포시 안덕면 병악로404번길 2 ~ 6-4', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석선이', 'f', 42, 159, 55, 'nice@naver.com', '010-6909-7746', '취업준비생', '61760', '광주광역시 남구 신창길 141 ~ 148-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기두영', 'f', 29, 160, 67, 'drug_many@gmail.com', '010-3650-2016', '사회복지사', '04543', '서울특별시 중구 을지로11길 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수현', 'f', 39, 173, 51, '@yahoo.com', '010-4999-8432', '자동차딜러', '08859', '서울특별시 관악구 난향9길 3 ~ 73', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은오', 'm', 38, 167, 71, 'grow_bill@naver.com', '010-6892-3552', '비행기조종사', '05307', '서울특별시 강동구 양재대로131가길 4-4 ~ 20', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정세진', 'f', 26, 164, 56, 'some_particularly@gmail.com', '010-1567-2123', '공무원', '63597', '제주특별자치도 서귀포시 태평로526번길 3-2 ~ 25-20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주아', 'f', 23, 160, 43, 'increase@daum.net', '010-9554-7489', '학생', '06983', '서울특별시 동작구 현충로10길 101 ~ 109', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예지', 'f', 48, 174, 45, 'want@naver.com', '010-4345-3176', '백수', '01123', '서울특별시 강북구 솔매로31가길 3 ~ 15-7', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박래윤', 'f', 44, 153, 67, 'drug@naver.com', '010-3767-2780', '여행가이드', '18480', '경기도 화성시 동부대로970번길 1 ~ 61', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우서후', 'm', 20, 162, 88, 'example@gmail.com', '010-4982-6992', '취업준비생', '04202', '서울특별시 마포구 만리재옛길 101-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수현', 'f', 26, 158, 59, 'blood@gmail.com', '010-7141-8054', '원예기술자', '34130', '대전광역시 유성구 대덕대로577번길 37 ~ 51', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박환희', 'm', 28, 181, 71, 'teacher@gmail.com', '010-8889-4819', '방사선사', '08771', '서울특별시 관악구 남부순환로 1444 ~ 1474', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성찬', 'm', 41, 171, 64, 'strong@yahoo.com', '010-3954-4146', '학생', '06020', '서울특별시 강남구 압구정로46길 42 ~ 77', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남채민', 'm', 30, 165, 65, 'land@live.com', '010-6116-1276', '양식요리사', '06532', '서울특별시 서초구 신반포로41길 7 ~ 16', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은률', 'm', 16, 181, 67, 'cut@live.com', '010-4166-5885', '경호원', '04987', '서울특별시 광진구 능동로36길 95 ~ 187', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연후', 'm', 47, 173, 89, 'contain@daum.net', '010-2275-4683', '취업준비생', '06144', '서울특별시 강남구 선릉로107길 13 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최원일', 'm', 20, 180, 71, 'news@gmail.com', '010-2580-7211', '방송기술감독', '07765', '서울특별시 강서구 가로공원로82길 22 ~ 44', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유나', 'f', 27, 177, 52, 'window@daum.net', '010-3812-4380', '학생', '08702', '서울특별시 관악구 신사로20길 6 ~ 50', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문래원', 'm', 23, 189, 80, 'second_necessary@live.com', '010-1341-8051', '촬영기자', '35086', '대전광역시 중구 방아미로66번길 11 ~ 257', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성아', 'f', 42, 152, 42, 'significant@daum.net', '010-7343-9883', '농수산물중개인', '02497', '서울특별시 동대문구 망우로14가길 9-1 ~ 65-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은선', 'f', 27, 174, 42, 'south@naver.com', '010-1264-5428', '취업준비생', '16213', '경기도 수원시 장안구 창훈로 42 ~ 52-4', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원혁', 'm', 42, 164, 79, 'effort_sort@daum.net', '010-3697-4593', '건물주자제분', '04096', '서울특별시 마포구 독막로29길 6 ~ 48', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤하', 'f', 20, 161, 45, 'level@yahoo.com', '010-9759-8166', '학생', '02496', '서울특별시 동대문구 망우로16길 20 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박리안', 'm', 17, 167, 61, 'their_could@gmail.com', '010-9597-7767', '학생', '61960', '광주광역시 서구 상무화원로12번길 3 ~ 6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정혜윤', 'f', 43, 162, 49, 'pass@gmail.com', '010-7785-3575', '레크리에이션강사', '63302', '제주특별자치도 제주시 화삼북로 35 ~ 45', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정슬민', 'f', 44, 167, 43, 'media@gmail.com', '010-5568-9496', '게임기획자', '63603', '제주특별자치도 서귀포시 토상로20번길 3-1 ~ 39-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금다인', 'f', 20, 167, 56, 'period@gmail.com', '010-8097-9822', '학생', '03658', '서울특별시 서대문구 모래내로 330 ~ 352-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이우헌', 'm', 17, 179, 76, 'little@naver.com', '010-2729-5372', '증권투자상담사', '04364', '서울특별시 용산구 새창로35길 11 ~ 13', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤영준', 'm', 31, 164, 69, 'death_more@naver.com', '010-7423-2705', '학생', '04356', '서울특별시 용산구 새창로14길 9-1 ~ 11', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정현정', 'f', 28, 168, 60, 'allow@gmail.com', '010-7177-1061', '학생', '02569', '서울특별시 동대문구 약령중앙로 5 ~ 47-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최수민', 'f', 46, 168, 41, 'firm@naver.com', '010-7151-2060', '뮤지컬배우', '05371', '서울특별시 강동구 풍성로67길 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원재', 'm', 31, 167, 62, 'relate@daum.net', '010-9226-2472', '취업준비생', '25222', '강원도 횡성군 횡성읍 화성로 35 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성민', 'm', 19, 169, 76, 'yard@naver.com', '010-2828-2575', '취업준비생', '06018', '서울특별시 강남구 압구정로48길 15 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성민', 'm', 45, 175, 82, 'ready@naver.com', '010-9605-3259', '건물주자제분', '63010', '제주특별자치도 제주시 한림읍 금능남1길 3 ~ 30', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤후', 'm', 42, 171, 67, 'cost_anything@naver.com', '010-3585-4790', '정형외과의', '08859', '서울특별시 관악구 난향2길 5 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진유지', 'f', 19, 173, 58, 'mission@daum.net', '010-9956-7256', '취업준비생', '02570', '서울특별시 동대문구 약령중앙로 4 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은겸', 'm', 19, 160, 69, 'begin_agent@live.com', '010-9674-2684', '상품중개인', '07767', '서울특별시 강서구 가로공원로80길 53 ~ 86', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김우진', 'm', 19, 184, 74, 'tough@gmail.com', '010-3735-9350', '산부인과의', '04737', '서울특별시 성동구 금호로 17 ~ 47-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박래환', 'm', 25, 181, 74, 'example_police@naver.com', '010-5885-3815', '취업준비생', '34411', '대전광역시 대덕구 계족로574번길 16 ~ 64', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤이', 'f', 22, 153, 57, 'easy_watch@naver.com', '010-5586-3951', '위생사', '06347', '서울특별시 강남구 광평로51길 27 ~ 49', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재빈', 'm', 26, 188, 60, 'agency@live.com', '010-7424-9463', '농업기술자', '34395', '대전광역시 대덕구 계족로 535 ~ 553', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동현', 'm', 28, 179, 88, 'store@naver.com', '010-7844-2449', '장의사', '04938', '서울특별시 광진구 용마산로32길 5 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정희슬', 'f', 23, 161, 51, 'summer@gmail.com', '010-8041-3435', '해양환경기사', '07362', '서울특별시 영등포구 신길로42나길 1 ~ 23', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설동예', 'm', 22, 179, 66, 'violence@live.com', '010-2654-1087', '학생', '06177', '서울특별시 강남구 도곡로 603', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동율', 'm', 26, 187, 74, 'indicate@naver.com', '010-4891-6027', '동화작가', '25309', '강원도 평창군 봉평면 거품소길 21 ~ 228-35', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최효준', 'm', 25, 161, 75, 'stop@daum.net', '010-3141-1728', '취업준비생', '06908', '서울특별시 동작구 현충로 2 ~ 16', '강릉');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다언', 'f', 29, 154, 44, 'nothing@gmail.com', '010-8204-4314', '소아과의', '25304', '강원도 평창군 봉평면 기풍3길 3 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하윤진', 'm', 25, 188, 71, 'hundred@daum.net', '010-2922-1890', '취업준비생', '63171', '제주특별자치도 제주시 서사로7길 1 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유한', 'm', 35, 168, 89, 'child_past@naver.com', '010-4086-3734', '학생', '03318', '서울특별시 은평구 갈현로41나길 4-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연성찬', 'm', 34, 175, 77, 'dream@naver.com', '010-2898-2910', '학생', '08701', '서울특별시 관악구 조원로 49 ~ 101', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤애', 'f', 21, 169, 64, 'Congress@yahoo.com', '010-1001-9454', '장제사', '25303', '강원도 평창군 봉평면 기풍로 48-3 ~ 202', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정애슬', 'f', 22, 179, 55, 'sea@naver.com', '010-8357-6648', '학생', '03616', '서울특별시 서대문구 세검정로1길 61-14 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승완', 'm', 33, 184, 71, 'why@live.com', '010-8633-2213', '학생', '01832', '서울특별시 노원구 공릉로 235 ~ 265', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '안하슬', 'f', 35, 177, 45, 'when@live.com', '010-5449-7470', '농업기술자', '05359', '서울특별시 강동구 천호대로200길 12 ~ 52', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박수아', 'f', 35, 159, 43, 'reason@naver.com', '010-2527-4790', '응급구조사', '61907', '광주광역시 서구 천변좌하로548번길 11 ~ 30', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대훈', 'm', 21, 170, 82, 'close@live.com', '010-3851-5572', '학생', '12518', '경기도 양평군 용문면 용문삼성로101번길 1 ~ 26', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박연후', 'm', 26, 181, 83, 'throw@live.com', '010-9220-4357', '성형외과의', '07773', '서울특별시 강서구 곰달래로 87 ~ 111', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최서연', 'f', 23, 154, 60, 'recent_hair@naver.com', '010-8224-1642', '네일아티스트', '06097', '서울특별시 강남구 선릉로112길 5 ~ 58-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동운', 'm', 25, 189, 72, 'where@live.com', '010-1287-4629', '가구제조수리원', '01206', '서울특별시 강북구 도봉로13길 13 ~ 21-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은후', 'f', 49, 164, 46, 'away_cover@naver.com', '010-8044-2651', '버스운전사', '06529', '서울특별시 서초구 신반포로43길 23-10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주환', 'm', 21, 185, 87, 'sort@gmail.com', '010-5812-4680', '학생', '63526', '제주특별자치도 서귀포시 안덕면 병악로404번길 11 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동우', 'm', 30, 169, 72, 'else@gmail.com', '010-7392-4205', '건물주자제분', '63010', '제주특별자치도 제주시 한림읍 금능1길 2-4 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은규', 'm', 33, 163, 76, 'why@naver.com', '010-6521-5670', '영화배우', '61248', '광주광역시 북구 신임로31번길 79', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤솔', 'f', 34, 160, 47, 'approach@naver.com', '010-8622-8078', '초중고교교사', '61662', '광주광역시 남구 양림로 51 ~ 95', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다형', 'm', 40, 174, 83, 'according_dead@naver.com', '010-6007-8290', '취업준비생', '01126', '서울특별시 강북구 솔매로35길 4 ~ 24', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은찬', 'm', 26, 164, 73, 'open@gmail.com', '010-1645-6956', '레크리에이션강사', '06151', '서울특별시 강남구 언주로98길 28 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남희성', 'm', 36, 171, 64, 'lay@naver.com', '010-9955-9430', '양식기능사', '08762', '서울특별시 관악구 남부순환로 1507 ~ 1537', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정한준', 'm', 22, 171, 73, 'visit@gmail.com', '010-4598-9424', '프로바둑기사', '12419', '경기도 가평군 가평읍 가평제방길 97 ~ 151', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대후', 'm', 19, 184, 89, 'team@naver.com', '010-7557-1166', '소아과의', '05209', '서울특별시 강동구 아리수로97길 20', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정효원', 'f', 24, 179, 45, 'seek@daum.net', '010-8030-5052', '학생', '02114', '서울특별시 중랑구 중랑천로17길 4-6 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강이슬', 'f', 40, 153, 69, 'love_much@gmail.com', '010-4347-9576', '경호원', '06580', '서울특별시 서초구 동광로39길 4 ~ 40', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이송연', 'f', 39, 178, 59, 'number@live.com', '010-6582-9302', '학생', '05105', '서울특별시 광진구 자양로3가길 3 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이주', 'f', 47, 150, 54, 'energy_kill@yahoo.com', '010-3437-4064', '섬유공학기술자', '47125', '부산광역시 부산진구 성지로 93 ~ 133-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황효재', 'm', 25, 180, 71, 'you@gmail.com', '010-9473-4866', '취업준비생', '03717', '서울특별시 서대문구 모래내로 376 ~ 412', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '천설희', 'f', 44, 153, 65, 'for@naver.com', '010-5818-1995', '치과의', '02633', '서울특별시 동대문구 천호대로 353 ~ 405', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양이찬', 'm', 35, 169, 61, 'of@gmail.com', '010-5307-8584', '판사', '01833', '서울특별시 노원구 공릉로 207 ~ 231', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '임승연', 'm', 16, 188, 73, 'at@gmail.com', '010-2773-2717', '도선사', '17548', '경기도 안성시 공도읍 마정개나리길 38-34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이하연', 'f', 40, 157, 41, 'theory_big@live.com', '010-3959-8133', '경영컨설턴트', '18481', '경기도 화성시 동부대로922번길 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승준', 'm', 46, 170, 73, 'victim@yahoo.com', '010-6020-5889', '양식기능사', '63010', '제주특별자치도 제주시 한림읍 금능3길 2 ~ 29-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '설채현', 'f', 41, 156, 61, 'development@yahoo.com', '010-4272-6593', '취업준비생', '61759', '광주광역시 남구 신양촌안길 5 ~ 9-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주주해', 'f', 44, 172, 51, 'carry@live.com', '010-7475-5661', '경영컨설턴트', '08818', '서울특별시 관악구 대학길 127 ~ 170', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정하은', 'f', 18, 166, 50, 'fire_find@yahoo.com', '010-2804-4548', '경영컨설턴트', '01018', '서울특별시 강북구 4.19로 123 ~ 135', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정아루', 'f', 41, 163, 57, 'future@gmail.com', '010-2442-4765', '게임기획자', '63525', '제주특별자치도 서귀포시 안덕면 병악로404번길 6-6 ~ 9', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤설', 'f', 46, 157, 42, 'least@live.com', '010-2968-6436', '야구선수', '05255', '서울특별시 강동구 고덕로24나길 4 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최선후', 'm', 34, 188, 73, 'available@yahoo.com', '010-2980-9128', '방송연출가', '06224', '서울특별시 강남구 역삼로 205 ~ 229', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정대규', 'm', 36, 165, 70, 'physical@naver.com', '010-1793-8166', '건물주', '08789', '서울특별시 관악구 낙성대로 2 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최도윤', 'm', 47, 176, 64, 'lay@gmail.com', '010-8852-8405', '속기사', '01421', '서울특별시 도봉구 해등로4길 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현일', 'm', 22, 169, 87, 'yeah_organization@live.com', '010-7950-7298', '취업준비생', '03961', '서울특별시 마포구 월드컵로31길 11 ~ 48', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김주원', 'f', 46, 151, 48, 'computer_with@live.com', '010-4176-2337', '회계사', '08317', '서울특별시 구로구 구로동로7다길 7 ~ 11', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한수', 'm', 46, 175, 60, 'road@gmail.com', '010-6783-9543', '디자이너', '49483', '부산광역시 사하구 장평로41번길 61 ~ 111', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄선우', 'm', 22, 186, 60, 'material@gmail.com', '010-3315-4376', '네일아티스트', '08716', '서울특별시 관악구 국회단지4길 2 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원우', 'm', 36, 187, 74, 'animal@live.com', '010-1056-8747', '게임기획자', '04903', '서울특별시 광진구 용마산로33길 5 ~ 41', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영인', 'm', 30, 184, 87, 'best_assume@daum.net', '010-9037-7800', '학생', '34975', '대전광역시 중구 문화로99번길 57 ~ 82', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조윤상', 'm', 31, 163, 68, 'dream_course@yahoo.com', '010-5501-3452', '여행가이드', '01145', '서울특별시 강북구 오현로 207', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정승혜', 'f', 38, 157, 56, 'where@naver.com', '010-3554-7183', '소설가', '04550', '서울특별시 중구 을지로12길 5 ~ 18-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재민', 'f', 38, 167, 59, 'today@gmail.com', '010-5882-1279', '원예기술자', '03314', '서울특별시 은평구 갈현로45길 26-4', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정주예', 'f', 47, 165, 48, 'through@daum.net', '010-9490-2199', '취업준비생', '61763', '광주광역시 남구 신장1안길 1 ~ 17', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최애설', 'f', 44, 162, 43, 'Mr@gmail.com', '010-4794-9534', '조명감독', '04543', '서울특별시 중구 을지로11길 24 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수빈', 'f', 23, 159, 68, 'source_victim@yahoo.com', '010-6858-4900', '경영컨설턴트', '11636', '경기도 의정부시 신흥로 71 ~ 103-7', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤교', 'm', 35, 168, 64, 'despite@yahoo.com', '010-8404-8952', '취업준비생', '25306', '강원도 평창군 봉평면 경강로 428-28 ~ 777-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서솔민', 'f', 45, 178, 55, 'bad_lay@gmail.com', '010-4806-6003', '프로게이머', '34393', '대전광역시 대덕구 중리서로3번길 8 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재율', 'f', 30, 163, 59, 'whose@naver.com', '010-9787-2289', '택시기사', '18486', '경기도 화성시 동부대로922번길 241-2', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재혁', 'm', 49, 166, 84, 'already@gmail.com', '010-5096-6704', '학생', '34394', '대전광역시 대덕구 중리서로 4 ~ 22', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최여원', 'f', 27, 155, 44, 'sport_safe@live.com', '010-1013-2485', '무대디자이너', '07750', '서울특별시 강서구 곰달래로 167 ~ 195', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지빈', 'f', 21, 175, 64, 'learn@gmail.com', '010-6683-5898', '카지노딜러', '24766', '강원도 고성군 토성면 인흥1길 5 ~ 50', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주래현', 'f', 30, 154, 41, 'start@yahoo.com', '010-2944-3137', '무대연출가', '63610', '제주특별자치도 서귀포시 남원읍 남원체육관로40번길 1 ~ 22', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태겸', 'f', 16, 156, 61, 'goal@daum.net', '010-3302-1627', '메이크업아티스트', '05295', '서울특별시 강동구 양재대로136길 5 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동윤', 'm', 45, 165, 63, 'same@naver.com', '010-6472-7373', '성형외과의', '63299', '제주특별자치도 제주시 화남로 37 ~ 71', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이장우', 'm', 21, 177, 79, 'north@yahoo.com', '010-9752-8469', '학생', '01224', '서울특별시 강북구 오현로 186 ~ 204', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최도영', 'f', 48, 158, 69, 'wife@naver.com', '010-1082-5103', '농수산물중개인', '63163', '제주특별자치도 제주시 서천길 1 ~ 24', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예율', 'f', 29, 178, 65, 'before@live.com', '010-3242-1131', '행사기획자', '04791', '서울특별시 성동구 성수일로 107 ~ 111', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하이준', 'm', 24, 189, 83, 'fish@naver.com', '010-3946-8506', '내과의', '35266', '대전광역시 서구 갈마로147번길 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박다형', 'm', 18, 177, 84, 'share@yahoo.com', '010-8230-6034', '광고및홍보전문가', '35078', '대전광역시 중구 학고개로35번길 17 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어혜인', 'f', 41, 157, 40, 'seek@gmail.com', '010-9786-4484', '위생사', '01127', '서울특별시 강북구 솔매로31길 2 ~ 17-9', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박해정', 'f', 40, 177, 40, 'get_newspaper@yahoo.com', '010-2870-1820', '캐디', '63154', '제주특별자치도 제주시 서사로2길 8 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정송연', 'f', 29, 178, 62, 'should_reality@gmail.com', '010-4898-9374', '학생', '07349', '서울특별시 영등포구 신길로42가길 41 ~ 49-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박도훈', 'm', 35, 170, 64, 'likely_shoot@daum.net', '010-3699-9478', '성우', '05200', '서울특별시 강동구 아리수로93가길 411 ~ 473', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문초아', 'f', 29, 155, 46, 'structure@gmail.com', '010-3684-5723', '운동감독', '05021', '서울특별시 광진구 광나루로22가길 6 ~ 26', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은후', 'm', 27, 174, 64, 'toward@live.com', '010-8007-1531', '방송작가', '05211', '서울특별시 강동구 아리수로93길 9 ~ 61', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정하진', 'm', 45, 160, 62, 'beyond@gmail.com', '010-7826-2094', '가수', '62425', '광주광역시 광산구 고내상길 56-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김로연', 'f', 40, 161, 42, 'improve@gmail.com', '010-2057-6719', '항공기관사', '63194', '제주특별자치도 제주시 오현길 9 ~ 35-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태환', 'm', 21, 181, 79, 'reality_see@daum.net', '010-6888-8174', '호텔경영사', '01065', '서울특별시 강북구 오패산로73길 5-1 ~ 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김인태', 'm', 44, 182, 63, 'personal@naver.com', '010-5059-6209', '시조시인', '25221', '강원도 횡성군 횡성읍 화성로 3 ~ 27-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤채', 'm', 17, 162, 62, 'she@live.com', '010-3378-2474', '취업준비생', '61663', '광주광역시 남구 양림로 54 ~ 92', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태한', 'm', 25, 184, 82, 'assume_love@daum.net', '010-3880-2465', '손해사정사', '11683', '경기도 의정부시 신흥로 345 ~ 365', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김도헌', 'f', 43, 151, 67, 'suddenly@live.com', '010-2528-7082', '콜센터상담원', '01633', '서울특별시 노원구 덕릉로137길 7 ~ 77-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '함유진', 'f', 43, 179, 43, 'them@live.com', '010-1518-5904', '칼럼니스트', '63619', '제주특별자치도 서귀포시 남원읍 남원월산로 9 ~ 110', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최초은', 'f', 42, 162, 53, 'away@yahoo.com', '010-3844-2383', '어부', '11639', '경기도 의정부시 신흥로 64 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이준연', 'm', 44, 189, 77, 'employee@live.com', '010-5942-2509', '취업준비생', '04366', '서울특별시 용산구 새창로42길 5', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정원준', 'm', 41, 179, 86, 'let_born@daum.net', '010-9572-1125', '학생', '05073', '서울특별시 광진구 아차산로32길 4 ~ 30', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수윤', 'f', 19, 170, 67, 'single@gmail.com', '010-8155-2697', '속기사', '01080', '서울특별시 강북구 수유로23가길 3 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최로연', 'f', 35, 150, 65, 'different@yahoo.com', '010-6458-2437', '의사', '24665', '강원도 인제군 상남면 미덕길 20 ~ 227-12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박성준', 'm', 46, 185, 74, 'budget_drop@naver.com', '010-7961-8279', '취업준비생', '08229', '서울특별시 구로구 경인로35길 64-21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최위영', 'f', 16, 165, 48, 'among_keep@daum.net', '010-3492-1803', '취업준비생', '04208', '서울특별시 마포구 만리재옛12안길 3 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최민기', 'm', 22, 160, 69, 'another@live.com', '010-2894-5169', '조연출', '06042', '서울특별시 강남구 학동로21길 32 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다예', 'f', 28, 150, 56, 'that@gmail.com', '010-9525-9587', '텔레마케터', '48947', '부산광역시 중구 광복로55번길 9 ~ 9-1', '완도');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최설빈', 'f', 34, 156, 67, 'present@daum.net', '010-3906-8293', '소설가', '06103', '서울특별시 강남구 선릉로115길 3 ~ 45', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허승아', 'f', 45, 176, 44, 'similar@daum.net', '010-8624-2785', '학생', '63525', '제주특별자치도 서귀포시 안덕면 병악로404번길 6-6 ~ 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤일', 'm', 25, 188, 78, 'federal@gmail.com', '010-1250-4888', '백수', '07516', '서울특별시 강서구 양천로 13 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '양해율', 'f', 45, 164, 69, 'answer_day@live.com', '010-6451-9945', '취업준비생', '63619', '제주특별자치도 서귀포시 남원읍 남원월산로 9 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수지', 'f', 23, 151, 51, 'staff@gmail.com', '010-5255-1522', '전화교환원', '08762', '서울특별시 관악구 조원로 106 ~ 142', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채희설', 'f', 41, 158, 54, 'amount@naver.com', '010-4576-9804', '중식요리사', '06017', '서울특별시 강남구 압구정로46길 6 ~ 38', '서울');

insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '금한준', 'm', 36, 183, 69, 'sit_hang@gmail.com', '010-9103-5446', '학생', '07636', '서울특별시 강서구 수명로2길 88 ~ 108', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤우', 'm', 47, 165, 89, 'summer@yahoo.com', '010-7411-7313', '취업준비생', '08772', '서울특별시 관악구 남부순환로 1478 ~ 1508', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이리예', 'f', 26, 169, 45, 'ago@naver.com', '010-9421-9747', '시나리오작가', '61249', '광주광역시 북구 신임로 2 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김리영', 'f', 29, 150, 61, 'instead@daum.net', '010-8877-7566', '건물주자제분', '06044', '서울특별시 강남구 학동로1길 5 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '황준아', 'm', 35, 176, 85, 'line@yahoo.com', '010-7062-9354', '방송작가', '08713', '서울특별시 관악구 국회단지9길 2 ~ 38', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신태연', 'm', 31, 167, 79, 'beat@naver.com', '010-4968-9377', '양식요리사', '61766', '광주광역시 남구 신효천3길 5 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이지민', 'f', 38, 175, 61, 'reduce@yahoo.com', '010-6646-6337', '취업준비생', '04008', '서울특별시 마포구 포은로5길 26 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재준', 'm', 48, 161, 63, 'lose@gmail.com', '010-9491-4278', '학생', '06129', '서울특별시 강남구 강남대로 416 ~ 432', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위래원', 'f', 26, 157, 62, 'job_clear@gmail.com', '010-7024-4984', '취업준비생', '34102', '대전광역시 유성구 대덕대로799번길 19-5 ~ 41', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예주', 'f', 27, 176, 47, 'member@live.com', '010-2789-2946', '학생', '07570', '서울특별시 강서구 공항대로53가길 50 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차태연', 'm', 40, 187, 70, 'such@yahoo.com', '010-3989-9265', '치과기공사', '04994', '서울특별시 광진구 천호대로104길 8 ~ 10', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은선', 'f', 17, 159, 63, 'wrong@live.com', '010-7592-1587', '학생', '04364', '서울특별시 용산구 새창로35길 18 ~ 31', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이현후', 'm', 47, 178, 63, 'we@yahoo.com', '010-8746-1251', '학생', '06170', '서울특별시 강남구 봉은사로114길 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정재빈', 'm', 28, 174, 87, 'prove_public@live.com', '010-6946-8145', '운동감독', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김재현', 'f', 18, 153, 62, 'tend@gmail.com', '010-9402-7348', '정형외과의', '04934', '서울특별시 광진구 긴고랑로15길 15 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정호영', 'm', 45, 182, 70, 'task@gmail.com', '010-2634-1858', '취업준비생', '49406', '부산광역시 사하구 장평로409번길 87 ~ 110', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성희', 'f', 45, 177, 49, 'partner@yahoo.com', '010-7860-6563', '취업준비생', '03965', '서울특별시 마포구 월드컵로30길 5 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명재호', 'm', 26, 185, 80, 'thought@live.com', '010-7874-9273', '군인', '34390', '대전광역시 대덕구 중리북로37번길 63 ~ 110', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승예', 'f', 16, 175, 57, 'where@gmail.com', '010-2050-1701', '간병인', '24161', '강원도 화천군 사내면 화악산로 225 ~ 855', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최효원', 'f', 16, 154, 42, 'positive@live.com', '010-8563-1662', '정비사', '02112', '서울특별시 중랑구 중랑천로18길 3 ~ 14', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진준성', 'm', 44, 187, 75, 'gas@live.com', '010-1695-9943', '학생', '61988', '광주광역시 서구 화운로83번길 25-1 ~ 33', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태은', 'f', 42, 156, 47, 'table_fire@live.com', '010-3962-7199', '취업준비생', '08348', '서울특별시 구로구 개봉로11길 38-34', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세희', 'f', 34, 168, 68, 'feel@naver.com', '010-8731-8865', '칼럼니스트', '61966', '광주광역시 서구 상일로 2 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박원호', 'm', 28, 162, 69, 'ahead@live.com', '010-7833-8170', '학생', '24665', '강원도 인제군 상남면 가산동길 5 ~ 157', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이여정', 'f', 48, 162, 56, 'officer@live.com', '010-5344-8579', '학생', '24102', '강원도 화천군 상서면 가둔지길 52-13 ~ 144', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽현이', 'f', 28, 150, 65, 'those@live.com', '010-2217-4145', '학생', '03314', '서울특별시 은평구 갈현로47길 2 ~ 22', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수아', 'f', 35, 154, 68, 'chair@yahoo.com', '010-6249-7323', '학생', '03956', '서울특별시 마포구 월드컵로31길 103 ~ 117', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이안', 'f', 16, 163, 46, 'early@gmail.com', '010-1690-1455', '백수', '04208', '서울특별시 마포구 만리재옛6길 1 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이연욱', 'm', 32, 180, 72, 'arm@naver.com', '010-5195-9978', '학생', '06642', '서울특별시 서초구 서리풀길 8 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정준우', 'm', 43, 174, 89, 'oil_daughter@yahoo.com', '010-6315-1410', '개그맨', '63116', '제주특별자치도 제주시 오일장동길 2', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유환', 'm', 39, 189, 64, 'boy@naver.com', '010-1890-9605', '소설가', '06232', '서울특별시 강남구 강남대로 376 ~ 390', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최은우', 'm', 36, 174, 79, 'attention_just@live.com', '010-5690-2582', '애완동물미용사', '49400', '부산광역시 사하구 장평로449번길 69 ~ 92', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재훈', 'm', 36, 182, 79, 'down@naver.com', '010-6037-8865', '극작가', '25216', '강원도 횡성군 횡성읍 화성로83번길 1 ~ 17', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동연', 'm', 32, 180, 84, 'president_perhaps@gmail.com', '010-8314-7483', '학생', '63523', '제주특별자치도 서귀포시 안덕면 동광로50번길 10 ~ 43', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최주훈', 'm', 49, 179, 68, 'oh@live.com', '010-1968-3002', '한의사', '25222', '강원도 횡성군 횡성읍 화성로 35 ~ 51', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김현호', 'm', 49, 183, 88, 'range@naver.com', '010-4438-3660', '시인', '01439', '서울특별시 도봉구 노해로57길 7 ~ 19-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정래한', 'f', 31, 152, 69, 'love_suffer@live.com', '010-4413-8011', '건물주자제분', '01216', '서울특별시 강북구 도봉로10다길 5 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원승아', 'f', 37, 160, 68, 'activity@live.com', '010-2801-7982', '촬영기자', '01150', '서울특별시 강북구 오현로 163 ~ 165-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정소희', 'f', 39, 165, 52, 'eat_indeed@naver.com', '010-5195-5594', '택시기사', '61163', '광주광역시 북구 밤실로181번길 22-3 ~ 47', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁정혜', 'f', 23, 169, 55, 'huge@daum.net', '010-5578-2431', '학생', '46729', '부산광역시 강서구 가달2로55번길 16 ~ 28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤택', 'm', 40, 174, 65, 'theory@gmail.com', '010-8681-3476', '백수', '02572', '서울특별시 동대문구 경동시장로 2 ~ 42-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박시율', 'f', 44, 161, 44, 'yard_sign@naver.com', '010-6045-3869', '학생', '06137', '서울특별시 강남구 언주로99길 9 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최희설', 'f', 43, 160, 56, 'play_dead@live.com', '010-7918-7105', '양식기능사', '02476', '서울특별시 동대문구 약령시로7길 3 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다린', 'f', 43, 153, 41, 'nor_brother@naver.com', '010-7867-6415', '학생', '06923', '서울특별시 동작구 만양로15길 3 ~ 17-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유정', 'f', 23, 164, 52, 'myself@yahoo.com', '010-4358-5951', '건물주', '08317', '서울특별시 구로구 구로동로7라길 2 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤찬', 'm', 32, 168, 77, 'some_spend@naver.com', '010-8609-7948', '취업준비생', '08824', '서울특별시 관악구 대학길 106 ~ 126', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김정희', 'f', 23, 170, 44, 'performance_look@yahoo.com', '010-2941-9284', '학생', '34993', '대전광역시 중구 문화로78번안길 5 ~ 29', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽하영', 'f', 38, 157, 69, 'cancer@gmail.com', '010-7651-9507', '양식요리사', '48947', '부산광역시 중구 광복로55번길 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박윤관', 'm', 26, 169, 66, 'doctor@daum.net', '010-4726-4175', '취업준비생', '01174', '서울특별시 강북구 삼양로 184 ~ 192', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정혜선', 'f', 23, 150, 58, 'least_pain@yahoo.com', '010-2763-8535', '학생', '34411', '대전광역시 대덕구 계족로564번길 5 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유설', 'f', 43, 153, 49, 'view_eight@daum.net', '010-1623-9447', '학생', '63010', '제주특별자치도 제주시 한림읍 금능9길 1 ~ 30', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신도율', 'm', 41, 165, 72, 'year_car@daum.net', '010-6412-1584', '학생', '04743', '서울특별시 성동구 금호로 20 ~ 48-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이서희', 'f', 41, 173, 42, 'example@naver.com', '010-1787-5857', '의무기록사', '05307', '서울특별시 강동구 양재대로133길 15 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '위희영', 'f', 22, 177, 51, 'future@daum.net', '010-1090-9302', '건물주자제분', '06249', '서울특별시 강남구 역삼로 146 ~ 164', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이시은', 'f', 47, 167, 49, 'class_ever@daum.net', '010-4347-7743', '건물주자제분', '61916', '광주광역시 서구 화운로304번길 2', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태영', 'f', 48, 164, 49, 'join@daum.net', '010-7476-1766', '무대디자이너', '48776', '부산광역시 동구 망양로774번길 1 ~ 23-3', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추동예', 'm', 18, 185, 65, 'store_strategy@gmail.com', '010-7517-4155', '감정평가사', '12523', '경기도 양평군 용문면 용문시장4길 2 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김희예', 'f', 37, 164, 65, 'financial@yahoo.com', '010-5499-9848', '네일아티스트', '06209', '서울특별시 강남구 도곡로 443 ~ 457', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤도', 'm', 16, 173, 68, 'part@daum.net', '010-5360-7660', '상품중개인', '61122', '광주광역시 북구 신촌로 3 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태은', 'm', 16, 185, 64, 'education_weight@yahoo.com', '010-9415-5417', '뮤지컬배우', '17774', '경기도 평택시 특구로 1 ~ 26', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이동우', 'm', 34, 182, 85, 'reflect@naver.com', '010-4109-6697', '쇼콜라티에', '01114', '서울특별시 강북구 수유로4길 65-1 ~ 65-7', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조수정', 'f', 26, 169, 48, 'take@naver.com', '010-3817-8811', '취업준비생', '63619', '제주특별자치도 서귀포시 남원읍 남원월산로22번길 17 ~ 63', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박재찬', 'm', 42, 172, 85, 'mother@gmail.com', '010-2150-9213', '학생', '05001', '서울특별시 광진구 동일로40길 3 ~ 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채두나', 'f', 20, 156, 43, 'senior@naver.com', '010-8202-4280', '취업준비생', '08317', '서울특별시 구로구 구로동로7다길 25-2 ~ 27', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한슬', 'f', 44, 158, 50, 'charge@naver.com', '010-5165-1739', '학생', '25304', '강원도 평창군 봉평면 기풍5길 3 ~ 25', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤호', 'm', 18, 160, 68, 'owner_bring@naver.com', '010-5085-9816', '선물중개인', '61960', '광주광역시 서구 상무화원로3번길 4-5 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유준', 'm', 49, 180, 68, 'standard_history@naver.com', '010-3301-1656', '교수', '62432', '광주광역시 광산구 고내상길 69 ~ 83', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김승일', 'm', 46, 186, 79, 'police@yahoo.com', '010-5202-8893', '소아과의', '25630', '강원도 강릉시 강동면 동해대로 1065 ~ 1263', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유대규', 'm', 48, 176, 80, 'report@daum.net', '010-5930-5629', '학생', '11665', '경기도 의정부시 신흥로 309 ~ 329', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추하은', 'm', 37, 174, 79, 'happen_according@gmail.com', '010-5380-2607', '학생', '06915', '서울특별시 동작구 만양로14사길 1 ~ 27', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세민', 'f', 49, 174, 67, 'man_conference@naver.com', '010-5510-9559', '택시기사', '01455', '서울특별시 도봉구 도봉로114길 22 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁하윤', 'm', 35, 169, 82, 'whose_really@naver.com', '010-3666-3105', '경영컨설턴트', '24763', '강원도 고성군 토성면 장새미길 9 ~ 15-25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최장원', 'm', 16, 183, 82, 'many@daum.net', '010-3680-1178', '취업준비생', '63187', '제주특별자치도 제주시 서사로23길 33 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장지은', 'f', 26, 171, 56, 'mother_above@daum.net', '010-1589-2537', '한식요리사', '08348', '서울특별시 구로구 개봉로11길 38-32', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤태', 'm', 44, 175, 63, 'hair@daum.net', '010-4281-8500', '학생', '02621', '서울특별시 동대문구 황물로13길 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조아윤', 'f', 22, 170, 50, 'guy@yahoo.com', '010-5319-9830', '취업준비생', '02596', '서울특별시 동대문구 황물로 69 ~ 77-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박선희', 'f', 33, 152, 46, 'result@daum.net', '010-5639-9240', '장제사', '06113', '서울특별시 강남구 학동로20길 12 ~ 70', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태영', 'm', 35, 171, 62, 'good@yahoo.com', '010-1749-4696', '콜센터상담원', '08799', '서울특별시 관악구 낙성대로3길 23', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효설', 'f', 30, 157, 59, 'area@daum.net', '010-3286-5853', '취업준비생', '47116', '부산광역시 부산진구 성지로 62 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재영', 'm', 24, 163, 82, 'political@daum.net', '010-4598-9330', '대출상담사', '08713', '서울특별시 관악구 국회단지27길 1 ~ 15', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류은성', 'm', 25, 166, 73, 'theory@gmail.com', '010-8692-5585', '증권투자상담사', '01365', '서울특별시 도봉구 해등로36길 4 ~ 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박현아', 'f', 29, 173, 65, 'only@live.com', '010-6550-9915', '장제사', '25221', '강원도 횡성군 횡성읍 화성로1번길 1 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁유주', 'f', 41, 177, 51, 'simply@live.com', '010-6392-6234', '취업준비생', '05001', '서울특별시 광진구 동일로42길 2 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이수', 'm', 19, 178, 84, 'expert_budget@live.com', '010-4884-4693', '건물주', '03729', '서울특별시 서대문구 모래내로 438 ~ 466', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤우', 'm', 34, 162, 64, 'bed@live.com', '010-1749-9567', '개그맨', '49399', '부산광역시 사하구 장평로449번길 101 ~ 134', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유상', 'm', 27, 181, 88, 'picture_probably@naver.com', '010-5388-2740', '프로바둑기사', '06256', '서울특별시 강남구 도곡로13길 6 ~ 28', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '석효영', 'f', 25, 155, 65, 'perform@daum.net', '010-2958-7128', '보험계리인', '63211', '제주특별자치도 제주시 오복7길 3 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명정임', 'f', 24, 176, 64, 'idea@gmail.com', '010-4378-2986', '학생', '35078', '대전광역시 중구 학고개로41번길 17 ~ 34', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤규', 'm', 21, 160, 75, 'owner@daum.net', '010-5085-4379', '학생', '06134', '서울특별시 강남구 강남대로 402 ~ 412', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최도헌', 'f', 30, 157, 69, 'itself@naver.com', '010-2100-2384', '보험계리인', '02496', '서울특별시 동대문구 망우로16길 20 ~ 26', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이준', 'm', 33, 189, 77, 'budget@daum.net', '010-9039-1750', '양식기능사', '01836', '서울특별시 노원구 공릉로 149 ~ 161', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김원오', 'm', 41, 165, 63, 'as_whether@daum.net', '010-6464-4899', '방송인', '48951', '부산광역시 중구 광복로85번길 9-1 ~ 17-4', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백유현', 'm', 33, 181, 84, 'measure@naver.com', '010-5435-8823', '뮤지컬배우', '63528', '제주특별자치도 서귀포시 안덕면 사계남로 1 ~ 239', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성연', 'f', 45, 155, 62, 'for@gmail.com', '010-4163-5657', '음악치료사', '03956', '서울특별시 마포구 월드컵로31길 103 ~ 117', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방윤채', 'm', 29, 168, 87, 'scientist_get@live.com', '010-2020-7387', '조명감독', '06082', '서울특별시 강남구 봉은사로105길 12-7 ~ 12-11', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정효리', 'f', 43, 178, 55, 'begin@daum.net', '010-5489-7875', '경영컨설턴트', '25303', '강원도 평창군 봉평면 기풍2길 1 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤오', 'm', 21, 161, 64, 'rise@live.com', '010-5784-2649', '취업준비생', '05343', '서울특별시 강동구 천중로50길 9 ~ 50-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장애슬', 'f', 17, 162, 40, 'attack_conference@yahoo.com', '010-8874-3291', '학생', '08653', '서울특별시 금천구 시흥대로12길 45 ~ 82', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한슬', 'f', 20, 163, 49, 'thus@gmail.com', '010-8786-4050', '취업준비생', '61953', '광주광역시 서구 천변좌하로 142 ~ 206', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정도윤', 'f', 21, 163, 40, 'mention_step@daum.net', '010-8507-5823', '사회복지사', '24760', '강원도 고성군 토성면 이른계길 98-24 ~ 169', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김차빈', 'f', 24, 172, 61, 'list@daum.net', '010-4559-8181', '건물주', '05099', '서울특별시 광진구 뚝섬로50길 3 ~ 50', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이안나', 'f', 40, 168, 64, 'floor@live.com', '010-2722-3641', '임상병리사', '61147', '광주광역시 북구 배재길 47 ~ 126', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박인아', 'f', 24, 175, 68, 'respond_feeling@naver.com', '010-1650-6666', '건물주자제분', '49399', '부산광역시 사하구 장평로443번길 85 ~ 131-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이윤', 'f', 16, 151, 51, 'focus_couple@naver.com', '010-8102-2632', '취업준비생', '05106', '서울특별시 광진구 자양로3가길 16 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로세율', 'f', 18, 151, 57, 'live@yahoo.com', '010-4075-3639', '취업준비생', '02114', '서울특별시 중랑구 중랑천로17길 4-6 ~ 20', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정성율', 'm', 43, 164, 89, 'color_five@daum.net', '010-9554-7760', '학생', '63612', '제주특별자치도 서귀포시 남원읍 공천포로11번길 3 ~ 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신승혜', 'f', 20, 176, 54, 'mission_tax@naver.com', '010-6672-9463', '건물주자제분', '02633', '서울특별시 동대문구 천호대로 405', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜영', 'f', 29, 173, 50, 'finish@daum.net', '010-5900-7497', 'PD', '47112', '부산광역시 부산진구 성지로104번가길 4 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤오', 'm', 37, 174, 78, 'last@live.com', '010-5963-6631', '촬영기자', '05399', '서울특별시 강동구 성내로10길 9 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이화영', 'f', 49, 163, 50, 'movie_product@naver.com', '010-1952-5147', '칼럼니스트', '61163', '광주광역시 북구 밤실로169번길 17 ~ 26-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박애린', 'f', 33, 176, 55, 'environment@naver.com', '010-1276-8361', '산부인과의', '06684', '서울특별시 서초구 방배로15길 41-1 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박태연', 'm', 36, 181, 77, 'wrong@naver.com', '010-7450-5649', '극작가', '61907', '광주광역시 서구 천변좌하로548번길 11 ~ 30', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이영', 'f', 18, 167, 64, 'court@yahoo.com', '010-8051-2727', '취업준비생', '01168', '서울특별시 강북구 솔매로30길 1 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이대영', 'm', 22, 171, 81, 'blood@gmail.com', '010-5872-6569', '내과의', '06174', '서울특별시 강남구 영동대로82길 7 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박예율', 'f', 16, 163, 52, 'tell_effort@gmail.com', '010-1630-3126', '산부인과의', '04543', '서울특별시 중구 을지로11길 30 ~ 30-8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최신화', 'f', 30, 175, 41, 'experience_financial@yahoo.com', '010-5368-3963', '내과의', '08773', '서울특별시 관악구 남부순환로 1512 ~ 1574', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강동우', 'm', 28, 184, 80, 'act@yahoo.com', '010-5829-8984', '도선사', '24107', '강원도 화천군 상서면 노신로 825 ~ 923', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이채아', 'f', 46, 151, 69, 'agent@gmail.com', '010-4233-8059', '취업준비생', '01060', '서울특별시 강북구 도봉로102길 60 ~ 86', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '허다환', 'm', 44, 169, 87, 'serve_drop@live.com', '010-6611-3573', '방송인', '05201', '서울특별시 강동구 아리수로93가길 48-3 ~ 198-46', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효진', 'f', 23, 160, 42, 'always@live.com', '010-8892-2885', '치과의', '05294', '서울특별시 강동구 양재대로136길 24 ~ 58', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승연', 'm', 23, 180, 69, 'without@naver.com', '010-7074-2475', 'IT컨설턴트', '06921', '서울특별시 동작구 만양로1길 1 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태환', 'm', 38, 186, 77, 'task@daum.net', '010-3378-7286', '건물주', '07639', '서울특별시 강서구 강서로45라길 12 ~ 70', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김아람', 'f', 29, 162, 65, 'someone@yahoo.com', '010-6004-1566', '취업준비생', '06959', '서울특별시 동작구 상도로20길 6 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최시윤', 'f', 30, 171, 59, 'off@yahoo.com', '010-9000-7509', '소설가', '08642', '서울특별시 금천구 금하로20길 5 ~ 18', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민혜수', 'f', 20, 171, 68, 'they@daum.net', '010-5231-1675', '학생', '03192', '서울특별시 종로구 수표로20길 7 ~ 15', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '우은설', 'f', 48, 156, 48, 'love@naver.com', '010-8328-7347', '취업준비생', '01606', '서울특별시 노원구 동일로241길 11 ~ 53', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최서현', 'f', 24, 150, 48, 'finger@naver.com', '010-6524-9002', '영화배우', '06231', '서울특별시 강남구 논현로 306 ~ 312', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이현', 'f', 17, 176, 47, 'accept@yahoo.com', '010-1399-7388', '학생', '01080', '서울특별시 강북구 수유로21길 3 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박래연', 'f', 35, 172, 45, 'born@yahoo.com', '010-7361-7062', '취업준비생', '08244', '서울특별시 구로구 고척로33라길 14-12', '파주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정채혁', 'm', 18, 162, 65, 'race@yahoo.com', '010-8361-8747', '스튜어디스', '46769', '부산광역시 강서구 가덕해안로2번길 2 ~ 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이윤진', 'm', 41, 174, 77, 'writer@daum.net', '010-6969-4888', '취업준비생', '05236', '서울특별시 강동구 고덕로27길 12 ~ 36', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정다안', 'f', 31, 174, 48, 'rule@naver.com', '010-4540-3293', '시인', '35078', '대전광역시 중구 학고개로43번길 17 ~ 34', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박로영', 'f', 32, 159, 56, 'southern@live.com', '010-3338-6125', '백수', '07347', '서울특별시 영등포구 신길로42길 1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최성빈', 'f', 16, 153, 60, 'work@yahoo.com', '010-1829-2750', '구성작가', '04026', '서울특별시 마포구 포은로2나길 31 ~ 47', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서동희', 'm', 21, 162, 68, 'nothing_involve@live.com', '010-6883-4838', '네일아티스트', '17557', '경기도 안성시 공도읍 덕봉서원로 265 ~ 281', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구지안', 'f', 27, 176, 45, 'fight_best@daum.net', '010-4623-1963', '외환딜러', '48777', '부산광역시 동구 망양로808번길 1 ~ 12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정민서', 'm', 20, 162, 76, 'explain@daum.net', '010-9561-8081', '가수', '14620', '경기도 부천시 원미구 석천로 40 ~ 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이로현', 'f', 46, 163, 48, 'tree_kid@gmail.com', '010-4071-5321', '취업준비생', '06558', '서울특별시 서초구 동광로3길 32 ~ 64', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지율', 'm', 21, 167, 84, 'involve@gmail.com', '010-2144-5506', '운동감독', '03191', '서울특별시 종로구 수표로 81 ~ 97-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이태영', 'm', 22, 170, 77, 'character@live.com', '010-2576-7090', '취업준비생', '25213', '강원도 횡성군 횡성읍 한우로조곡5길 5 ~ 110', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박의찬', 'm', 29, 160, 82, 'table@live.com', '010-3655-4635', '구급대원', '08320', '서울특별시 구로구 구로동로8길 10 ~ 38', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '장윤오', 'm', 49, 173, 77, 'trip_wind@naver.com', '010-2520-9093', '학생', '02603', '서울특별시 동대문구 황물로 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '로예준', 'm', 22, 182, 66, 'until@yahoo.com', '010-6893-7185', '치어리더', '25620', '강원도 강릉시 강동면 너다리길 2206-5', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '민수이', 'f', 25, 164, 49, 'support@gmail.com', '010-6286-5851', '항공승무원', '01444', '서울특별시 도봉구 도봉로113길 43 ~ 60', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최재현', 'm', 33, 181, 87, 'fact@naver.com', '010-7677-4774', '취업준비생', '01368', '서울특별시 도봉구 삼양로 574-28', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이희수', 'm', 24, 180, 76, 'sex@naver.com', '010-8029-1065', '취업준비생', '07069', '서울특별시 동작구 신대방13길 6 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조원혁', 'm', 37, 181, 71, 'civil@gmail.com', '010-2681-8308', '의사', '62425', '광주광역시 광산구 고내상길 56-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이성원', 'm', 41, 189, 73, 'east@yahoo.com', '010-3070-5358', '백수', '06558', '서울특별시 서초구 동광로3길 32 ~ 64', '전주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권찬호', 'm', 23, 161, 67, 'gun_by@gmail.com', '010-4269-3129', '엔지니어', '62277', '광주광역시 광산구 월계로 187 ~ 207', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영후', 'm', 33, 187, 79, 'image@gmail.com', '010-9709-2315', '취업준비생', '06161', '서울특별시 강남구 선릉로100길 8 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '어영솔', 'f', 32, 162, 48, 'whole@live.com', '010-6497-5413', '경호원', '61163', '광주광역시 북구 밤실로181번길 21-2 ~ 21-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은성', 'm', 40, 174, 89, 'stock@naver.com', '010-9170-5723', '농업기술자', '02113', '서울특별시 중랑구 중랑천로24길 3 ~ 33', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조애리', 'f', 38, 154, 56, 'no_long@live.com', '010-3179-1522', '자동차딜러', '03965', '서울특별시 마포구 월드컵로30다길 1 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김효찬', 'm', 43, 165, 78, 'after@yahoo.com', '010-5738-9856', '학생', '06131', '서울특별시 강남구 테헤란로19길 10 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은겸', 'm', 23, 164, 67, 'everybody@yahoo.com', '010-5672-4905', '영화감독', '34428', '대전광역시 대덕구 계족로511번길 36 ~ 96', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원정', 'f', 26, 177, 66, 'alone_property@daum.net', '010-3782-4849', '취업준비생', '06170', '서울특별시 강남구 봉은사로112길 6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유이연', 'f', 37, 151, 52, 'coach@gmail.com', '010-3750-5406', '내과의', '05261', '서울특별시 강동구 상암로21길 35 ~ 81', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄윤설', 'f', 49, 170, 40, 'reflect@yahoo.com', '010-6988-5773', '간호사', '03654', '서울특별시 서대문구 모래내로 333 ~ 359', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김영주', 'f', 34, 167, 51, 'later@live.com', '010-3257-3351', '취업준비생', '03315', '서울특별시 은평구 갈현로43길 1 ~ 22-15', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수인', 'f', 23, 165, 48, 'so@gmail.com', '010-7758-1626', '취업준비생', '07565', '서울특별시 강서구 공항대로55길 47 ~ 61', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이한영', 'm', 25, 180, 63, 'right@daum.net', '010-5245-2037', '치과의', '63190', '제주특별자치도 제주시 서사로25길 4 ~ 26-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주빈', 'f', 40, 168, 54, 'game@live.com', '010-2395-3769', 'IT컨설턴트', '61447', '광주광역시 동구 지호로106번길 1 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정송윤', 'f', 25, 164, 55, 'private@live.com', '010-6838-2990', '손해사정사', '61766', '광주광역시 남구 신효천1길 2 ~ 41', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국소윤', 'f', 18, 173, 44, 'already@yahoo.com', '010-1239-2762', '학생', '07733', '서울특별시 강서구 등촌로13나길 25 ~ 41', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박민종', 'm', 33, 183, 66, 'leg@live.com', '010-6072-3741', '시조시인', '24665', '강원도 인제군 상남면 매화동길 2-7 ~ 30', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박주환', 'm', 41, 189, 63, 'thus@live.com', '010-3274-1285', '학생', '08556', '서울특별시 금천구 독산로72길 50-3 ~ 74-10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박설윤', 'f', 43, 162, 46, 'bill@gmail.com', '010-5299-6780', '건물주', '04208', '서울특별시 마포구 만리재옛12안길 3 ~ 22', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동율', 'm', 46, 167, 79, 'let@naver.com', '010-2863-3420', '학생', '04775', '서울특별시 성동구 둘레9길 4 ~ 4-10', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정지호', 'm', 49, 185, 68, 'somebody@live.com', '010-5792-6785', '취업준비생', '08784', '서울특별시 관악구 장군봉7길 1 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문한영', 'm', 38, 171, 76, 'sport@daum.net', '010-9300-1375', '학생', '03620', '서울특별시 서대문구 세검정로4가길 1 ~ 58', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박호영', 'm', 29, 181, 71, 'ball_include@live.com', '010-6415-6680', '임상병리사', '04924', '서울특별시 광진구 용마산로3길 6 ~ 32', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동운', 'm', 36, 189, 71, 'evening@gmail.com', '010-6151-7015', '보험계리인', '08706', '서울특별시 관악구 봉천로4길 6 ~ 64-9', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원지호', 'm', 45, 162, 77, 'research_bag@gmail.com', '010-2437-6849', '카지노딜러', '48776', '부산광역시 동구 망양로774번길 1 ~ 23-3', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효연', 'f', 49, 153, 62, 'list@yahoo.com', '010-9781-5168', '농수산물중개인', '07636', '서울특별시 강서구 수명로2길 88 ~ 108', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이치영', 'f', 25, 156, 58, 'performance@naver.com', '010-9453-8220', '건물주', '34389', '대전광역시 대덕구 중리북로37번길 5 ~ 56', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최윤찬', 'm', 28, 172, 81, 'produce@naver.com', '010-2926-6555', '약사', '06732', '서울특별시 서초구 서운로 13 ~ 19', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이이한', 'm', 30, 168, 75, 'fine@live.com', '010-2693-9607', '카지노딜러', '06081', '서울특별시 강남구 봉은사로109길 34 ~ 46', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최준이', 'f', 28, 162, 60, 'style_least@live.com', '010-2961-5916', '투자분석가', '07362', '서울특별시 영등포구 신길로42길 4 ~ 44-22', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연이', 'f', 49, 169, 42, 'operation@naver.com', '010-9146-8735', '회계사', '01731', '서울특별시 노원구 중계로2가길 27-3 ~ 39', '일산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은률', 'm', 17, 165, 82, 'he@gmail.com', '010-8854-2119', '시인', '06684', '서울특별시 서초구 방배로13길 40 ~ 70', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다혜', 'f', 31, 158, 52, 'never@daum.net', '010-1847-1065', '백수', '61188', '광주광역시 북구 호동로15번길 55 ~ 98', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁선정', 'f', 38, 162, 52, 'second@gmail.com', '010-9671-9869', '프로바둑기사', '08764', '서울특별시 관악구 조원로 184 ~ 186', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박해현', 'f', 34, 163, 52, 'serve@naver.com', '010-3749-4766', '카지노딜러', '06227', '서울특별시 강남구 논현로 328 ~ 340', '경주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김성아', 'f', 48, 156, 61, 'hold_her@gmail.com', '010-4837-5941', '영화감독', '08789', '서울특별시 관악구 봉천로62길 2 ~ 10', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '신지후', 'm', 43, 174, 70, 'picture@live.com', '010-3961-6052', '매표원', '06921', '서울특별시 동작구 만양로1길 1 ~ 35', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유솔은', 'f', 45, 165, 64, 'sell_resource@daum.net', '010-1289-3374', '취업준비생', '05018', '서울특별시 광진구 아차산로33길 7', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이민승', 'm', 31, 162, 76, 'pretty_know@gmail.com', '010-2574-1611', '취업준비생', '07781', '서울특별시 강서구 곰달래로 134 ~ 166', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최지아', 'f', 23, 168, 63, 'view@live.com', '010-3485-5881', '학생', '05286', '서울특별시 강동구 조정대로31번길 2 ~ 78', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채솔빈', 'f', 25, 177, 59, 'it@gmail.com', '010-5434-4214', '취업준비생', '08600', '서울특별시 금천구 금하로1나길 3 ~ 20', '천안');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은겸', 'm', 20, 165, 74, 'professional@daum.net', '010-9980-9910', '내과의', '01211', '서울특별시 강북구 도봉로13가길 3 ~ 19', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은슬', 'f', 48, 153, 64, 'discuss@daum.net', '010-2857-5747', '취업준비생', '61447', '광주광역시 동구 지호로127번길 3-10 ~ 29', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수아', 'f', 23, 177, 67, 'to@daum.net', '010-5195-9679', '법무사', '02519', '서울특별시 동대문구 장안벚꽃로 213 ~ 219-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정연재', 'm', 45, 185, 88, 'high@live.com', '010-5034-5301', '취업준비생', '61664', '광주광역시 남구 양림로 2-2 ~ 50', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최효진', 'f', 30, 150, 52, 'wish@daum.net', '010-8979-1527', '양식기능사', '08767', '서울특별시 관악구 남부순환로 1443 ~ 1471', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은우', 'f', 20, 151, 57, 'better@yahoo.com', '010-1077-4242', '증권투자상담사', '07067', '서울특별시 동작구 신대방14길 2 ~ 12', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정영재', 'm', 32, 181, 83, 'station@daum.net', '010-4239-7725', '취업준비생', '08745', '서울특별시 관악구 봉천로49다길 2 ~ 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '선채율', 'f', 16, 150, 53, 'spend@gmail.com', '010-7919-8126', '경찰', '61163', '광주광역시 북구 밤실로181번길 22 ~ 22-2', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이찬', 'm', 45, 172, 86, 'ground@naver.com', '010-8074-3526', '건물주자제분', '47612', '부산광역시 연제구 마곡천로33번길 2 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정나영', 'f', 30, 161, 48, 'trade@live.com', '010-4965-7308', '정비사', '63016', '제주특별자치도 제주시 한림읍 금능남로 454 ~ 456-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '류이윤', 'f', 41, 172, 40, 'beyond@gmail.com', '010-1373-1706', '장의사', '04209', '서울특별시 마포구 만리재옛2길 3 ~ 33-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은우', 'f', 30, 151, 49, 'die_happen@live.com', '010-6943-9306', '학생', '34102', '대전광역시 유성구 대덕대로837번길 31 ~ 136', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효재', 'm', 19, 180, 87, 'want@gmail.com', '010-4181-6595', '측량기술자', '05073', '서울특별시 광진구 아차산로32길 4 ~ 30', '기흥');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이현일', 'm', 24, 161, 73, 'president@live.com', '010-4801-5489', '성형외과의', '01127', '서울특별시 강북구 솔매로33길 5 ~ 18-13', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정도희', 'f', 49, 179, 60, 'ready_admit@naver.com', '010-4423-5622', '학생', '48949', '부산광역시 중구 광복로67번길 30-13 ~ 32', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김수현', 'f', 21, 167, 40, 'world_put@live.com', '010-6141-4487', '취업준비생', '11671', '경기도 의정부시 신흥로 265 ~ 275', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추이진', 'f', 26, 163, 40, 'degree@live.com', '010-3096-5701', '학생', '63523', '제주특별자치도 서귀포시 안덕면 동광로118번길 3 ~ 14', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전시빈', 'm', 26, 178, 62, 'leg@naver.com', '010-7118-6017', '백수', '07569', '서울특별시 강서구 공항대로53가길 49 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '지태영', 'm', 17, 185, 63, 'east_player@live.com', '010-1776-5690', '취업준비생', '18472', '경기도 화성시 동탄기흥로 503-83', '부천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이헌', 'm', 38, 176, 62, 'interesting@naver.com', '010-1760-8246', '건물주자제분', '01203', '서울특별시 강북구 솔샘로60길 13-10', '수원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정서은', 'f', 44, 152, 42, 'agent@naver.com', '010-9777-1930', '건물주', '06608', '서울특별시 서초구 서운로 197 ~ 221', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진윤수', 'm', 18, 174, 82, 'much@gmail.com', '010-6293-7140', '의사', '01485', '서울특별시 도봉구 해등로3길 27 ~ 69-21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표승윤', 'm', 44, 177, 86, 'lawyer@yahoo.com', '010-7975-8637', '유치원교사', '25627', '강원도 강릉시 강동면 범울재길 6 ~ 26-11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방주원', 'f', 33, 153, 60, 'scene@naver.com', '010-5552-7683', '일식요리사', '18336', '경기도 화성시 봉담읍 방골길 5 ~ 88', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '홍희윤', 'f', 49, 160, 54, 'order@gmail.com', '010-6909-5742', '학생', '24665', '강원도 인제군 상남면 미덕길 20 ~ 227-12', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이우준', 'm', 21, 180, 68, 'successful@daum.net', '010-1053-9741', '한식요리사', '47591', '부산광역시 연제구 대리로6번길 87 ~ 123', '창원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배승우', 'm', 49, 186, 82, 'talk@daum.net', '010-7473-7219', '항공기장', '35266', '대전광역시 서구 갈마로147번길 26', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박차빈', 'f', 42, 174, 66, 'red@naver.com', '010-7035-2380', '학생', '01731', '서울특별시 노원구 중계로2가길 27-3 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박하율', 'm', 47, 183, 80, 'security_pull@naver.com', '010-8467-9973', '일식요리사', '04543', '서울특별시 중구 을지로11길 23', '원주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기영윤', 'f', 39, 173, 51, 'scientist@live.com', '010-4866-4714', '조연출', '06038', '서울특별시 강남구 도산대로4길 9 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승일', 'm', 28, 183, 87, 'move@naver.com', '010-3153-1762', '섬유공학기술자', '61189', '광주광역시 북구 호동로15번길 10', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주도경', 'f', 23, 156, 49, 'sure_offer@gmail.com', '010-8605-5843', '산부인과의', '08774', '서울특별시 관악구 신원로1길 1 ~ 32', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동율', 'm', 32, 171, 75, 'movement@live.com', '010-3981-6533', '초중고교교사', '08859', '서울특별시 관악구 난향3길 8 ~ 46', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방승연', 'f', 37, 158, 51, 'yet@yahoo.com', '010-1183-2639', '학생', '04986', '서울특별시 광진구 능동로36길 45-5 ~ 91', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진윤재', 'm', 49, 172, 83, 'play@naver.com', '010-7600-9259', '변리사', '61741', '광주광역시 남구 신효천2길 9 ~ 48', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다경', 'f', 35, 175, 45, 'personal_half@daum.net', '010-5912-4679', '취업준비생', '14537', '경기도 부천시 원미구 석천로209번길 15 ~ 40', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이완', 'm', 26, 162, 70, 'quite@live.com', '010-5299-2675', '건물주자제분', '11671', '경기도 의정부시 신흥로 265 ~ 275', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국초연', 'f', 48, 168, 67, 'indicate@gmail.com', '010-3541-6154', '무대연출가', '03965', '서울특별시 마포구 월드컵로30다길 1 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박은설', 'f', 22, 172, 50, 'federal@naver.com', '010-3304-4135', '학생', '01633', '서울특별시 노원구 덕릉로131가길 2 ~ 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태연', 'f', 35, 154, 55, 'evening_response@gmail.com', '010-7407-3661', '학생', '01224', '서울특별시 강북구 오현로 186 ~ 204', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '원승희', 'f', 24, 151, 61, 'finger@gmail.com', '010-3046-7016', '변리사', '61445', '광주광역시 동구 지호로 5 ~ 29', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정수희', 'f', 19, 151, 56, 'individual_question@naver.com', '010-7226-8970', '건물주', '63303', '제주특별자치도 제주시 화삼로 13 ~ 21', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한오', 'm', 32, 161, 76, 'better_goal@gmail.com', '010-5442-7444', '위생사', '04775', '서울특별시 성동구 둘레9길 12 ~ 12-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정채은', 'f', 43, 152, 56, 'about_into@live.com', '010-5277-4584', '항공기장', '05067', '서울특별시 광진구 아차산로36길 39 ~ 55', '광주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김하설', 'f', 39, 177, 66, 'determine@daum.net', '010-2518-6868', '프로바둑기사', '05399', '서울특별시 강동구 성내로14길 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '심지현', 'f', 32, 151, 49, 'production@live.com', '010-9787-8481', '원예기술자', '04039', '서울특별시 마포구 홍익로 23 ~ 25', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '구시훈', 'm', 46, 165, 75, 'maintain_military@gmail.com', '010-5374-9694', '백수', '01047', '서울특별시 강북구 노해로23길 53 ~ 110', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정시윤', 'm', 49, 172, 80, 'painting@yahoo.com', '010-8912-1605', '아나운서', '34397', '대전광역시 대덕구 계족로 670 ~ 682', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오윤재', 'm', 31, 182, 67, 'however@live.com', '010-1784-2073', '자동차딜러', '04737', '서울특별시 성동구 금호로 17 ~ 47-1', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정이안', 'm', 39, 186, 82, 'change@gmail.com', '010-3831-7438', '장학사', '04364', '서울특별시 용산구 새창로35길 9', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유연', 'f', 47, 159, 46, 'apply@yahoo.com', '010-7634-9512', '취업준비생', '06923', '서울특별시 동작구 만양로15길 3 ~ 17-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이예진', 'f', 45, 179, 61, 'imagine_result@yahoo.com', '010-2187-4693', '학생', '05023', '서울특별시 광진구 광나루로30가길 1 ~ 31', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '문이훈', 'm', 37, 173, 72, 'pass@yahoo.com', '010-2291-3141', '학생', '06242', '서울특별시 강남구 역삼로 109 ~ 113', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정류아', 'f', 24, 168, 60, 'where_feeling@naver.com', '010-2909-4081', '가구제조수리원', '08653', '서울특별시 금천구 시흥대로12길 45 ~ 82', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주나영', 'f', 27, 161, 44, 'increase@yahoo.com', '010-7426-5052', '탤런트', '03622', '서울특별시 서대문구 세검정로 60 ~ 74-18', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박이훈', 'm', 43, 160, 66, 'impact@daum.net', '010-6161-4851', '여론조사전문가', '06082', '서울특별시 강남구 봉은사로113길 25 ~ 39', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박신영', 'f', 38, 160, 40, 'his@yahoo.com', '010-5618-2884', '간호사', '05322', '서울특별시 강동구 상암로16길 46 ~ 46-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이승빈', 'm', 26, 165, 71, 'majority@gmail.com', '010-9481-8047', '뮤지컬배우', '48947', '부산광역시 중구 광복중앙로33번길 14 ~ 14-1', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정동언', 'm', 21, 184, 76, 'enough@yahoo.com', '010-4442-6871', '일식요리사', '01169', '서울특별시 강북구 솔매로36길 3 ~ 47', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이솔희', 'f', 36, 150, 65, 'medical_fast@daum.net', '010-4936-9931', '조경원', '03974', '서울특별시 마포구 성미산로15길 80', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차설안', 'f', 48, 153, 57, 'make@live.com', '010-4772-2273', '세무사', '07593', '서울특별시 강서구 양천로 122 ~ 140', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추효리', 'f', 49, 164, 63, 'hard@naver.com', '010-6641-6363', '약사', '07069', '서울특별시 동작구 신대방11길 12 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박나연', 'f', 16, 155, 52, 'they@naver.com', '010-7648-2952', '취업준비생', '34391', '대전광역시 대덕구 중리서로34번길 16 ~ 42', '오산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤정', 'f', 30, 152, 41, 'field_real@yahoo.com', '010-2047-3832', '학생', '01081', '서울특별시 강북구 덕릉로23길 12 ~ 28', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최동원', 'm', 30, 170, 73, 'top@yahoo.com', '010-3143-4879', '학생', '07551', '서울특별시 강서구 공항대로55길 50', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '곽태환', 'm', 29, 166, 70, 'that@naver.com', '010-2847-6831', '취업준비생', '04978', '서울특별시 광진구 자양로38길 28 ~ 58', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채원준', 'm', 28, 160, 66, 'financial@yahoo.com', '010-4676-4763', '조연출', '63277', '제주특별자치도 제주시 중앙로3길 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '조대원', 'm', 33, 168, 63, 'writer@gmail.com', '010-1701-7098', '기자', '46771', '부산광역시 강서구 가덕해안로1207번길 1 ~ 41', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주우찬', 'm', 32, 170, 84, 'box_task@live.com', '010-2644-4365', '제과제빵사', '08557', '서울특별시 금천구 독산로74길 9 ~ 35', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김희예', 'f', 18, 163, 48, 'disease@gmail.com', '010-3769-9504', '캐디', '17894', '경기도 평택시 통복시장로16번길 3 ~ 35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김준일', 'm', 21, 165, 82, 'hand@naver.com', '010-1718-9164', '공인중개사', '04722', '서울특별시 성동구 금호로11가길 6 ~ 12-11', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은채', 'm', 29, 161, 67, 'voice@yahoo.com', '010-9232-9501', '학생', '05101', '서울특별시 광진구 뚝섬로52가길 30 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '현로연', 'f', 49, 159, 62, 'finger@yahoo.com', '010-7751-9655', '금융자산운용가', '48949', '부산광역시 중구 광복중앙로34번길 9 ~ 14', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최채은', 'f', 28, 164, 67, 'drop@naver.com', '010-9878-7522', '학생', '24159', '강원도 화천군 사내면 화악산로 1037 ~ 1053', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동완', 'm', 23, 189, 80, 'dead@yahoo.com', '010-6490-6765', '학생', '25303', '강원도 평창군 봉평면 기풍4길 1 ~ 27-8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최두나', 'f', 23, 162, 67, 'leave_figure@yahoo.com', '010-3151-2329', '건물주', '63010', '제주특별자치도 제주시 한림읍 금능6길 5 ~ 23', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이원정', 'f', 36, 165, 66, 'own@live.com', '010-1373-9540', '텔레마케터', '05208', '서울특별시 강동구 아리수로93길 79 ~ 91', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김다훈', 'm', 39, 166, 76, 'technology@daum.net', '010-5231-6290', '경영컨설턴트', '14546', '경기도 부천시 원미구 석천로183번길 11 ~ 43', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동연', 'm', 41, 173, 64, 'image@naver.com', '010-4900-9705', '건물주자제분', '05023', '서울특별시 광진구 광나루로30가길 1 ~ 31', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '엄도연', 'm', 18, 163, 70, 'himself@yahoo.com', '010-8586-8710', '시조시인', '61447', '광주광역시 동구 지호로127번길 3-10 ~ 29', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '차서빈', 'f', 35, 157, 50, 'cup@gmail.com', '010-6921-3365', '영화배우', '25311', '강원도 평창군 봉평면 금당계곡로 1258 ~ 1883', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이찬후', 'm', 27, 179, 87, 'green_conference@naver.com', '010-9377-3370', '취업준비생', '04011', '서울특별시 마포구 포은로6길 25 ~ 39', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '추시영', 'f', 23, 160, 61, 'ok@yahoo.com', '010-3302-6629', '항공기관사', '01633', '서울특별시 노원구 덕릉로141가길 1 ~ 36', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박동환', 'm', 48, 183, 68, 'director@daum.net', '010-1331-7796', '운동감독', '63116', '제주특별자치도 제주시 오일장중길 6 ~ 115-21', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최세비', 'f', 28, 179, 65, 'fine_quality@daum.net', '010-4421-1685', '외환딜러', '07693', '서울특별시 강서구 강서로46길 23', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '백리예', 'f', 23, 156, 65, 'someone@gmail.com', '010-8861-8428', '애널리스트', '06582', '서울특별시 서초구 동광로27길 6 ~ 88', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이송윤', 'f', 34, 156, 49, 'final@naver.com', '010-1983-6417', '주유원', '01366', '서울특별시 도봉구 삼양로 574-29 ~ 574-35', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '림두영', 'f', 39, 157, 49, 'happen@yahoo.com', '010-3674-5711', '엔지니어', '05262', '서울특별시 강동구 올림픽로98가길 3 ~ 31-8', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이유성', 'm', 20, 167, 61, 'share_letter@naver.com', '010-6670-9005', '백수', '06900', '서울특별시 동작구 노들로 618 ~ 756', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대언', 'm', 17, 169, 68, 'could@naver.com', '010-2192-9546', '건물주', '24664', '강원도 인제군 상남면 상남로 20 ~ 48-8', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유주예', 'f', 36, 167, 52, 'death@gmail.com', '010-9257-6713', '장의사', '07619', '서울특별시 강서구 방화대로21길 49 ~ 95', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '탁한솔', 'f', 45, 178, 62, 'weapon_sexual@daum.net', '010-3825-8795', '취업준비생', '11636', '경기도 의정부시 신흥로 71 ~ 103-7', '제주');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '변유현', 'm', 36, 187, 60, 'magazine@daum.net', '010-8697-8282', '탤런트', '47115', '부산광역시 부산진구 성지로104번길 43-1 ~ 43-3', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이정현', 'f', 37, 158, 54, 'the@yahoo.com', '010-6478-6893', '취업준비생', '61662', '광주광역시 남구 양림로 51 ~ 95', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최태환', 'm', 20, 170, 62, 'think@yahoo.com', '010-6431-4952', '취업준비생', '07957', '서울특별시 양천구 목동중앙남로 65 ~ 99', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오류아', 'f', 17, 160, 43, 'writer@live.com', '010-7916-1599', '증권투자상담사', '01214', '서울특별시 강북구 숭인로5길 2-3 ~ 22', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '채현준', 'm', 49, 161, 74, 'sexual@gmail.com', '010-8179-6128', '학생', '08863', '서울특별시 관악구 문성로 74 ~ 86', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최한규', 'm', 34, 162, 77, 'right@naver.com', '010-3077-5158', '학생', '07776', '서울특별시 강서구 곰달래로 82 ~ 96', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정유성', 'm', 22, 165, 84, 'similar@naver.com', '010-1372-5280', '구급대원', '05395', '서울특별시 강동구 성내로13길 50 ~ 64', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김우진', 'm', 18, 178, 84, 'clearly@naver.com', '010-2698-2326', '택시기사', '04994', '서울특별시 광진구 천호대로102길 4 ~ 36', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동후', 'm', 34, 180, 70, 'defense@live.com', '010-6934-6657', '취업준비생', '05292', '서울특별시 강동구 양재대로138길 21 ~ 51', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '표래헌', 'm', 16, 160, 70, 'exist@yahoo.com', '010-9478-6351', '학생', '11670', '경기도 의정부시 신흥로 252 ~ 282', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '주대인', 'm', 37, 164, 80, 'child_crime@live.com', '010-7572-4998', '취업준비생', '05057', '서울특별시 광진구 뚝섬로49길 49 ~ 69', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정신혜', 'f', 19, 161, 53, 'enjoy@daum.net', '010-4203-1714', '외환딜러', '63183', '제주특별자치도 제주시 서사로20길 2 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이현준', 'm', 23, 179, 87, 'he@daum.net', '010-1871-6290', '섬유공학기술자', '01366', '서울특별시 도봉구 삼양로 574-29 ~ 574-35', '구리');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤후', 'f', 45, 174, 67, 'play@naver.com', '010-3334-5247', '가구제조조립원', '06352', '서울특별시 강남구 광평로47길 17 ~ 28', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '길도연', 'm', 27, 161, 81, 'magazine@gmail.com', '010-3980-5896', '양식기능사', '61972', '광주광역시 서구 화운로199번길 6 ~ 11-1', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤제', 'm', 41, 182, 78, 'plant@naver.com', '010-9391-3638', '학생', '25310', '강원도 평창군 봉평면 금산동길 10-22 ~ 317', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜림', 'f', 23, 152, 64, 'until_leg@naver.com', '010-3937-4887', '푸드스타일리스트', '07015', '서울특별시 동작구 남부순환로271길 35 ~ 65', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '전이황', 'm', 41, 170, 87, 'responsibility_mean@naver.com', '010-4331-4118', '뮤지컬배우', '63602', '제주특별자치도 서귀포시 토상로69번길 4 ~ 56', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '강우진', 'm', 38, 161, 76, 'everybody@daum.net', '010-1612-8838', '간병인', '25221', '강원도 횡성군 횡성읍 화성로1번길 1 ~ 10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동인', 'm', 37, 187, 64, 'find@live.com', '010-5709-2860', '장학사', '24161', '강원도 화천군 사내면 화악산로 909-16', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박영준', 'm', 22, 171, 70, 'wall_capital@daum.net', '010-4315-5483', '건물주', '01194', '서울특별시 강북구 삼양로 167 ~ 171', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김슬빈', 'f', 42, 165, 40, '@yahoo.com', '010-1672-2918', '학생', '24106', '강원도 화천군 상서면 계파로 1149-20 ~ 1305', '남원');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김혜슬', 'f', 29, 163, 66, 'enjoy_eat@gmail.com', '010-6233-4915', '학생', '07023', '서울특별시 동작구 남부순환로269길 167 ~ 169', '성남');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '명태영', 'm', 38, 160, 67, 'piece@live.com', '010-5489-8689', '양식기능사', '08556', '서울특별시 금천구 독산로70라길 19 ~ 48', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배소희', 'f', 18, 155, 62, 'century@daum.net', '010-7959-7122', '버스운전사', '12518', '경기도 양평군 용문면 용문삼성로20번길 3 ~ 75', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김윤현', 'm', 46, 166, 88, 'Mrs@daum.net', '010-9507-8984', '취업준비생', '01127', '서울특별시 강북구 솔매로35길 3 ~ 23-15', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '방주호', 'm', 28, 165, 89, 'never@gmail.com', '010-3469-6860', '취업준비생', '08577', '서울특별시 금천구 시흥대로126길 25 ~ 47', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김초윤', 'f', 38, 175, 54, 'say@gmail.com', '010-2334-9726', '기자', '35062', '대전광역시 중구 범골로 10 ~ 20', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '국송후', 'm', 30, 172, 61, 'realize@yahoo.com', '010-6836-9746', '건물주', '04718', '서울특별시 성동구 금호로 56 ~ 102', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '왕루연', 'f', 47, 167, 54, 'firm@daum.net', '010-8914-9641', '요리사', '03657', '서울특별시 서대문구 모래내로 303-25 ~ 329', '서귀포');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정태희', 'f', 16, 170, 62, 'officer@live.com', '010-4879-5286', '취업준비생', '04920', '서울특별시 광진구 천호대로101길 5 ~ 27-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '진루원', 'f', 18, 157, 56, 'kind@live.com', '010-2673-5446', '취업준비생', '61926', '광주광역시 서구 천변좌로316번길 1 ~ 8', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이수', 'm', 48, 168, 64, 'away@gmail.com', '010-5279-1108', '외환딜러', '01047', '서울특별시 강북구 노해로21길 58 ~ 103', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효준', 'm', 26, 174, 88, 'national_season@daum.net', '010-5087-8008', '취업준비생', '06145', '서울특별시 강남구 선릉로107길 3-4 ~ 7-5', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김민기', 'm', 34, 174, 88, 'save@daum.net', '010-8126-3573', '건물주자제분', '08823', '서울특별시 관악구 신우길 1 ~ 24', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이주혁', 'm', 22, 170, 89, 'front@live.com', '010-5236-1995', '취업준비생', '01098', '서울특별시 강북구 덕릉로12길 6 ~ 18', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '은소은', 'f', 28, 158, 55, 'sing@yahoo.com', '010-9865-5548', '취업준비생', '01744', '서울특별시 노원구 중계로19길 48', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최대경', 'm', 30, 166, 62, 'that@yahoo.com', '010-9653-9171', '농업기술자', '01210', '서울특별시 강북구 숭인로13길 27-2 ~ 53', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '한소율', 'f', 44, 178, 48, 'really@gmail.com', '010-7759-6380', '섬유공학기술자', '01219', '서울특별시 강북구 도봉로10나길 4 ~ 22', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '하윤하', 'm', 29, 165, 74, 'out@gmail.com', '010-8676-3563', '학생', '63015', '제주특별자치도 제주시 한림읍 금능남로 127', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김동예', 'm', 17, 189, 64, 'town@naver.com', '010-6397-5644', '취업준비생', '49484', '부산광역시 사하구 장평로41번길 16 ~ 94', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최혜영', 'f', 40, 168, 46, 'future@daum.net', '010-8011-7182', '병원코디네이트', '24665', '강원도 인제군 상남면 광주동길 4-3 ~ 64', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '유원형', 'm', 24, 187, 62, 'by@naver.com', '010-1867-1287', '의사', '07765', '서울특별시 강서구 가로공원로78길 34 ~ 56', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '윤태율', 'f', 37, 157, 47, 'improve@naver.com', '010-1570-1297', '학생', '06247', '서울특별시 강남구 역삼로 165 ~ 179', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '배우찬', 'm', 35, 166, 75, 'do@yahoo.com', '010-8614-6237', '학생', '34393', '대전광역시 대덕구 중리서로 1 ~ 25', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '최이한', 'f', 34, 173, 58, 'produce@yahoo.com', '010-1440-9978', '중식요리사', '62316', '광주광역시 광산구 2순환로 2474 ~ 2482', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김이완', 'm', 25, 162, 75, 'rest@yahoo.com', '010-2826-1980', '장제사', '08642', '서울특별시 금천구 금하로20길 5 ~ 18', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김은찬', 'm', 19, 188, 62, 'medical@live.com', '010-1424-1539', '프로그래머', '61161', '광주광역시 북구 밤실로208번길 3 ~ 55', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '남궁도현', 'm', 26, 162, 65, 'air@gmail.com', '010-7390-2235', '장제사', '01811', '서울특별시 노원구 공릉로 232', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김태연', 'f', 44, 169, 48, 'community@gmail.com', '010-7429-8317', '건물주', '03701', '서울특별시 서대문구 연희로11바길 2 ~ 42', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이다원', 'f', 18, 156, 53, 'against@yahoo.com', '010-2914-4989', '아나운서', '06163', '서울특별시 강남구 삼성로108길 5 ~ 25', '인천');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정은률', 'm', 20, 164, 72, 'three@naver.com', '010-5449-7374', '캐디', '18321', '경기도 화성시 봉담읍 북촌길 5 ~ 25-3', '부산');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정선우', 'm', 46, 179, 67, 'bill@naver.com', '010-8235-4670', 'PD', '05343', '서울특별시 강동구 천중로52길 6 ~ 54', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '연승엽', 'm', 35, 170, 64, 'laugh@naver.com', '010-4827-8350', '취업준비생', '01078', '서울특별시 강북구 수유로23길 37 ~ 57', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '정윤택', 'm', 26, 188, 87, 'look@gmail.com', '010-1629-2994', '취업준비생', '06136', '서울특별시 강남구 논현로 528 ~ 562', '거제');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박효현', 'f', 47, 153, 44, 'design@gmail.com', '010-8722-6992', '뮤지컬배우', '62264', '광주광역시 광산구 월계로22번길 6 ~ 46', '포항');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박승후', 'm', 20, 167, 62, 'probably@daum.net', '010-2731-2651', '소설가', '08317', '서울특별시 구로구 구로동로7다길 7 ~ 11', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '기세은', 'f', 26, 176, 47, 'usually@yahoo.com', '010-1094-1588', '포토그래퍼', '04995', '서울특별시 광진구 천호대로104길 14 ~ 42-6', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오로훈', 'm', 38, 164, 66, 'management@live.com', '010-2849-1907', '경영컨설턴트', '63528', '제주특별자치도 서귀포시 안덕면 사계남로21번길 1 ~ 34', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '서주훈', 'm', 24, 174, 77, 'new@live.com', '010-3379-2932', '건물주자제분', '17548', '경기도 안성시 공도읍 마정길 2 ~ 26', '대구');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '오민찬', 'm', 19, 183, 68, 'force_life@yahoo.com', '010-8827-4343', '취업준비생', '04775', '서울특별시 성동구 둘레9길 4 ~ 4-10', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '이로영', 'f', 45, 170, 52, 'center@gmail.com', '010-1265-7855', '건물주', '61248', '광주광역시 북구 신임로31번길 84 ~ 84-2', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '권태겸', 'f', 28, 161, 46, 'lead@live.com', '010-8703-7048', '취업준비생', '63154', '제주특별자치도 제주시 서사로2길 8 ~ 30', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '김유진', 'f', 26, 156, 48, 'drop@gmail.com', '010-1735-4436', '방송작가', '03616', '서울특별시 서대문구 세검정로1길 61-14 ~ 90', '서울');
insert into tblAddressBook (seq, name, gender, age, height, weight, email, tel, job, zipcode, address, hometown) values (addressbook_seq.nextval, '박세비', 'f', 43, 164, 68, 'sign@gmail.com', '010-2897-7973', '프로그래머', '04996', '서울특별시 광진구 능동로35길 18 ~ 42', '서울');


commit;

CREATE TABLE traffic_accident (
    year              NUMBER       NOT NULL,  -- 연도
    trans_type        VARCHAR2(30) NOT NULL,  -- 교통수단
    total_acct_num    NUMBER,                 -- 사고발생건수
    death_person_num  NUMBER                  -- 사망자수   
);


ALTER TABLE traffic_accident
ADD CONSTRAINTS traffic_accident_pk PRIMARY KEY (year, trans_type);




insert into traffic_accident values(1980,'자동차',120182,5608);
insert into traffic_accident values(1981,'자동차',123373,5804);
insert into traffic_accident values(1982,'자동차',141128,6110);
insert into traffic_accident values(1983,'자동차',170026,6834);
insert into traffic_accident values(1984,'자동차',134335,7468);
insert into traffic_accident values(1985,'자동차',146836,7522);
insert into traffic_accident values(1986,'자동차',153777,7702);
insert into traffic_accident values(1987,'자동차',175661,7206);
insert into traffic_accident values(1988,'자동차',225062,11563);
insert into traffic_accident values(1989,'자동차',255787,12603);
insert into traffic_accident values(1990,'자동차',255303,12325);
insert into traffic_accident values(1991,'자동차',265964,13429);
insert into traffic_accident values(1992,'자동차',257194,11640);
insert into traffic_accident values(1993,'자동차',260921,10402);
insert into traffic_accident values(1994,'자동차',266107,10087);
insert into traffic_accident values(1995,'자동차',248865,10323);
insert into traffic_accident values(1996,'자동차',265052,12653);
insert into traffic_accident values(1997,'자동차',246452,11603);
insert into traffic_accident values(1998,'자동차',239721,9057);
insert into traffic_accident values(1999,'자동차',275938,9353);
insert into traffic_accident values(2000,'자동차',290481,10236);
insert into traffic_accident values(2001,'자동차',260579,8097);
insert into traffic_accident values(2002,'자동차',231026,7222);
insert into traffic_accident values(2003,'자동차',240832,7212);
insert into traffic_accident values(2004,'자동차',220755,6563);
insert into traffic_accident values(2005,'자동차',214171,6376);
insert into traffic_accident values(2006,'자동차',213745,6327);
insert into traffic_accident values(2007,'자동차',211662,6166);
insert into traffic_accident values(2008,'자동차',215822,5870);
insert into traffic_accident values(2009,'자동차',231990,5838);
insert into traffic_accident values(2010,'자동차',226878,5505);
insert into traffic_accident values(2011,'자동차',221711,5229);
insert into traffic_accident values(2012,'자동차',223656,5392);
insert into traffic_accident values(2013,'자동차',215354,5092);
insert into traffic_accident values(2014,'자동차',223552,4762);
insert into traffic_accident values(2015,'자동차',232035,4621);
insert into traffic_accident values(2016,'자동차',220917,4292);
insert into traffic_accident values(1980,'철도',2136,778);
insert into traffic_accident values(1981,'철도',1894,858);
insert into traffic_accident values(1982,'철도',1849,755);
insert into traffic_accident values(1983,'철도',1932,714);
insert into traffic_accident values(1984,'철도',1816,755);
insert into traffic_accident values(1985,'철도',1811,738);
insert into traffic_accident values(1986,'철도',1845,689);
insert into traffic_accident values(1987,'철도',1739,717);
insert into traffic_accident values(1988,'철도',1847,697);
insert into traffic_accident values(1989,'철도',1812,693);
insert into traffic_accident values(1990,'철도',1707,606);
insert into traffic_accident values(1991,'철도',1813,588);
insert into traffic_accident values(1992,'철도',1694,522);
insert into traffic_accident values(1993,'철도',1611,573);
insert into traffic_accident values(1994,'철도',1541,478);
insert into traffic_accident values(1995,'철도',1344,366);
insert into traffic_accident values(1996,'철도',1051,352);
insert into traffic_accident values(1997,'철도',937,337);
insert into traffic_accident values(1998,'철도',956,349);
insert into traffic_accident values(1999,'철도',761,314);
insert into traffic_accident values(2000,'철도',640,252);
insert into traffic_accident values(2001,'철도',571,245);
insert into traffic_accident values(2002,'철도',599,265);
insert into traffic_accident values(2003,'철도',743,503);
insert into traffic_accident values(2004,'철도',596,243);
insert into traffic_accident values(2005,'철도',386,201);
insert into traffic_accident values(2006,'철도',329,171);
insert into traffic_accident values(2007,'철도',429,192);
insert into traffic_accident values(2008,'철도',408,159);
insert into traffic_accident values(2009,'철도',382,161);
insert into traffic_accident values(2010,'철도',317,135);
insert into traffic_accident values(2011,'철도',277,124);
insert into traffic_accident values(2012,'철도',250,108);
insert into traffic_accident values(2013,'철도',232,96);
insert into traffic_accident values(2014,'철도',209,80);
insert into traffic_accident values(2015,'철도',138,76);
insert into traffic_accident values(2016,'철도',123,62);
insert into traffic_accident values(1980,'지하철',7,4);
insert into traffic_accident values(1981,'지하철',15,7);
insert into traffic_accident values(1982,'지하철',8,4);
insert into traffic_accident values(1983,'지하철',9,5);
insert into traffic_accident values(1984,'지하철',13,9);
insert into traffic_accident values(1985,'지하철',12,3);
insert into traffic_accident values(1986,'지하철',17,12);
insert into traffic_accident values(1987,'지하철',31,9);
insert into traffic_accident values(1988,'지하철',62,15);
insert into traffic_accident values(1989,'지하철',34,11);
insert into traffic_accident values(1990,'지하철',33,15);
insert into traffic_accident values(1991,'지하철',34,20);
insert into traffic_accident values(1992,'지하철',29,17);
insert into traffic_accident values(1993,'지하철',20,11);
insert into traffic_accident values(1994,'지하철',18,12);
insert into traffic_accident values(1995,'지하철',19,12);
insert into traffic_accident values(1996,'지하철',29,18);
insert into traffic_accident values(1997,'지하철',27,18);
insert into traffic_accident values(1998,'지하철',48,24);
insert into traffic_accident values(1999,'지하철',54,35);
insert into traffic_accident values(2000,'지하철',48,28);
insert into traffic_accident values(2001,'지하철',60,40);
insert into traffic_accident values(2002,'지하철',56,36);
insert into traffic_accident values(2003,'지하철',103,256);
insert into traffic_accident values(2004,'지하철',88,51);
insert into traffic_accident values(2005,'지하철',92,55);
insert into traffic_accident values(2006,'지하철',79,44);
insert into traffic_accident values(2007,'지하철',83,59);
insert into traffic_accident values(2008,'지하철',63,39);
insert into traffic_accident values(2009,'지하철',60,34);
insert into traffic_accident values(2010,'지하철',17,9);
insert into traffic_accident values(2011,'지하철',0,0);
insert into traffic_accident values(2012,'지하철',0,0);
insert into traffic_accident values(2013,'지하철',0,0);
insert into traffic_accident values(2014,'지하철',0,0);
insert into traffic_accident values(2015,'지하철',0,0);
insert into traffic_accident values(2016,'지하철',0,0);
insert into traffic_accident values(1980,'선박',255,147);
insert into traffic_accident values(1981,'선박',336,123);
insert into traffic_accident values(1982,'선박',301,42);
insert into traffic_accident values(1983,'선박',300,74);
insert into traffic_accident values(1984,'선박',486,143);
insert into traffic_accident values(1985,'선박',408,242);
insert into traffic_accident values(1986,'선박',429,175);
insert into traffic_accident values(1987,'선박',533,477);
insert into traffic_accident values(1988,'선박',438,309);
insert into traffic_accident values(1989,'선박',479,194);
insert into traffic_accident values(1990,'선박',515,154);
insert into traffic_accident values(1991,'선박',555,153);
insert into traffic_accident values(1992,'선박',476,195);
insert into traffic_accident values(1993,'선박',529,430);
insert into traffic_accident values(1994,'선박',699,209);
insert into traffic_accident values(1995,'선박',709,190);
insert into traffic_accident values(1996,'선박',661,147);
insert into traffic_accident values(1997,'선박',840,227);
insert into traffic_accident values(1998,'선박',772,143);
insert into traffic_accident values(1999,'선박',849,164);
insert into traffic_accident values(2000,'선박',634,149);
insert into traffic_accident values(2001,'선박',610,174);
insert into traffic_accident values(2002,'선박',557,185);
insert into traffic_accident values(2003,'선박',531,119);
insert into traffic_accident values(2004,'선박',804,205);
insert into traffic_accident values(2005,'선박',658,186);
insert into traffic_accident values(2006,'선박',657,134);
insert into traffic_accident values(2007,'선박',566,136);
insert into traffic_accident values(2008,'선박',948,116);
insert into traffic_accident values(2009,'선박',1815,148);
insert into traffic_accident values(2010,'선박',1627,170);
insert into traffic_accident values(2011,'선박',1809,158);
insert into traffic_accident values(2012,'선박',1573,122);
insert into traffic_accident values(2013,'선박',1093,101);
insert into traffic_accident values(2014,'선박',1330,467);
insert into traffic_accident values(2015,'선박',2101,100);
insert into traffic_accident values(2016,'선박',2307,118);
insert into traffic_accident values(1980,'항공기',4,17);
insert into traffic_accident values(1981,'항공기',2,0);
insert into traffic_accident values(1982,'항공기',0,0);
insert into traffic_accident values(1983,'항공기',5,276);
insert into traffic_accident values(1984,'항공기',1,5);
insert into traffic_accident values(1985,'항공기',1,2);
insert into traffic_accident values(1986,'항공기',1,3);
insert into traffic_accident values(1987,'항공기',1,115);
insert into traffic_accident values(1988,'항공기',2,3);
insert into traffic_accident values(1989,'항공기',3,94);
insert into traffic_accident values(1990,'항공기',1,2);
insert into traffic_accident values(1991,'항공기',3,0);
insert into traffic_accident values(1992,'항공기',3,1);
insert into traffic_accident values(1993,'항공기',3,73);
insert into traffic_accident values(1994,'항공기',2,0);
insert into traffic_accident values(1995,'항공기',0,0);
insert into traffic_accident values(1996,'항공기',2,1);
insert into traffic_accident values(1997,'항공기',4,232);
insert into traffic_accident values(1998,'항공기',3,0);
insert into traffic_accident values(1999,'항공기',3,12);
insert into traffic_accident values(2000,'항공기',3,0);
insert into traffic_accident values(2001,'항공기',5,9);
insert into traffic_accident values(2002,'항공기',4,1);
insert into traffic_accident values(2003,'항공기',5,1);
insert into traffic_accident values(2004,'항공기',3,2);
insert into traffic_accident values(2005,'항공기',10,5);
insert into traffic_accident values(2006,'항공기',6,1);
insert into traffic_accident values(2007,'항공기',8,4);
insert into traffic_accident values(2008,'항공기',6,3);
insert into traffic_accident values(2009,'항공기',13,14);
insert into traffic_accident values(2010,'항공기',7,1);
insert into traffic_accident values(2011,'항공기',14,14);
insert into traffic_accident values(2012,'항공기',9,6);
insert into traffic_accident values(2013,'항공기',13,12);
insert into traffic_accident values(2014,'항공기',5,6);
insert into traffic_accident values(2015,'항공기',11,3);
insert into traffic_accident values(2016,'항공기',18,17);

commit;