-- ex12_datetime_function.sql
/*
날짜 시간 함수

sysdate
- 현재 시스템의 시각을 반환
- (자바)Calendar.getInstance()
- date sysdate

*/

SELECT sysdate FROM dual;

/*
날짜 연산
1. 시각 - 시각 = 시간
2. 시각 + 시간  = 시각
3. 시각 - 시간 = 시각
*/

-- 1. 시각 - 시각 = 시간(일)
SELECT
	name, ibsadate,
	round(sysdate - ibsadate) AS 근무일수,	--9088.6
	round((sysdate-ibsadate)/365) AS 근무년수, 	--사용금지!
	round((sysdate-ibsadate)*24) AS 근무시수,
	round((sysdate-ibsadate)*24*60) AS 근무분수,
	round((sysdate-ibsadate)*24*60*60) AS 근무초수
FROM tblinsa;

SELECT 
	title,
	adddate,
	completedate,
	round((completedate - adddate)*24) AS 실행하기까지걸린시간
FROM tbltodo
WHERE completedate IS NOT NULL
ORDER BY round((completedate - adddate)*24) DESC;


-- 2. 시각 + 시간 = 시각
-- 3. 시각 - 시간 = 시각
SELECT
	sysdate,
	sysdate + 100 AS a100일후,
	sysdate - 100 AS a100일전,
	sysdate + (3/24) AS "3시간후",
	sysdate - (5/24) AS "5시간전",
	sysdate + (30/60/24) AS "30분 뒤"
FROM dual;


/*
시각 - 시각 = 시간(일) > 일은 시,분,초로 환산 가능
						> 하지만 월, 년으로 환산 불가능

시각 + 시간(일) = 시각 > 일,시,분,초 가능
						> 월, 일 불가능


months_between()
- number months_between(date, date)
- 시각 - 시각 = 시간(월)

**/

SELECT
	name,
	round(sysdate - ibsadate) AS 근무일수,
	round(months_between(sysdate, ibsadate)) AS 근무월수,
	round(months_between(sysdate, ibsadate) / 12) AS 근무년수
FROM tblinsa;

/*
add_months()
- date add_months(date, 시간)
- 시각 + 시간(월) = 시각
*/

SELECT
	sysdate,
	add_months(sysdate, 3) AS 삼개월뒤,
	add_months(sysdate, -2) AS 두달전,
	add_months(sysdate, 5*12) AS 오년뒤
FROM dual;

/*
시각 - 시각
1. 일, 시, 분, 초 > 연산자(-)로 연산
2. 월, 년 > months_between()

시각 +(-) 시간
1. 일, 시, 분, 초 > 연산자(+,-)
2. 월, 년 > add_months()

*/

SELECT
	sysdate,
	last_day(sysdate)	-- 해당 날짜 포함된 마지막 날짜 반환(해당월이 며칠까지) > 윤년일 때
FROM dual;
