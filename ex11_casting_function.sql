-- ex11_casting_function.sql
/*
형변환 함수
- (int) num

1. to_char(숫자) : 숫자 > 문자 (암시적 형변환 가능)
2. to_char(날짜) : 날짜 > 문자***
3. to_number(문자) : 문자 > 숫자 (암시적 형변환 가능)
4. to_date(문자) : 문자 > 날짜***

1. to_char(숫자 , [형식문자열])
형식 문자열 구성요소
a. 9 : 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 스페이스로 치환	> %5d
b. 0 : 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 0으로 치환		> %05d
c. $ : 통화 기호 표현
d. L : 통화 기호 표현(Locale)
e. . : 소수점
f. , : 천단위 표기
*/

SELECT
	weight,
	to_char(weight),
	length(weight),			-- 암시적 형변환
	substr(weight, 1,1),	-- 암시적 형변환
	weight||'kg'
FROM tblcomedian;

SELECT
	weight,
	'@'||to_char(weight)||'@',
	'@'||to_char(weight, '99999')||'@',
	'@'||to_char(-weight, '99999')||'@',
	'@'||to_char(weight, '00000')||'@',
	'@'||to_char(-weight, '00000')||'@'
FROM tblcomedian;

SELECT
	100,
	to_char(100, '$999'),
	to_char(100, 'L999')
FROM dual;

SELECT
	to_char(100, '$999'),
	to_char(100, 'L999'),
	1234567.89,
	to_char(1234567.89, '9,999,999'),
	ltrim(to_char(567.89, '9,999,999.9')),		--최대길이
	to_char(123456789123456.789, '9,999,999.9')	--공간이 부족하여 에러남
FROM dual;

/*
2. to_char(날짜) : 날짜 > 문자***
	- char to_char(컬럼, 형식문자열)
	
	형식문자열 구성요소
	a. yyyy
	b. yy
	c. month
	d. mm
	f. day
	g. dy
	h. ddd
	i. dd
	j. d
	k. hh
	l. hh24
	m. mi
	n. ss
	o. am(pm)

*/

SELECT 
	sysdate,
	to_char(sysdate),
	to_char(sysdate, 'yyyy'),		--년(4자리)
	to_char(sysdate, 'yy'),			--년(2자리)
	to_char(sysdate, 'month'),		--월(풀네임)
	to_char(sysdate, 'mon'),		--월(약어)
	to_char(sysdate, 'mm'),			--월(2자리)
	to_char(sysdate, 'day'),		--요일(풀네임) : 화요일
	to_char(sysdate, 'dy'),			--요일(약어) : 화
	to_char(sysdate, 'ddd'),		-- 일(올해의 며칠)
	to_char(sysdate, 'dd'),			-- 일(이번달의 며칠)
	to_char(sysdate, 'd')			-- 일(이번주의 며칠) > 요일(숫자 버전)
FROM dual;

SELECT 
	sysdate,
	to_char(sysdate, 'hh'),			-- 시(12시간 체계)
	to_char(sysdate, 'hh24'),		-- 시(24시간 체계)
	to_char(sysdate, 'mi'),			-- 분
	to_char(sysdate, 'ss'),			-- 초
	to_char(sysdate, 'am'),			-- 오전/오후 pm과통일함
	to_char(sysdate, 'pm')			-- 오전/오후 am과통일함
FROM dual;

-- 암기~~!!!!!!!!!!!!!
SELECT
	sysdate,
	to_char(sysdate, 'yyyy-mm-dd'),
	to_char(sysdate, 'hh24:mi:ss'),
	to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),
	to_char(sysdate, 'day am hh:mi:ss')
FROM dual;


SELECT
	name,
	to_char(ibsadate, 'yyyy-mm-dd') AS ibsadate,
	to_char(ibsadate, 'day') AS DAY,
	CASE
		WHEN to_char(ibsadate, 'd') IN ('1','7') THEN '휴일입사'
		ELSE '평일입사'
	END
FROM tblinsa;

-- 요일별 입사 인원수
SELECT
	count(CASE
		WHEN to_char(ibsadate, 'd') = '1' THEN 1
	END )AS 일요일,
	count(decode(to_char(ibsadate, 'd'), 2, 1)) AS 월요일,
	count(decode(to_char(ibsadate, 'd'), 3, 1)) AS 화요일,
	count(decode(to_char(ibsadate, 'd'), 4, 1)) AS 수요일,
	count(decode(to_char(ibsadate, 'd'), 5, 1)) AS 목요일,
	count(decode(to_char(ibsadate, 'd'), 6, 1)) AS 금요일,
	count(decode(to_char(ibsadate, 'd'), 7, 1)) AS 토요일
FROM tblinsa;

--SQL에는 날짜 상수(리터럴)이 없다.

-- 입사날짜 > 2000년 이후
SELECT * FROM tblinsa WHERE ibsadate >= '2000-01-01'; --날짜 상수(리터럴)가 아닌 암시적 형변환된 문자열이다.

-- 입사날짜 > 2000년도
SELECT * 
FROM tblinsa 
WHERE ibsadate > '2000-01-01' AND ibsadate <= '2000-12-31';		--오답, 시간이 0으로 맞춰져 있음

SELECT * 
FROM tblinsa 
WHERE ibsadate > to_date('2000-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss') 
	AND ibsadate <= to_date('2000-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss') ;

SELECT *
FROM tblinsa
WHERE to_char(ibsadate, 'yyyy')='2000';


-- 3. to_number(문자)
SELECT
	'123' * 2,	 --암시적 형변환
	to_number('123') * 2
FROM dual;

-- 4. date to_date(문자, 형식문자열)
SELECT
	'2023-08-29', -- 자료형 > 문자
	to_date('2023-08-29'),
	to_date('2023-08-29', 'yyyy-mm-dd')	,	-- 'yyyy-mm-dd' 생략 가능
	to_date('20230809'),
	to_date('20230809', 'yyyymmdd'),
	to_date('2023/08/09'),
	to_date('2023-08-29 15:28:39', 'yyyy-mm-dd hh24:mi:ss')		-- 시간은 반드시 형식 문자열 기입
FROM dual;

