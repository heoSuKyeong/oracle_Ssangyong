-- ex06_column.sql

-- 컬럼리스트에서 할 수 있는 행동
-- select 컬럼 리스트

-- 컬럼 명시
SELECT * FROM TBLINSA ;

-- 연산
SELECT NAME || ' 님' FROM TBLINSA ;

-- 상수
SELECT 100 FROM TBLINSA;

/*
distinct 
- 컬럼 리스트에서 사용
- 중복값 제거
- distinct 컬럼명 > 컬럼 리스트 전체에 붙는다
	>> DISTINCT buseo, name : buseo & name의 중복값을 제거

*/

SELECT DISTINCT continent FROM TBLCOUNTRY ;

-- tblInsa > 어떤 부서가 있습니까
SELECT DISTINCT BUSEO 
FROM TBLINSA ;

SELECT DISTINCT buseo, name
FROM TBLINSA;
GROUP BY buseo

/*
case
- 대부분의 절에서 사용 가능하다.
- 조건문 역할 > 컬럼값 조작
- 조건을 만족하지 못한면 null을 반환(***********)
case
...
end


*/

SELECT 
	LAST||FIRST AS name,
	CASE 
		WHEN GENDER = 'm' THEN '남자'
		WHEN GENDER = 'f' THEN '여자'
	END AS gender
FROM TBLCOMEDIAN ;


SELECT 
	NAME , CONTINENT ,
	CASE 
		WHEN CONTINENT = 'AS' THEN '아시아'
		WHEN CONTINENT = 'EU' THEN '유럽'
		WHEN CONTINENT = 'AF' THEN '아프리카'
		ELSE CAPITAL 
	END continentName
FROM TBLCOUNTRY ;


SELECT 
	LAST||FIRST AS name,
	WEIGHT ,
	CASE 
		WHEN WEIGHT >= 50 AND WEIGHT <= 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM TBLCOMEDIAN ;

SELECT 
	LAST||FIRST AS name,
	WEIGHT ,
	CASE 
		WHEN WEIGHT BETWEEN 50 AND 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM TBLCOMEDIAN ;


SELECT 
	name, JIKWI,
	CASE 
		WHEN JIKWI = '과장' OR JIKWI = '부장' THEN '관리직'
		ELSE '생산직'
	END,
	CASE
		WHEN JIKWI IN ('과장', '부장') THEN '관리직'
		ELSE '생산직'
	END
FROM TBLINSA ;

SELECT 
	NAME , SUDANG ,
	CASE 
		WHEN NAME LIKE '홍%' THEN 50000
		ELSE 0 
	END + SUDANG 
FROM TBLINSA ;

SELECT 
	TITLE ,
	CASE 
		WHEN COMPLETEDATE IS NULL THEN '미완료'
		WHEN COMPLETEDATE IS NOT NULL THEN '완료'
	END AS state
FROM TBLTODO ;

