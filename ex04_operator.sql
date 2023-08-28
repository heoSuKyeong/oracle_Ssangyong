-- ex04_operator.sql
/*
연산자, Operator
1. 산술 연산자 : +, -, *, /
    - % 없음 > 함수로 제공(mod())
    
2. 문자열 연산자(concat): ||
	
3. 비교 연산자 : >, >=, <, <=, =, <>
	- SQL에는 boolean이 없다 > 명시적으로 표현 불가능하여, 조건이 필요한 상황에서 내부적으로 사용한다.(조건절에서 사용)
	- 논리값 반환
	- 컬럼 리스트에서 사용 불가
	- 조건절에서 사용
	
4. 논리 연산자 : and, or, not
	- 논리값 반환
	- 컬럼 리스트에서 사용 불가
	- 조건절에서 사용

5. 대입 연산자 : =
	- 컬럼 = 값 (어떤 값을 컬럼에 대입할 때 사용)
	- update문 (그 외에 잘 사용하지 않는다)

6. 3항 연산자
	- 없음
	
7. 증감 연산자
	- 없음

8. SQL 연산자
	- 자바 연산자(자바에서만 쓰는 연산자) : instanceof, typeof ...
	- in, between, like, is 등...(부르는 표현이 다양함 > oo절, oo구...)



*/

select population, 
        area, 
        population + area,
        population - area,
        population * area,
        population / area
from tblcountry;

-- name + couple
SELECT name, couple , name || couple FROM TBLMEN ;

SELECT height, weight 
FROM TBLMEN 
WHERE height > weight;


SELECT name, age FROM tblMen;

/*

컬럼의 별칭(Alias)
- 되도록 가공된 컬럼에 적용
- 함수 결과에 적용
- 컬럼명이 식별자로 적합하지 않을 때 사용 > 적합한 식별자로 수정
- 식별자로 사용 불가능한 것들은 ""안에 넣으면 적용이 가능하다
SELECT name AS 이름, age, age-1 AS 나이 FROM tblMen;
 * 
 */

SELECT name, 
	age, 
	age-1 AS 나이,
	length(name) AS 길이,
	couple AS "여자 친구"		--"" 안에 공백을 넣으면 허용이 된다.(되도록 공백 포함한 식별자는 지양하기)
	
FROM tblMen;

/*
테이블 별칭
- 편하게 사용하기 위해 
- 가독성 향상


 */

SELECT * FROM TBLMEN t;

SELECT name, age, height, weight, couple FROM tblMen;

SELECT tblMen.name, tblMen.age, tblMen.height, tblMen.weight, tblMen.couple FROM tblMen;

SELECT t.name, t.age, t.height, t.weight, t.couple FROM tblMen t;
