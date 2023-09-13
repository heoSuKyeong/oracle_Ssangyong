
create user hong identified by java1234;

grant create session to hong;

grant create table to hong;


revoke create session from hong;

-- 프로젝트 진행 시 계정 생성 
CREATE USER team IDENTIFIED BY java1234;

GRANT CONNECT, resource, dba TO team;

ALTER USER team account lock;
ALTER USER team account unlock;