-- ex08_agrregation_function.sql

/*

메서드 vs 함수
메서드(Method)
- 클래스 안에서 정의한 함수

함수(Function)
- 어딘가에 소속되어 있지않고, 독립적으로 존재
1. 내장 함수(Built-in Function)
2. 사용자 정의 함수(User Functino) > ANSI-SQL에서는 생성 불가, PL/SQL에서는 가능하다

집계 함수, Aggregation Function(*************)
- 사용하는건 쉽지만, 뒤에 나오는 수업과 결합하면 꽤 어렵다.
	1. count()
	2. sum()
	3. avg()
	4. max()
	5. min()

1. count()
- 결과테이블의 레코드 수를 반환한다.
- number count(컬럼명)
- null 값은 카운트에서 제외된다.(*****)
*/

-- tblcountry. 총 몇개국?
SELECT * FROM tblcountry;
SELECT count(*) FROM tblcountry;			-- 모든 레코드, 일부 컬럼에 null이 있어도 무관하다.
SELECT count(name) FROM tblcountry;
SELECT count(population) FROM tblcountry;	-- null값을 가지고 있어 전체에서 -1개 차이가 난다.

-- tblinsa. 모든 직원수
SELECT count(*) FROM tblinsa;
-- 연락처가 있는 직원수
SELECT count(tel) FROM tblinsa;
-- 연락처가 없는 직원수?
SELECT count(*) - count(tel) FROM tblinsa;
SELECT count(*) FROM tblinsa WHERE tel IS NULL;

-- 어떤 부서들
SELECT DISTINCT buseo FROM tblinsa;
SELECT count(DISTINCT buseo) FROM tblinsa;

-- tblcomedian. 남자,여자 수
SELECT count(*) FROM tblcomedian WHERE gender = 'm';
SELECT count(*) FROM tblcomedian WHERE gender = 'f';

-- 남자수 + 여자수 > 1개의 테이블로 가져오시오(*****************)> 자주 사용되는 패턴
SELECT 
	count(
	CASE
		WHEN gender = 'm' THEN 1
	END) AS man, 
	count(
	CASE
		WHEN gender = 'f' THEN 1
	END) AS female
FROM tblcomedian;

-- 부서별 인원수
SELECT
	count(CASE
		WHEN buseo = '기획부' THEN 'o'
	END) AS 기획부 ,
	count(CASE
		WHEN buseo = '총무부' THEN 'o'
	END) 총무부,
	count(CASE
		WHEN buseo = '개발부' THEN 'o'
	END) 개발부,
	count(*) AS 전체인원수,
	count(CASE
		WHEN buseo NOT IN ('기획부','총무부','개발부') THEN 'o'
	END
	) AS 나머지
FROM tblinsa;

/*
2. sum()
	- 해당 컬럼의 합을 구한다.
	- number sum(컬럼명)
	- 해당 컬럼이 숫자형만 가능

 */

SELECT * FROM tblcomedian;
SELECT sum(height), sum(weight) FROM tblcomedian;

SELECT
	sum(basicpay) AS "지출 급여 합",
	sum(sudang) AS "지출 수당 합",
	sum(basicpay) + sum(sudang) AS "총 지출",
	sum(basicpay + sudang) AS "총 지출"
FROM tblinsa;

SELECT sum(*) FROM tblinsa;

/*
3. avg()
	- 해당 컬럼의 평균값을 구한다.
	- number avg(컬럼명)
	- 숫자형만 적용 가능	
*/

-- tblInsa. 평균 급여
SELECT sum(basicpay)/count(*) FROM tblinsa;
SELECT avg(basicpay) FROM tblinsa;


-- tblCountry, 평균 인구수
SELECT avg(population) FROM tblcountry;				--15588(null 값 연산에서 제외)
SELECT sum(population)/count(*) FROM tblcountry;	--14475 
SELECT sum(population)/count(population) FROM tblcountry;	--15588
SELECT count(population),count(*) FROM tblcountry;


-- 성과급 지급 < 1팀공로
-- 1. 균등 지급 : 총 지급액 / 모든 직원수 = sum()/count(*)
-- 2. 차등 지급 : 총 지급액 / 1팀 직원수 = sum()/count(1팀) = avg()

/*
4. max()
	- object max(컬럼명)
	- 최댓값 반환
5. min()
	- object min(컬럼명)
	- 최솟값 반환
	
- 숫자형, 문자형, 날짜형 모두 적용 가능
*/

SELECT max(sudang), min(sudang) FROM tblinsa;		-- 숫자형
SELECT max(name), min(name) FROM tblinsa;			-- 문자형
SELECT max(ibsadate), min(ibsadate) FROM tblinsa;	-- 날짜형


SELECT
	count(*) AS 직원수,
	sum(basicpay) AS 총급여합,
	avg(basicpay) AS 평균급여,
	max(basicpay) AS 최고급여,
	min(basicpay) AS 최저급여
FROM tblinsa;


-- 집계 함수 사용 주의점

-- 1. ORA-00937: not a single-group group function
-- 컬럼 리스트에서는 집계함수와 일반컬럼을 동시에 사용할 수 없다.

SELECT count(*) FROM tblinsa;	-- 직원수
SELECT name FROM tblinsa;		-- 직원명

-- 요구사항) 직원 이름과 총직원수를 동시에 가져오시오 > 불가능하다
SELECT count(*), name FROM tblinsa;

-- 2. ORA-00934: group function is not allowed here
-- where절에서 집계함수를 사용할 수 없다.
-- where절은 개인데이터에 접근해서 조건 비교하는 절이므로 집계함수를 가지고 있을 수 없다.

-- 요구사항) 평균 급여보다 더 많이 받은 직원
SELECT avg(basicpay) FROM tblinsa;
SELECT * FROM tblinsa WHERE basicpay>=1556526;
SELECT * FROM tblinsa WHERE basicpay>=avg(basicpay);


