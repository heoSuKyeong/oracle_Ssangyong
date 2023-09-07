-- ex21_view.sql

/*

	View, 뷰
	- 데이터베이스 객체 중 하나(테이블, 제약사항, 뷰, 시퀀스)
	- 가상 테이블, 뷰 테이블 등..
	- 테이블처럼 사용한다.(***)
	- 쿼리의 양을 줄인다.
	
	- 정의: 쿼리(SQL)을 저장하는 객체
	- 목적: 권한 통제
	
	create [or replace] view 뷰이름
	as
	select 문;

*/

CREATE OR REPLACE VIEW vwInsa
AS
SELECT * FROM tblinsa;

SELECT * FROM vwinsa; -- tblInsa 테이블의 복사본 > 실명 뷰(재 사용 가능. 또 부르고, 부르고 할 수 있음)
SELECT * FROM (SELECT * FROM tblinsa); -- 익명뷰(1회성 사용만 가능) > 인라인 뷰

-- '영업부' 직원
CREATE OR REPLACE VIEW 영업부
as
SELECT 
	num, name, city, basicpay, substr(ssn, 8) AS ssn
FROM tblinsa 
	WHERE buseo = '영업부';
	
SELECT * FROM 영업부

-- 비디오 대여점 사장 > 날마다 > 업무
-- create or replace > 만들고 수정하는 역할 모두 진행
CREATE OR REPLACE VIEW vwCheck
as
SELECT
	m.name AS 회원,
	v.name AS 비디오,
	r.rentdate AS 언제,
	r.retdate AS 반납,
	r.rentdate + g.period AS 반납예정일,
	sysdate - (r.rentdate + g.period) AS 연체일,
	(sysdate - (r.rentdate + g.period)) * g.price * 0.1 AS 연체료
FROM tblrent r
	INNER JOIN tblvideo v
		ON r.video = v.seq
			INNER JOIN tblmember m
				ON m.seq = r.MEMBER
					INNER JOIN tblgenre g
						ON g.seq = v.genre;
				
SELECT * FROM vwCheck;

SELECT * FROM tblgenre;

SELECT * FROM vwcheck;

/* 테이블 100개 만들면 뷰는 150~200개정도 만든다고 생각! */

-- tblInsa > 서울 직원


CREATE OR REPLACE VIEW vwSeoul
AS
SELECT
	* 
FROM tblinsa WHERE city = '서울'; --뷰를 만드는 시점 > 20명

SELECT * FROM vwseoul; --20명

UPDATE tblinsa SET city = '제주' WHERE num IN (1001, 1005, 1008);

SELECT * FROM tblinsa WHERE city = '서울'; -- 17명

SELECT * FROM vwseoul; --17명
--뷰를 어느 시점에 만들었던간에 테이블을 조작하면 뷰 반영, 뷰를 조작하면 테이블에 반영됨.


---------------------------------------------------------------------------------------------

-- 신입 사원 > 업무 > 연락처 확인 > 문자 발송!! > hr(java1234)
SELECT * FROM tblinsa; -- 신입 계정 > tblInsa 접근 권한(X)
SELECT * FROM vwtel; -- 신입 계정 > vwTel 접근 읽기 권한(O)

-- > object별로 계정마다 접근, 사용권한을 줄 수 있다.
-- > 신입사원 전용 오라클 계정 생성 후, 신입 계정 > tblInsa 접근 권한(X)


-- 이럴 때 VIEW를 만듦!! 위 tblinsa table에 신입사원이 보기에 부적합한 전직원의 SSN, BASICPAY, SUDANG 등이 표기되기 때문
CREATE OR REPLACE VIEW vwTel
AS
SELECT name, buseo, jikwi, tel FROM tblinsa;

SELECT * FROM vwtel;

-- 뷰 사용 주의점!! (뷰의 목적: 복잡한 select를 단순화 시키는 것!!!!!!!!!!!!!!!!!!!!)
-- 1. SELECT > 실행 O > 뷰는 읽기 전용으로 사용한다. == '읽기 전용 테이블'로 간주하고 사용
-- 2. INSERT > 실행 O > 절대 사용 금지
-- 3. UPDATE > 실행 O > 절대 사용 금지
-- 4. DELETE > 실행 O > 절대 사용 금지

CREATE OR REPLACE VIEW vwTodo -- 단순뷰 > 뷰의 select가 1개의 테이블로 구성
AS
SELECT * FROM tblTodo;

SELECT * FROM vwtodo;
INSERT INTO vwtodo VALUES ((SELECT max(seq) + 1 FROM tbltodo), '할일', sysdate, null); -- VIEW를 대상으로 INSERT도 가능
UPDATE vwtodo SET title = '할일 완료' WHERE seq = 21; -- VIEW를 대상으로 UPDATE도 가능
DELETE vwtodo WHERE seq = 21; -- VIEW를 대상으로 DELETE도 가능


-- 복합뷰
-- 외부에서는 단순뷰 vs 복합뷰 구분이 불가하기 때문에, 무조건 뷰는 읽기 전용으로만 쓴다. 라고 기억!!!!!
SELECT * FROM vwtodo; -- > 이것만 보면이게 단순뷰인지 복합뷰인지 구분이 불가하다. (CREATE문을 보지 않는 이상)
SELECT * FROM vwcheck;