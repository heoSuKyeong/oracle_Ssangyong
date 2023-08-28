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


