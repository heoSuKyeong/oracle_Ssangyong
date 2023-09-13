show user;

select * from tabs;

-- ORA-01031: insufficient privileges
-- create table 권한이 없다.
create table tblData (
    seq number primary key,
    data varchar2(100) not null
);