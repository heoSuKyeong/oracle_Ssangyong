-- ex19_subquery.sql
/*

SQL
1. Main Query, 일반 쿼리
- 하나의 문장안에 하나의 SELECT(INSERT, UPDATE, DELETE)로 되어 있는 쿼리


2. Sub Query, 서브 쿼리(부속 질의)
- 하나의 문장안에 (SELECT,INSERT, UPDATE, DELETE) 또 다른 문장(SELECT)이 들어있는 쿼리
- (가장 많이 사용)하나의 SELECT 안에 또 다른 SELECT 문이 들어있는 쿼리
- 삽입 위치 : SELECT절, FROM절, WHERE절, GROUP BY절, HAVING절, ORDER BY절 > 컬럼(값)을 넣을 수 잇는 곳이면 서브쿼리 삽입 가능

*/

-- tblCountry. 인구수가 가장 많은 나라의 이름? 중국
SELECT max(population)
FROM tblcountry;

SELECT name
FROM tblcountry
WHERE population IN(SELECT max(population)
					FROM tblcountry);


-- tblComedian. 몸무게가 가장 많이 나가는 사람의 이름?
SELECT *
FROM tblcomedian
WHERE weight = (SELECT max(weight) FROM tblcomedian);


-- tblInsa. 평균 급여보다 많이 받는 직원들
SELECT *
FROM tblinsa
WHERE basicpay >= (SELECT avg(basicpay) FROM tblinsa);


-- 남자 166cm의 여자친구 키
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT *
FROM tblwomen
WHERE couple = (SELECT name FROM tblmen WHERE height=166);

/*
서브쿼리 삽입 위치
1. 조건절(where) > 비교값으로 사용
a. 반환값이 단일값(1행 1열) 반환 > 상수 취급
b. 반환값이 다중값(n행 1열) 반환 > 열거형 비교 > in 사용
c. 반환값이 다중값(1행 n열) 반환 > 그룹 비교 > n컬럼 : n컬럼
d. 반환값이 다중값(n행 n열) 반환 > in+그룹비교

*/

-- b
-- 급여가 260만원 이상 받는 직원이 근무하는 부서의 직원 명단을 가져오시오
SELECT *
FROM tblinsa
WHERE buseo in (SELECT buseo FROM tblinsa WHERE basicpay >= 2600000);

SELECT *
FROM tblinsa

WHERE buseo IN ('총무부', '기획부');


-- '홍길동'과 같은 지역, 같은 부서인 직원 명단을 가져오시오.
SELECT *
FROM tblinsa
WHERE city IN (SELECT city FROM tblinsa WHERE name = '한석봉') 
	AND buseo IN (SELECT buseo FROM tblinsa WHERE name = '홍길동');

-- c
SELECT *
FROM tblinsa
WHERE (city, buseo) = (SELECT city, buseo FROM tblinsa WHERE name = '홍길동');

-- d
-- 급여가 260만원 이상 받은 직원과 같은 부서, 같은 지역의 직원 명단
SELECT *
FROM tblinsa
WHERE (buseo,city) in (SELECT buseo, city FROM tblinsa WHERE basicpay >= 2600000);


/*
서브쿼리 삽입 위치
1. 조건절(where) > 비교값으로 사용
a. 반환값이 단일값(1행 1열) 반환 > 상수 취급
b. 반환값이 다중값(n행 1열) 반환 > 열거형 비교 > in 사용
c. 반환값이 다중값(1행 n열) 반환 > 그룹 비교 > n컬럼 : n컬럼
d. 반환값이 다중값(n행 n열) 반환 > in+그룹비교

2. 컬럼리스트(select) > 컬럼값(출력값)으로 사용
- 반드시 결과값이 1행 1열이어야 한다. >> '스칼라 쿼리'
- 원자값 반환
a. 정적 쿼리 : 모든 행에 동일한 값을 반환
b. 상관 서브 쿼리(************)
- 외부(메인)쿼리 컬럼을 서브 쿼리 컬럼과 연결
- 서브쿼리 값과 바깥쪽 메인쿼리의 값을 서로 연결
*/

-- a. 정적 쿼리
SELECT
	name, buseo, basicpay,
	(SELECT round(avg(basicpay)) FROM tblinsa) AS avg
FROM tblinsa;

-- ORA-01427: single-row subquery returns more than one row
SELECT
	name, buseo, basicpay,
	(SELECT jikwi FROM tblinsa)
FROM tblinsa;

-- ORA-00913: too many values > 출력하는 컬럼은 4개인데 실제로 가져오는 컬럼은 5개라서 에러가 난다.
SELECT
	name, buseo, basicpay,
	(SELECT jikwi, sudang FROM tblinsa WHERE num = 1001)
FROM tblinsa;

-- b. 상관 서브 쿼리 >> alias를 붙여 사용한다.
SELECT
	name, buseo, basicpay,
	(SELECT round(avg(basicpay)) FROM tblinsa b WHERE b.buseo = a.buseo) AS avg
FROM tblinsa a;

-- 남자(이름,키,몸무게) + 여자친구(이름,키,몸무게)
SELECT 
	name AS 남자이름, 
	height AS 남자키, 
	weight AS 남자몸무게,
	couple AS 여자친구이름,
	(SELECT height FROM tblwomen WHERE couple = a.name) AS 여자친구키,
	(SELECT weight FROM tblwomen WHERE couple = a.name) AS 여자친구몸무게
FROM  tblmen a
ORDER BY name;

/*
서브쿼리 삽입 위치
1. 조건절(where) > 비교값으로 사용
a. 반환값이 단일값(1행 1열) 반환 > 상수 취급
b. 반환값이 다중값(n행 1열) 반환 > 열거형 비교 > in 사용
c. 반환값이 다중값(1행 n열) 반환 > 그룹 비교 > n컬럼 : n컬럼
d. 반환값이 다중값(n행 n열) 반환 > in+그룹비교

2. 컬럼리스트(select) >> '스칼라 쿼리'
- 컬럼값(출력값)으로 사용
- 반드시 결과값이 1행 1열이어야 한다. 
- 원자값 반환
a. 정적 쿼리 : 모든 행에 동일한 값을 반환
b. 상관 서브 쿼리(************)
- 외부(메인)쿼리 컬럼을 서브 쿼리 컬럼과 연결
- 서브쿼리 값과 바깥쪽 메인쿼리의 값을 서로 연결
- 메인 쿼리 > 자식 테이블
- 상관 서브 쿼리 > 메인 테이블

3. from절에서 사용 >> '인라인 뷰(Inline View_'
- 서브쿼리의 결과 테이블을 하나의 테이블이라고 생각하고 메인 쿼리를 실행

*/

SELECT *
FROM (SELECT name, buseo FROM tblinsa);

-- 인라인뷰의 컬럼 별칭은 바깥쪽 메인 쿼리에서 그대로 전달되어 사용가능하다.
SELECT name, gender
FROM (SELECT name , substr(ssn, 1, 8) AS gender FROM tblinsa);

--
SELECT
	name, height, couple,
	(SELECT height FROM tblwomen WHERE name = tblmen.couple) AS 여자키
FROM tblmen
ORDER BY 여자키;


