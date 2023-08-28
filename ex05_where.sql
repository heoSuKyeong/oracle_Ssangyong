-- ex05_where.sql


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

	where절
	- 레코드(행)을 검색한다.
	- 원하는 행만 추출하는 역할
	

*/
SELECT *
FROM TBLCOUNTRY ;

SELECT * 
FROM TBLCOUNTRY
WHERE CONTINENT = 'AS';

SELECT *
FROM TBLCOUNTRY
WHERE name = '대한민국';

SELECT *
FROM TBLCOUNTRY
WHERE name = '대한민국' OR name = '미국';

SELECT *
FROM TBLCOUNTRY
WHERE POPULATION >= 5000;

-- tblComedian
SELECT *
FROM TBLCOMEDIAN ;

-- 1. 몸무게가 60kg 이상이고, 키가 170cm 미만인 사람을 조회하시오.
SELECT *
FROM TBLCOMEDIAN
WHERE weight>=60 AND height<170;

-- 2. 몸무게가 70kg 이하인 여자만 조회하시오
SELECT *
FROM TBLCOMEDIAN
WHERE weight<=70 AND GENDER ='f';

-- tblInsa
SELECT * FROM TBLINSA ;

-- 3. 부서가 '개발부'이고, 급여(basicPay)가 150만원 이상 받은 직원을 조회하시오.
SELECT * FROM TBLINSA
WHERE buseo='개발부' AND basicPay >= 1500000;

-- 4. 급여(basicPay) + 수당(sudang)을 합한 금액이 200만원 이상 받은 직원을 조회하시오.
SELECT name, buseo, basicPay, sudang, (basicPay+sudang) FROM TBLINSA
WHERE (basicPay+sudang) >= 2000000;


SELECT * FROM TBLINSA where CITY = '서울';
SELECT * FROM TBLINSA where 1=1;		-- 조건절에 반드시 컬럼이 포함되지 않아도 된다.

/*
	between
	- where절에서 사용 > 조건으로 사용
	- 컬럼명 between 최솟값 and 최댓값
	- 범위 조건문
	- 가독성 향상을 위해 사용
	- 최솟값, 최댓값 포함

*/
SELECT * FROM TBLINSA 
WHERE BASICPAY >= 1000000 AND BASICPAY <= 1200000;

SELECT * FROM TBLINSA 
WHERE BASICPAY BETWEEN 1000000 AND 1200000;

/*
비교 연산
1. 숫자형
SELECT * FROM TBLINSA 
WHERE BASICPAY >= 1000000 AND BASICPAY <= 1200000;

2. 문자형(문자코드)
SELECT * FROM TBLINSA WHERE name > '이순신';	-- 자바의 compareTo("이순신")

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME >= 'J' AND FIRST_NAME <= 'L';

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME BETWEEN 'J' AND 'L';

3. 날짜시간형
SELECT * FROM TBLINSA
WHERE IBSADATE >= '2000-01-01';

-- 2020-01-01 ~ 2000-12-31
SELECT * FROM TBLINSA
WHERE IBSADATE BETWEEN '2000-01-01' AND '2000-12-31';

*/

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME >= 'J' AND FIRST_NAME <= 'L';

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME BETWEEN 'J' AND 'L';

SELECT * FROM TBLINSA
WHERE IBSADATE >= '2000-01-01';

-- 2020-01-01 ~ 2000-12-31
SELECT * FROM TBLINSA
WHERE IBSADATE BETWEEN '2000-01-01' AND '2000-12-31';

/*
in
- where절에서 사용 > 조건으로 사용
- 열거형 조건
- 컬럼명 in (값, 값, 값...)



*/

-- tblInsa. 개발부 + 총무부 직원
SELECT * FROM TBLINSA 
WHERE BUSEO = '개발부' OR BUSEO = '총무부';

SELECT * FROM TBLINSA 
WHERE BUSEO IN ('개발부', '총무부');

-- 서울 or 인천 + 과장 or 부장 + 급여(250~300)
SELECT * FROM TBLINSA 
WHERE CITY IN ('서울','인천') AND JIKWI IN('과장','부장') AND BASICPAY BETWEEN 2500000 AND 3000000;

-- between, in > 비교연산자 보다 느리다 > 사용 금지하는 회사도 있다. > 단, 10만건 이하에선 사용해도 괜찮다.(가독성)

/*

   like
   - where절에서 사용 > 조건으로 사용
   - 패턴 비교
   - 컬럼명 like '패턴 문자열'
   - 정규 표현식의 초간단 버전
   
   패턴 문자열 구성 요소
   1. _: 임의의 문자 1개(.)
   2. %: 임의의 문자 N개 0~무한대(.*)
*/

-- 김oo
SELECT * FROM TBLINSA WHERE name LIKE '김__';
SELECT * FROM TBLINSA WHERE name LIKE '_길_';

SELECT * FROM TBLINSA WHERE name LIKE '김%';		-- 김으로 시작하는 모든 문자
SELECT * FROM TBLINSA WHERE name LIKE '%길%';	-- 길이 포함된 모든 문자
SELECT * FROM TBLINSA WHERE name LIKE '%수';

-- 여자만 조회
SELECT * FROM TBLINSA WHERE ssn LIKE '______-2______';
SELECT * FROM TBLINSA WHERE ssn LIKE '%-2%';

/*
	RDMS에서의 null
	- 컬럼값(셀)이 비어있는 상태
	- null 상수 제공
	- 대부분의 언어는 null은 연산의 대상이 될 수 없다.(*****)
	
	null 조건
	- where절에서 사용
	- 컬럼명 is null
*/

-- 인구수가 미지개된 나라
SELECT * FROM TBLCOUNTRY;
-- SELECT * FROM TBLCOUNTRY WHERE 1 = 2 와 같다
SELECT * FROM TBLCOUNTRY WHERE POPULATION = null;	-- null을 대입한 순간 결과는 false로 변한다.
SELECT * FROM TBLCOUNTRY WHERE POPULATION IS NULL;

-- 인구수가 기재된 나라
SELECT * FROM TBLCOUNTRY WHERE POPULATION IS NOT NULL;	-- 더 많이 사용함
SELECT * FROM TBLCOUNTRY WHERE NOT POPULATION IS NULL;


-- 도서관 > 대여 테이블(컬럼 : 대여날짜, 반납날짜)
-- 아직 반납을 안한 사람은?
SELECT * FROM 도서대여 WHERE 반납날짜 IS NULL ;
-- 반납이 완료된 사람은?
SELECT * FROM 도서대여 WHERE 반납날짜 IS NOT NULL ;

/*

강의실 <-> 집
- 스크립트 파일(*.sql)
- 규모가 큰 경우) 백업/복구 > 일반적이진 않다.


*/
