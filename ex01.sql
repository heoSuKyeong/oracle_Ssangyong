-- 단일라인 주석

/*

localhost + system

localhost > 현재 컴퓨터

localhost == 127.0.0.1 (컴퓨터 IP Address, 루프백, this)

system은 작업을 하지 않는다.
- 권한이 너무 크다.
- 실수할 때 수습이 너무 힘들다.

일반 계정 작업
- 특정 업무에 대한 권한만 있는 계정

학습용 계정(=일반 계정 + 샘플 데이터 hr(Human Resources))
> 특정 계정 비밀번호 바꾸기(localhost.system 계정만 실행 가능)
- alter user 계정명 identified by java1234;
- alter user hr account unlock;

*/
alter user hr identified by java1234;

alter user hr account unlock;

/*

Oracle Database 11g Enterprise Edition(기업용)
Oracle Database 11g Express Edition(무료) >> 점유율 높은 버전 사용

SQL, Structured Query Language
- 구조화된 질의 언어
- 개발자(SQL Developer) <-> SQL <-> 오라클

오라클 + SQL

1. 데이터베이스 관리자, DBA
- 모든 것(오라클 + SQL)을 관리
2. 데이터베이스 개발자, DB 개발자
- 모든 것
3. 응용 프로그램 개발자(자바 개발자)
- 모든 것 or 일부 사용

관계형 DBMS
1. Oracle
2. MS-SQL(Microsoft) > 기업용으로 사용
3. MySQL > 무료(개인, 기업)
4. MariaDB > 무료(개인, 기업)
5. PostreSQL > 무료(개인, 기업)
6. DB2 > IBM
7. SQLite > Mobile


SQL
1. DBMS 제작사와 독립적이다.
    - 모든 관계형 데이터베이스에서 공통적으로 사용하기 위해 만들어진 언어
    - DBMS 제작사에서 SQL이라는 언어를 자신의 제품을 적용

2. 표준 SQL, ANSI-SQL
    - 모든 DBMS에 적용가능한 SQL
    
3. 제조사별 SQL
    - 특정 DBMS에 적용가능한 SQL(표준을 확장)
    - Oracle > PL/SQL
    - MS-SQL > T-SQL

오라클 수업 = ANSI-SQL(5~60%) + PL/SQL(20~30%) + 설계,기타(10%)

관계형 데이터베이스
- 데이터를 표 형식으로 저장/관리한다.
- SQL를 사용한다.


ANSI-SQL
1. DDL
    - Data Definition Language
    - 데이터 정의어
    - 테이블, 뷰, 사용자, 인덱스 등의 데이터베이스 오브젝트들
        > 생성, 수정 삭제하는 명령어
    - 구조를 생성/관리하는 명령어
    a. CREATE : 생성
    b. DROP : 삭제
    c. ALTER : 수정
    - 데이터베이스 관리자 / 담당자 / 프로그래머(일부) 사용
    

2. DML
    - Data Manipulation Language
    - 데이터 조작어
    - 데이터를 추가/수정/삭제/조회하는 명렁어 > CRUD
    - 사용빈도가 가장 높음
    a. SELECT : 조회(읽기)
    b. INSERT : 추가(생성)
    c. UPDATE : 수정
    d. DELETE : 삭제
    - 데이터베이스 관리자 / 담당자 / 프로그래머(*****) 사용

3. DCL
    - Data Control Language
    - 데이터 제어어
    - 계정 관리, 보안 관리, 트랜잭션 관리 등..
    a. COMMIT
    b. ROLLBACK
    c. GRANT
    d. REVOKE
    - 데이터베이스 관리자 / 담당자 / 프로그래머(일부) 사용

4. DQL
    - Data Query Language
    - DML 중에서 SELECT문을 따로 부르는 표현
    
5. TCL
    - Transaction Control Language
    - DCL 중에서 COMMIT, ROLLBACK문을 따로 부르는 표현
    
오라클 인코딩
- 1.0 ~ 8i : EUC-KR
- 9i ~ 현재 : UTF-8



*/
-- SQL은 대소문자르 구분하지 않는다. 단, 키워드가 대문자이면 블럭잡지않아도 자동실행된다.
-- 파란색 > 키워드
-- 검은색(tabs) > 식별자
select * from tabs;
SELECT * FROM tabs;

-- 'jobs' > 데이터(문자 상수)는 대소문자를 구분한다.
select * from tabs where table_name = 'JOBS';

select * from tabs where table_name = 'jobs';

-- 1. 키워드는 대문자
-- 2. 식별자는 소문자(캐멀)
SELECT * FROM tabs;
SELECT * FROM tabs;

-- DB Object 식별자 주의점 > 최대 30바이트까지
CREATE table aaa (
    num number
);

/*
CREATE table aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1 (
    num number
);
*/
