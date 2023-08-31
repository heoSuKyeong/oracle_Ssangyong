-- ex18_groupby.sql
/*
	GROUP BY 목적 : 그룹별 통계값을 구하기 위해서!! > 집계 함수과 같이 사용해야 한다.
  
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]

	select 컬럼리스트	>> 4. 컬럼 지정(보고 싶은 열만 가져오기) > Projection
	from 테이블			>> 1. 테이블 지정
	where 조건;			>> 2. 조건 지정(보고 싶은 행만 가져오기) > Selection
	group by 기준		>> 3. (레코드)그룹을 나눈다.
	order by 정렬기준;	>> 5. 순서(정렬)

*/

-- tblInsa 부서별 평균 급여
SELECT * FROM tblinsa;

SELECT round(avg(basicPay)) 
FROM tblinsa;	-- 전체 60명의 평균 급여

SELECT DISTINCT buseo
FROM tblinsa;

SELECT round(avg(basicPay)) 
FROM tblinsa
WHERE buseo = '총무부';


SELECT 
	buseo, 
	count(*) AS 부서별인원수,
	round(avg(basicpay)) AS 부서별평균급여,
	sum(basicpay) AS 부서별지급액,
	max(basicpay) AS 부서내최고급여,
	min(basicpay) AS 부서내최저급여
FROM tblinsa
GROUP BY buseo;


SELECT
	count(decode(gender, 'm', 1)) AS 남자수,
	count(decode(gender, 'f', 1)) AS 여자수
FROM tblcomedian;

SELECT
	gender,
	count(*)
FROM tblcomedian
GROUP BY gender;

SELECT 
	jikwi,
	count(*)
FROM tblinsa
GROUP BY jikwi;

-- ORA-00979: not a GROUP BY expression
-- group by 사용시 : select 컬럼리스트에 일반 컬럼 사용 불가
-- 										 집계함수와 group by 컬럼 만 가능하다
SELECT *
FROM tblinsa
GROUP BY buseo;


-- 다중 그룹
SELECT
	buseo, jikwi,
	count(*)
FROM tblinsa
GROUP BY buseo, jikwi
ORDER BY buseo, jikwi;


-- 급여 구간별 그룹 : 100만원 이하, 100~200만원, 200만원 이상
SELECT 
	basicpay,
	count(*)
FROM tblinsa
GROUP BY basicpay;

SELECT 
	--basicpay,
	(floor(basicpay / 1000000)+1)*100 ||'만원 이하',
	count(floor(basicpay / 1000000))
FROM tblinsa
GROUP BY floor(basicpay / 1000000)
ORDER BY floor(basicpay / 1000000);


-- tblInsa. 남/여자 직원수
SELECT
	substr(ssn, 8, 1),
	decode(substr(ssn, 8, 1), '1', '남자', '2', '여자') AS 성별,
	count(*)
FROM tblinsa
GROUP BY substr(ssn, 8, 1);


SELECT
	count(CASE
		WHEN completedate IS NOT NULL THEN 1
	END),
	count(CASE
		WHEN completedate IS NULL THEN 1
	END)
FROM tbltodo;

-- 그룹화할 공통적이 컬럼이 없음 > case when 으로 공통 컬럼을 만들어줌
SELECT 
	CASE
		WHEN completedate IS NOT NULL THEN 1
		ELSE 2
	END,
	count(*)
FROM tbltodo
GROUP BY CASE
		WHEN completedate IS NOT NULL THEN 1
		ELSE 2
	END;


SELECT 
	CASE
		WHEN completedate IS NOT NULL THEN '완료'
		ELSE '미완'
	END AS 완료여부,
	count(*)
FROM tbltodo
GROUP BY CASE
		WHEN completedate IS NOT NULL THEN '완료'
		ELSE '미완'
	END;

------------------------------------------------------------------------------
/*
	
	HAVING
	
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]

	select 컬럼리스트	>> 5. 컬럼 지정(보고 싶은 열만 가져오기) > Projection
	from 테이블			>> 1. 테이블 지정
	where 조건;			>> 2. 조건 지정(레코드에 대한 조건 - 개인조건) > Selection
	group by 기준		>> 3. (레코드)그룹을 나눈다.
	having 조건			>> 4. 조건 지정(그룹에 대한 조건 - 그룹조건 >> 집계함수에 대해 조건)
	order by 정렬기준;	>> 6. 순서(정렬)
*/

SELECT
	count(*)
FROM tblinsa
WHERE basicpay > = 1500000;

SELECT							--4. 각 그룹별 집계함수 실행
	buseo,
	round(avg(basicpay))
FROM tblinsa					--1. 60명의 데이터를 가져온다.
WHERE basicpay >= 1500000		--2. 60명을 대상으로 조건을 검사한다.
GROUP BY buseo;					--3. 2번을 통과한 사람들(27명) 대상으로 그룹을 짓는다.

SELECT
	buseo,
	round(avg(basicpay))
FROM tblinsa								--1. 60명
GROUP BY buseo								--2. 60명 
HAVING round(avg(basicpay)) >= 1500000;		--3. 집합에 대한 조건 > 집게 함수 조건

-- 부서 인원수가 10명이 넘는 부서
SELECT
	buseo, count(*)
FROM tblinsa
GROUP BY buseo
HAVING count(*) >= 10;

-- 부서 과장/부장(where) 인원수가 3명이 넘는(having) 결과
SELECT
	buseo, count(*)
FROM tblinsa
WHERE jikwi IN ('과장','부장')
GROUP BY buseo
HAVING count(*)>=3;


-- job_id 그룹을 통계
SELECT 
	job_id,
	count(*) AS 인원수,
	round(avg(salary)) AS 평균급여
FROM employees
GROUP BY job_id;


-- 시도별 인원수
SELECT 
	substr(address, 1, instr(address, ' ')-1) AS 시도,
	count(*) AS 시도별인원수
FROM tbladdressbook
GROUP BY substr(address, 1, instr(address, ' ')-1)
ORDER BY 시도별인원수;


-- 부서별 / 직급별 인원수를 가져오시오.
-- 1
SELECT
	buseo AS 부서명,
	count(*) AS 총인원,
	count(decode(jikwi, '부장', 1)) AS 부장,
	count(decode(jikwi, '과장', 1)) AS 과장,
	count(decode(jikwi, '대리', 1)) AS 대리,
	count(decode(jikwi, '사원', 1)) AS 사원
FROM tblinsa
GROUP BY buseo;

-- 2
SELECT
	buseo AS 부서명,
	jikwi,
	count(*) AS 총인원
FROM tblinsa
GROUP BY buseo, jikwi
ORDER BY buseo, jikwi;


/*
rollup()
- group by의 집계 결과를 좀 더 자세하게 반환한다.
- 그룹별 중간 통계
*/

SELECT 
	buseo,
	count(*),
	sum(basicpay),
	round(avg(basicpay)),
	max(basicpay),
	min(basicpay)
FROM tblinsa
GROUP BY ROLLUP(buseo);

SELECT 
	buseo,
	jikwi,
	count(*),
	sum(basicpay),
	round(avg(basicpay)),
	max(basicpay),
	min(basicpay)
FROM tblinsa
GROUP BY ROLLUP(buseo, jikwi);

/*
cube()
- group by의 집계 결과를 좀 더 자세하게 반환한다.
- 그룹별 중간 통계
*/
SELECT 
	buseo,
	count(*),
	sum(basicpay),
	round(avg(basicpay)),
	max(basicpay),
	min(basicpay)
FROM tblinsa
GROUP BY cube(buseo);

SELECT 
	buseo,
	count(*),
	sum(basicpay),
	round(avg(basicpay)),
	max(basicpay),
	min(basicpay)
FROM tblinsa
GROUP BY cube(buseo, jikwi);

-- rollup > 다중 그룹 컬럼 > 수직관계(전체인원 총계, 부서별 총계, 마지막 그룹 총계는 없음) 
-- cube > 다중 그룹 컬럼 > 수평관계(전체인원 총계, 부서별 총계, 직위별 총계)



