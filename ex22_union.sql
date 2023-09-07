-- ex22_union.sql

/*

	관계 대수 연산
	1. 셀렉션 > select where
	2. 프로젝션 > select column
	3. 조인
	4. 합집합(union), 차집합(minus), 교집합(intersect)
	
	유니온, union
	- 스키마가 동일한 결과셋(select의 결과)끼리 가능 (주의! 테이블이 아님!!!)
	

*/

SELECT * FROM tblmen
UNION
SELECT * FROM tblwomen;


--스키마가 동일하지 않은 결과셋인 경우 UNION 불가
SELECT * FROM tblstaff
UNION 
SELECT * FROM tblinsa;
--ORA-01789: query block has incorrect number of result columns

-- 단, 스키마가 동일한 원본 테이블이 아니더라도 결과셋이 같다면 UNION 가능~!
SELECT name FROM tblstaff
UNION 
SELECT name FROM tblinsa;

-- 컬럼명이 달라도 스키마가 동일한 결과셋일경우 UNION 가능~!
SELECT name, address, salary FROM tblstaff
UNION 
SELECT name, city, basicpay FROM tblinsa;

--UNION은 언제쓰나요?
-- Case 1) 어떤 회사 > 부서별 게시판
SELECT * FROM 영업부게시판;
SELECT * FROM 총무부게시판;
SELECT * FROM 개발부게시판;
 -- 회장님 > 모든 부서의 게시판 글 > 한번에 열람
SELECT * FROM 영업부게시판
UNION
SELECT * FROM 총무부게시판
UNION
SELECT * FROM 개발부게시판;

-- Case 2) 야구선수 > 공격수, 수비수
SELECT * FROM 공격수;
SELECT * FROM 수비수;

SELECT * FROM 공격수;
UNION 
SELECT * FROM 수비수;

-- Case 3) SNS > 하나의 테이블 + 다량의 데이터 > 기간별 테이블 분할
SELECT * FROM 게시판2020;
SELECT * FROM 게시판2021;
SELECT * FROM 게시판2022;
SELECT * FROM 게시판2023;

SELECT * FROM 게시판2020;
UNION
SELECT * FROM 게시판2021;
UNION 
SELECT * FROM 게시판2022;
UNION 
SELECT * FROM 게시판2023;
--> 다량의 데이터의 경우 처리 속도가 오래걸리므로 최근 쇼핑몰 사이트에서 구매 내역 조회가 기간별(3,6,12개월 조회)로 제한적인것도 이를 반영한 것!

-------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblAAA (
	name varchar2(30) NOT NULL 
);

CREATE TABLE tblBBB (
	name varchar2(30) NOT NULL 
);

INSERT INTO tblAAA VALUES ('강아지');
INSERT INTO tblAAA VALUES ('고양이');
INSERT INTO tblAAA VALUES ('토끼');
INSERT INTO tblAAA VALUES ('거북이');
INSERT INTO tblAAA VALUES ('병아리');

INSERT INTO tblBBB VALUES ('강아지');
INSERT INTO tblBBB VALUES ('고양이');
INSERT INTO tblBBB VALUES ('호랑이');
INSERT INTO tblBBB VALUES ('사자');
INSERT INTO tblBBB VALUES ('코끼리');


--UNION > 수학의 집합 > 중복 제거 특징
SELECT * FROM tblaaa
UNION 
SELECT * FROM tblbbb; -- 8개의 레코드

--UNION ALL > 중복값 허용
SELECT * FROM tblaaa
UNION ALL 
SELECT * FROM tblbbb;

--intersect > 교집합 > 두 테이블의 공통 값을 추출해주세요.
SELECT * FROM tblaaa
INTERSECT 
SELECT * FROM tblbbb;

--minus > 차집합(A - B) > 피연산자 위치 중요! > 결과값이 달라지기 때문
SELECT * FROM tblaaa
MINUS 
SELECT * FROM tblbbb;

SELECT * FROM tblbbb
MINUS 
SELECT * FROM tblaaa;