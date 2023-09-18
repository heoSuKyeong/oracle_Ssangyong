--ex32_index.sql
/* 
인덱스, Index
- 검색을 빠른 속도로 하기 위해 사용하는 도구
- SQL 명령 처리 속도를 빠르게 하기 위해서, 특정 컬럼에 대해 생성되는 도구
- 책의 인덱스 > 검색 도구


데이터베이스
- 테이블 내의 레코드 순서가 사용자가 원하는 정렬 상태가 아니다.
- DBMS가 자체적으로 정렬 보관을 한다.
- 데이터 검색 시 기본적으로 처음부터 끝까지 차례대로 검색 > `table full scan`
- 특정 컬럼 선택하여 별도의 테이블에 복사 후 미리 정렬을 한다. 
- 원본 테이블의 인덱스를 생성하면 인덱스와 서로 참조를 한다.


인덱스의 장단점
- 처리 속도를 향상시킨다.
- 무분별한 인덱스 사용은 DB 성능을 저하시킨다.

자동으로 인덱스가 걸리는 컬럼
1. Primary key
2. Unique
- ** 테이블에서 PK컬럼을 검색하는 속도 >(넘사벽)> 테이블에서 PK 아닌 컬럼을 검색하는 속도

*/

create table tblindex
as
select * from tbladdressbook;

select count(*) from tblindex;  --8,192,000

insert into tblIndex select * from tblindex;



select * from tbladdressbook;   -- seq(PK)
select * from tblIndex;         -- 제약사항이 없다.(PK조차 없다.)

--시간 혹인
set timing on;

--sql 실행 단축키
--1. ctrl + enter > 결과 : 테이블 / 경과 시간 확인 기능이 없다.
--2. f5 > 결과 : 텍스트 / 경과 시간 확인 가능하다.

-- 인덱스없이 검색 > 경과 시간: 00:00:01.307
select count(*) from tblIndex where name = '최민기';

-- 인덱스 생성
create index idxName on tblIndex(name);

-- 인덱스 생성 후 검색 > 경과 시간: 00:00:00.018
select count(*) from tblIndex where name = '최민기';



-- 인덱스로 정할 컬럼이 시시각각 변하기 때문에 걸기가 쉽지않다.


/*
인덱스 종류
1. 고유 인덱스
2. 비고유 인덱스

3. 단일 인덱스
4. 복합 인덱스

5. 함수 기반 인덱스

*/

-- 고유 인덱스(unique index)
-- : 색인의 값이 중복이 불가능하다.
-- ex) PK, Unique
-- 이미 중복된 값이 들어있는 컬럼을 지정하면 생성되지 않는다.
create unique index idxName on tblindex(name);     --동명이인 허용하지 않음


-- 비고유 인덱스
-- : 색인의 값이 중복 가능하다.
-- : 일반 컬럼
create index idxHometown on tblIndex(hometown);


-- 단일 인덱스
-- : 컬럼 1개를 대상으로 만든 인덱스
create index idxHometown on tblIndex(hometown);
drop index idxhometown;

select count(*) from tblIndex where hometown = '서울';    -- 경과 시간: 00:00:01.149

-- 인덱스가 아닌 항목과 같이 검색을 할 땐, 인덱스가 무용지물이 된다.
select count(*) from tblindex where hometown = '서울' and job='학생';   -- 경과 시간: 00:00:19.629


-- 복합(결합) 인덱스
-- : 컬럼 n개를 대상으로 만든 인덱스
create index idxHometownJob on tblIndex(hometown, job);

select count(*) from tblindex where hometown = '서울' and job='학생';   -- 경과 시간: 00:00:00.204

select count(*) from tblindex where  job='학생' and hometown = '서울';  -- 검색 컬럼 순서 바꿔도 상관없다.


-- 함수 기반 인덱스
-- : 가공된 값을 사용하는 인덱스
select count(*) from tblindex where substr(email, instr(email, '@')) = '@naver.com';    -- 경과 시간: 00:00:06.996

create index idxEmail on tblindex(email);

drop index idxEmail;

create index idxEmail on tblindex(substr(email, instr(email, '@')));
select count(*) from tblindex where substr(email, instr(email, '@')) = '@naver.com';    -- 경과 시간: 00:00:00.590
