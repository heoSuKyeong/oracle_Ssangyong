-- ex31.sql
set serveroutput on;  

-- 근태 상황(출석)
create table tblDate (
    seq number primary key,
    state varchar2(30) not null,
    regdate date not null
);

insert into tblDate (seq, state, regdate) values (1, '정상', '2023-09-01');
-- 09-02 : 토요일
-- 09-03 : 일요일

insert into tblDate (seq, state, regdate) values (2, '정상', '2023-09-04');
insert into tblDate (seq, state, regdate) values (3, '지각', '2023-09-05');
-- 09-06 : 결석
insert into tblDate (seq, state, regdate) values (4, '정상', '2023-09-07');
insert into tblDate (seq, state, regdate) values (5, '정상', '2023-09-08');

-- 09-09 : 토요일
-- 09-10 : 일요일
insert into tblDate (seq, state, regdate) values (6, '조퇴', '2023-09-11');
insert into tblDate (seq, state, regdate) values (7, '정상', '2023-09-12');
insert into tblDate (seq, state, regdate) values (8, '정상', '2023-09-13');
insert into tblDate (seq, state, regdate) values (9, '지각', '2023-09-14');
insert into tblDate (seq, state, regdate) values (10, '정상', '2023-09-15');

-- 09-16 : 토요일
-- 09-17 : 일요일
insert into tblDate (seq, state, regdate) values (11, '정상', '2023-09-18');
insert into tblDate (seq, state, regdate) values (12, '정상', '2023-09-19');
insert into tblDate (seq, state, regdate) values (13, '지각', '2023-09-20');
-- 09-21 : 결석
insert into tblDate (seq, state, regdate) values (14, '조퇴', '2023-09-22');

-- 09-23 : 토요일
-- 09-24 : 일요일
insert into tblDate (seq, state, regdate) values (15, '정상', '2023-09-25');
insert into tblDate (seq, state, regdate) values (16, '정상', '2023-09-26');
insert into tblDate (seq, state, regdate) values (17, '정상', '2023-09-27');
-- 09-28 : 추석
-- 09-29 : 추석
-- 09-30 : 토요일


select * from tblDate;

-- 9월 근태 조회 > 결석 + 공휴일 포함 > 빠진 날짜 조회하기
-- 1. ANSI-SQL
-- 2. PL/SQL
-- 3. JAVA

declare
    vdate date;
    vstate varchar2(30);
    vcnt number;
begin
    vdate := to_date('2023-09-01', 'yyyy-mm-dd');   -- 00:00:00
    
    for i in 1..30 loop
        dbms_output.put_line(vdate);
        
        select count(*) into vcnt from tblDate where to_char(regdate, 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
        
        if vcnt>0 then
            select state into vstate from tblDate where to_char(regdate, 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
        
            dbms_output.put_line(vstate);
        end if;
        
        vdate := vdate +1;  --하루씩 증가
    end loop;
    
end;






