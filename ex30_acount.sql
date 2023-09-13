-- ex30_acount.sql
/*
사용자와 관련된 것들은 DCL에서 관리
- 계정 생성, 삭제 등 제어
- 리소스 제어 권한

현재 사용 계정
- system
- hr

프로젝트 시 계정을 생성하는 것이 편하다

*/

SELECT * FROM tabs;		--현재 스키마(>여기서 스키마는 계정의 의미 - hr)에서 소유하고 있는 테이블 목록

/*

사용자 계정 생성하기
- 시스템 권한을 가지고 있는 계정만 생성 가능하다.(system)
- 계정 생성 권한을 가지고 있는 일반 계정도 가능하다.
- DB Object

create user 계정명 identified by 암호	//계정 생성
alter user 계정명 identified by 암호;	//암호 변경
alter user 계정명 account unlock;		//계정 잠금 해제
alter user 계정명 account lock;			//계정 잠금 설정

- 새로 만든 계정은 접속할 권한 등 아무 권한이 없다.
> 관리자 계정이 권한을 부여해줘야 한다.

사용자에게 권한 부여하기
- grant 권한명 to 유저명;


사용자에게 권한 제거하기
-revoke 권한명 from 유저명;

권한명
1. 단일 권한
- create user
- drop user
- drop any table
- create session : 접속 권한
- create table
- create view
- create sequence
- create procedure
	
2. 권합 집합(Role)
- connect : 사용자 db 접속 + 기본적 행동 권한 부여
- resource : 테이블 등 객체 조작 권한 부여
- dba : 준관리자급 권한 부ㅕ

*/

-- system 계정에서 실행
create user hong identified by java1234;

grant create session to hong;

grant create table to hong;


revoke create session from hong;

-- 프로젝트 진행 시 계정 생성 
CREATE USER team IDENTIFIED BY java1234;

GRANT CONNECT, resource, dba TO team;

ALTER USER team account lock;












