-- ex09_numerical_function.sql
/*
숫자 함수(= 수학 함수)
- Math.xxxx

round()
	- 반올림함수
	- number round(컬럼명) : 정수 반환
	- number round(컬럼명, 소수이하 자릿수) : 실수 반환


*/

SELECT * FROM dual;		-- 시스템 테이블 > 1행 1열 테이블
SELECT sysdate FROM dual;		-- 현재 시간이 필요할 때(임시로 이용하는 테이블)

SELECT
	3.54,
	round(3.54),
	round(3.5432, 1),
	round(3.5432, 0)
FROM dual;

-- 평균급여
SELECT round(avg(basicPay)) FROM tblinsa

/*
floor(), truc()
	- 절삭 함수(내림 함수)
	- number floor(컬럼명) : 정수 반환
	- number trunc(컬럼명) : 정수 반환
	- number trunc(컬럼명, 소수이하 자릿수) : 실수 반환
*/

SELECT
	3.54,
	floor(3.54),
	trunc(3.54),
	trunc(3.5432, 1),
	trunc(3.5432, 0)
FROM dual;

/*
ceil()
	- 무조건 올림 함수
	- number ceil(컬럼명)

*/
SELECT
	3.14,
	ceil(3.14),
	ceil(3.99)
FROM dual;

/*
mod()
	- 나머지 함수
	- number mod(피제수, 제수)

*/
SELECT
	10 / 3,
	floor(10/3) AS 몫,
	mod(10,3) AS 나머지
FROM dual;

-- round(), floor(), ceil(), mod()


SELECT
	abs(10), abs(-10),		-- 절대값
	power(2,2),				-- 2^2
	sqrt(4), sqrt(9)		-- 루트
FROM dual;



