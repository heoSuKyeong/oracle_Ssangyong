-- ex24_pseudo.sql
/*

의사 컬럼, Pseudo Column
- 실제 컬럼이 아닌데 컬럼처럼 행동하는 객체

rownum
- 행번호
- 오라클 전용
- MS-SQL(top n) / MySQL(limit n,m)
- 시퀀스 객체와는 상관 없다.
- 시퀀스 : 자신이 규칙에 따라 번호를 생성한다.
- rownum : 현재 테이블의 행번호를 가져오는 역할
- 테이블에 저장된 값이 아닌 select 실행 시 동적으로 계산되어 만들어진다.(***)
- from 절이 실행될 때 각 레코드에 rownum을 할당한다.(****************)
- where절이 실행될 때 상황에 따라 rownum 재계산된다.(***********) > from절에서 만들어진 rownum은 where절이 실행될 때 변경될 수 있다.
*/

-- select 절에 올 수 있는 값
SELECT 
	name, buseo,		--컬럼(속성) > OUTPUT > 객체(레코드)의 특성에 따라 다른 값을 가진다.
	100,				--상수 > OUTPU > 모든 레코드가 동일한 값을 가진다.(잘 사용하지 않는다.)
	substr(name, 2),	--함수 > INPUT+OUTPUT > 객체의 특성에 따라 다른 값을 가진다.
	rownum				--의사컬럼 > OUTPUT > 
FROM tblinsa;

-- 게시판의 페이지
-- 1페이지 > rownum between 1 and 20
-- 2페이지 > rownum between 21 and 40

-- 첫번째 직원 조회
SELECT name, buseo, rownum
FROM tblinsa
WHERE rownum = 1;

-- 첫번째부터 다섯번째 직원 조회
SELECT name, buseo, rownum
FROM tblinsa
WHERE rownum <= 5;

-- 다섯번째 직원 조회
-- 실행되지않음
SELECT name, buseo, rownum
FROM tblinsa
WHERE rownum = 5;


-- 작동 순서 및 작업
SELECT name, buseo, rownum		-- 2. 소비 : 1에서 만든 rownum을 가져온다.
FROM tblinsa;					-- 1. 생성 : FROM 절이 실행되는 순간 모든 레코드에 rownum 할당


SELECT name, buseo, rownum		-- 3. 소비
FROM tblinsa					-- 1. 생성
WHERE rownum = 1;				-- 2. 조건검색

SELECT name, buseo, rownum		-- 3. 소비
FROM tblinsa					-- 1. 생성
WHERE rownum = 5;				-- 2. 조건검색 > 조건에 부합하지 않은 행을 제외하고 조건을 검색한다.
								--				> 홍길동이 rownum =1이므로 행을 제외하고 다음 행인 이순신부터 1로 다시 계산된다.


SELECT name, buseo, basicpay, rownum
FROM tblinsa							-- 1. rownum 할당
ORDER BY basicpay desc;					-- 2. 정렬 : rownum 행도 같이 이동

-- 급여순으로 정렬 및 순위 표시
-- **원하는 순서대로 정렬 후 rownum을 할당하는 방법 > 서브쿼리 사용(***)
SELECT 
	name, buseo, basicpay, rownum, rnum
FROM(
	SELECT name, buseo, basicpay, rownum AS rnum
	FROM tblinsa							
	ORDER BY basicpay DESC) 
WHERE rownum<=3;


-- 급여 5~10등까지
-- 원하는 범위 추출(1이 포함x) > rownum 사용 불가능
-- 1. 내가 원하는 순서대로 정렬
-- 2. 1을 서브쿼리로 묶는다. + rownum(rnum)
-- 3. 2을 서브쿼리로 묶는다. + rnum 사용(***)
SELECT name, buseo, basicpay,rnum, rownum  				--3.
FROM (
			SELECT 										--2.
				name, buseo, basicpay, rownum AS rnum
			FROM(
				SELECT name, buseo, basicpay			--1.
				FROM tblinsa							
				ORDER BY basicpay DESC))		
WHERE rnum >=5 AND rnum <=10;


-- 페이징 > 나눠서보기 > 한번에 20명씩보기 + 이름순으로
--1.
SELECT *
FROM tbladdressbook
ORDER BY name ASC;

--2.
-- *와 컬럼 하나를 추가하고 싶다면 alias 이용하기
SELECT 
	a.*, rownum
FROM (SELECT *
		FROM tbladdressbook
		ORDER BY name ASC) a;

--3.
SELECT *
FROM (
	SELECT 
		a.*, rownum
	FROM (SELECT *
			FROM tbladdressbook
			ORDER BY name ASC) a)
WHERE rownum BETWEEN 1 AND 20;

-- 뷰 사용 > 보다 서브쿼리를 더 많이 이용한다.
CREATE OR REPLACE VIEW vwAddressBook
AS 
SELECT a.*, rownum AS rum
FROM (SELECT *
		FROM tbladdressbook
		ORDER BY name ASC) a;

SELECT *
FROM vwaddressbook
WHERE rum BETWEEN 1 AND 20;


