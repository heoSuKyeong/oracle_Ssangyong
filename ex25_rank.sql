--ex25_rank.sql
/*
순위 함수
- rownum 기반으로 만들어진 함수
1. rank() over(order by 컬럼명 [asc|desc])
2. dense_rank() over(order by 컬럼명 [asc|desc])
3. row_number() over(order by 컬럼명 [asc|desc])


*/

--tblInsa 급여순으로 가져오시오 + 순위표시
SELECT name, buseo, basicpay, rownum
FROM (SELECT name, buseo, basicpay FROM tblinsa ORDER BY basicpay desc);

SELECT
	name, buseo, basicpay,
	rank() over(ORDER BY basicpay desc) AS rnum
FROM tblinsa;

SELECT
	name, buseo, basicpay,
	dense_rank() over(ORDER BY basicpay desc) AS rnum
FROM tblinsa;

SELECT
	name, buseo, basicpay,
	row_number() over(ORDER BY basicpay desc) AS rnum
FROM tblinsa;

-- 급여 5위?
SELECT *
FROM (
	SELECT
		name, buseo, basicpay,
		row_number() over(ORDER BY basicpay desc) AS rnum
	FROM tblinsa)
WHERE rnum = 5;

SELECT *
FROM (
	SELECT
		name, buseo, basicpay,
		dense_rank() over(ORDER BY basicpay desc) AS rnum
	FROM tblinsa)
WHERE rnum = 8;

-- 순위함수 + order by
-- 순위함수 + partition by + order by > 순위 함수 + group by > 그룹별 순위 구하기

SELECT
	name, buseo, basicpay,
	rank() over(PARTITION BY buseo ORDER BY basicpay desc) AS rnum
FROM tblinsa;

-- 각 부서별 최고 급여
SELECT *
FROM (
	SELECT
		name, buseo, basicpay,
		rank() over(PARTITION BY buseo ORDER BY basicpay desc) AS rnum
	FROM tblinsa)
WHERE rnum =1;






