-- ex07_order.sql

/*
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]

	select 컬럼리스트	>> 3. 컬럼 지정(보고 싶은 열만 가져오기) > Projection
	from 테이블		>> 1. 테이블 지정
	where 조건;		>> 2. 조건 지정(보고 싶은 행만 가져오기) > Selection
	order by 정렬기준;	>> 4. 순서(정렬)
	
	order by 절
	- 원본 테이블 정렬하는 것이 아닌 결과 테이블을 정렬하는 것
	- 원본 테이블(오라클 저장된 데이터) > 개발자 접근하지 못하며, 오라클 스스로 관리한다.
	- order by 컬럼명 [ASC|DESC]
	
	case end는 컬럼이 들어갈 수 있는 곳에 항상 들어갈 수 있다.


*/

SELECT *
FROM TBLINSA
ORDER BY BUSEO ASC ; -- 1차 정렬

SELECT *
FROM TBLINSA
ORDER BY BUSEO ASC , JIKWI DESC ; -- 2차 정렬

SELECT *
FROM TBLINSA
ORDER BY BUSEO ASC , JIKWI DESC, BASICPAY DESC ; -- 3차 정렬


SELECT *
FROM TBLINSA 
ORDER BY BASICPAY DESC;

SELECT *
FROM TBLINSA 
ORDER BY IBSADATE DESC;

SELECT name, buseo, jikwi
FROM TBLINSA
ORDER BY 2;		-->> 1 : name, 2 : buseo, 3 : jikwi
				-- 컬럼리스트의 컬럼 순서 > 유지보수에 취약하므로 비권장함

-- 가공된 값의 정렬
-- 급여를 가장 많이 받는 직원 순으로 가져오시오.
SELECT *
FROM TBLINSA 
ORDER BY (BASICPAY+SUDANG) DESC;

-- 직위순으로 정렬 : 부장 > 과장 > 대리 > 사원
SELECT name, jikwi,
	CASE 
		WHEN JIKWI = '사원' THEN 1
		WHEN JIKWI = '대리' THEN 2
		WHEN JIKWI = '과장' THEN 3
		WHEN JIKWI = '부장' THEN 4
	END AS rank
FROM TBLINSA 
ORDER BY rank DESC ;

SELECT name, jikwi
FROM TBLINSA 
ORDER BY CASE 
		WHEN JIKWI = '사원' THEN 1
		WHEN JIKWI = '대리' THEN 2
		WHEN JIKWI = '과장' THEN 3
		WHEN JIKWI = '부장' THEN 4
	END DESC ;

-- 직원: 남자 > 여자
SELECT name, ssn
FROM TBLINSA 
ORDER BY CASE
		WHEN ssn LIKE '%-1%' THEN 1
		WHEN ssn LIKE '%-2%' THEN 2
	END ;
	

-- 남자 직원만 가져오기
SELECT *
FROM TBLINSA 
WHERE CASE 
		WHEN ssn LIKE '%-1%' THEN 1
		WHEN ssn LIKE '%-2%' THEN 2
	 END = 1;
	

