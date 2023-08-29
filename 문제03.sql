-- 문제03.sql



-- 집계함수 > count()
SELECT *
FROM tblcountry;


-- 1. tblCountry. 아시아(AS)와 유럽(EU)에 속한 나라의 개수?? -> 7개
SELECT count(*)
FROM tblcountry
WHERE continent IN ('AS', 'EU');

-- 2. 인구수가 7000 ~ 20000 사이인 나라의 개수?? -> 2개
SELECT count(*)
FROM tblcountry
WHERE population BETWEEN 7000 AND 20000 ;


-- 3. hr.employees. job_id > 'IT_PROG' 중에서 급여가 5000불이 넘는 직원이 몇명? -> 2명
SELECT count(*)
FROM employees
WHERE job_id = 'IT_PROG' AND salary>=5000;    


-- 4. tblInsa. tel. 010을 안쓰는 사람은 몇명?(연락처가 없는 사람은 제외) -> 42명
SELECT count(*)
FROM tblInsa
WHERE tel NOT LIKE '010-%' ;   
    

-- 5. city. 서울, 경기, 인천 -> 그 외의 지역 인원수? -> 18명
SELECT count(*)
FROM tblInsa
WHERE city NOT IN ('서울','경기','인천');
    

-- 6. 여름태생(7~9월) + 여자 직원 총 몇명? -> 7명
SELECT count(*)
FROM tblInsa
WHERE ssn LIKE '%-2%' AND substr(ssn, 3,2) BETWEEN '07' AND '09';

-- 7. 개발부 + 직위별 인원수? -> 부장 ?명, 과장 ?명, 대리 ?명, 사원 ?명
SELECT
	count(decode(jikwi, '부장', 1)) AS 부장,
	count(decode(jikwi, '과장', 1)) AS 과장,
	count(decode(jikwi, '대리', 1)) AS 대리,
	count(decode(jikwi, '사원', 1)) AS 사원
FROM tblInsa
WHERE buseo = '개발부';

