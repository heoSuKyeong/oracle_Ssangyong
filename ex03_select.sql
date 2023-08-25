-- ex03_select.sql
/*
SQL, Query(질의)

SELECT 문
- DML, DQL
- SQL은 SELECT로 시작해서 SELECT로 끝난다.

    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
    
    <기본>
    SELECT column_list  -- 원하는 컬럼을 지정만 가져와라.
    FROM table_name     -- 데이터소스. 어떤 테이블로부터 데이터를 가져와라
    
    각 절의 순서(*****)
    2. SELECT
    1. FROM

*/

select * 
from tbltype;

-- 테이블 구조(=스키마) > 명세서 확인
desc employees;

select * from employees;

select first_name from employees;


select * from tbladdressbook;

select * from tblcomedian;

select * from tblcountry;

select * from tblDiary;

select * from tblHousekeeping;

select * from tblInsa;

select * from tblMen;

select * from tblWomen;

select * from tblSalary;

select * from tblTodo;

--select * from tblName;
drop table tblName;

select * from tblZoo;

select * from zipcode;


-- select 절
-- from 절

-- select 컬럼리스트

select * from tblcomedian;  --편하지만 가독성이 떨어진다.
select first, last, gender, height, weight, nick from tblcomedian;

select first from tblcomedian;

-- 다중컬럼 > 순서 상관없음, 동일 컬럼 가능
select first, last from tblcomedian;

select last, last from tblcomedian;

-- 테이블명 에러 : "table or view does not exist"
select last, last 
    from tblcomedia;
    
-- 컬럼명 에러 : "LASTA": invalid identifier > 유효하지 않은 식별자    
select lasta
    from tblcomedian;    


