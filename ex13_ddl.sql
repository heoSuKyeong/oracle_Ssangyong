-- ex13_ddl.sql

/*
ex01~ex12 : DML 기본(기초)

DDL 
- 데이터 정의어
- 데이터베이스 객체를 생성/수정/삭제한다.
- 데이터베이스 객체 : 테이블, 뷰, 인덱스, 프로지서, 트리거, 제약사항, 시노닙 등
- CREATE, ALTER, DROP

테이블 생성하기 == 스키마 정의하기 == 속성(컬럼) 정의하기 == 컬럼의 이름,자료형,제약을 정의

CREATE table 테이블명
(
	컬럼 정의,
	컬럼 정의,
	컬럼 정의,
	컬럼명 자료형(길이),
	컬럼명 자료형(길이) NULL 제약사항
);


제약 사항, Constraint
- 해당 컬럼에 들어갈 데이터(값)에 대한 조건
	1. 조건을 만족하면 > 대입
	2. 조건을 불만족하면 > 에러
- 유효성 검사 도구
- 데이터 무결성을 보장하기 위한 도구(***)

1. NOT NULL
	- 해당 컬럼이 반드시 값을 가져야 한다.(필수값)
	- 해당 컬럼에 값이 없으면 에러 발생


2. PRIMARY KEY, PK
	- 기본키
	- 테이블의 행을 구분하기 위한 제약사항
	- 행을 식별하는 수많은 키(후보키)들 중 대표로 선정된 키
	- 모든 테이블은 반드시 한개의 기본키가 존재해야 한다.(***********)
	- 중복값을 가질 수 없다. > unique
	- 값을 반드시 가진다. > not null

3. FOREIGN KEY, FK
	- 다음에

4. UNIQUE
	- 유일한 값 > 레코드간의 중복값을 가질 수 없다.
	- PK와 비슷하지만 null을 가질 수 있다. > 식별자가 될 수 없다.
	- ex) 교실
		- 학생(번호(pk), 이름(not null), 직책)
				1, 홍길동, 반장
				2, 아무개, null
				3, 하하하, 부반장
				4, 테스트, null
	- PK = UQ + NN
	
5. CHECK
	- 사용자 정의형
	- where 절의 조건을 컬럼의 제약사항으로 적용
	- check(category IN ('할일','공부','약속','가족','개인'))

6. DEFAULT
	- 기본값 설정
	- insert/update 작업 시 컬럼에 값이 없으면 null대신 미리 설정한 값을 대입한다.

*/

-- 메모 테이블
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이) NULL 제약사항
	seq number(3) NULL,				--메모번호
	name varchar2(30) NULL,			--작성자
	memo varchar2(1000) NULL,		--메모
	regdate DATE NULL				--작성날짜
);

SELECT * FROM tblmemo;

INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, '아무개',null,sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (3, null,null,null);


--------------------------- 1. not null(NN)
DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) NOT NULL,				--메모번호(NN)
	name varchar2(30) NULL,			--작성자
	memo varchar2(1000) NOT NULL,		--메모(NN)
	regdate DATE NULL				--작성날짜
);

SELECT * FROM tblmemo;


INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);

-- ORA-01400: cannot insert NULL into ("HR"."TBLMEMO"."MEMO")***** 에러 top3 (not null 제약)
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, '아무개',null,sysdate);

INSERT INTO tblmemo (seq, name, regdate) VALUES (2, '아무개',sysdate);				--생략된 컬럼에는 null이 들어간다.

INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, '아무개','',sysdate);		-- 빈문자로 ('')도 null로 취급한다.

INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (3, null,null,null);


--------------------------- 2. PK
DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,				--메모번호(PK)
	name varchar2(30) NULL,			--작성자
	memo varchar2(1000) NOT NULL,		--메모(NN)
	regdate DATE NULL				--작성날짜
);

SELECT * FROM tblmemo;

-- ORA-00001: unique constraint (HR.SYS_C007085) violated
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);

-- ORA-01400: cannot insert NULL into 
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (null, '홍길동','메모',sysdate);


-- 테이블내에 pk가 반드시 존재해야할까?
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, '아무개','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (3, '테스트','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (4, '홍길동','메모',sysdate);

SELECT * FROM tblmemo;

SELECT * FROM tblmemo WHERE name = '아무개';
SELECT * FROM tblmemo WHERE seq = 2;

-- 중복된 값이 나옴
SELECT * FROM tblmemo WHERE name = '홍길동';
SELECT * FROM tblmemo WHERE seq = 1;

DELETE FROM tblmemo WHERE seq = 2;


--------------------------- 3. unique

DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,			--메모번호(PK)
	name varchar2(30) unique,			--작성자(UQ)	> 한 사람당 하나의 메모만 쓰기 가능
	memo varchar2(1000) NOT NULL,		--메모(NN)
	regdate DATE 						--작성날짜
);

SELECT * FROM tblmemo;

INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, '아무개','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (3, '테스트','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (4, '홍길동','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (5, null,'메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (6, null,'메모',sysdate);


--------------------------- 4. check
DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,								--메모번호(PK)
	name varchar2(30) ,										--작성자
	memo varchar2(1000),									--메모
	regdate DATE, 											--작성날짜
	priority NUMBER(1)	check(priority BETWEEN 1 AND 3)	,	--중요도(1(중요), 2(보통), 3(안중요))
	-- 카테고리(할일,공부,약속,가족,개인)
	category varchar2(30) check(category IN ('할일','공부','약속','가족','개인'))
);
SELECT * FROM tblmemo;

INSERT INTO tblmemo (seq, name, memo, regdate, priority, category) VALUES (1, '홍길동','메모',sysdate,1,'할일');

-- ORA-02290: check constraint (HR.SYS_C007095) violated : 체크 제약을 위반
INSERT INTO tblmemo (seq, name, memo, regdate, priority, category) VALUES (2, '홍길동','메모',sysdate,4,'할일');


--------------------------- 5. default

DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,					--메모번호(PK)
	name varchar2(30) DEFAULT '익명',			--작성자
	memo varchar2(1000) ,						--메모
	regdate DATE DEFAULT sysdate				--작성날짜
);

SELECT * FROM tblmemo;

INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (1, '홍길동','메모',sysdate);
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (2, null,'메모',null);		-- null값이 대입됨
INSERT INTO tblmemo (seq, memo) VALUES (3, '메모');									-- default값이 대입됨
INSERT INTO tblmemo (seq, name, memo, regdate) VALUES (4, DEFAULT,'메모',DEFAULT);	-- DEFAULT 상수


----------------------------------------------------------------------
/*
제약사항을 만드는 방법
1. 컬럼 수준에서 만드는 방법
	- 위 내용
	- 컬럼을 선언할 때 제약사항도 같이 선언하는 방법
	
2. 테이블 수준에서 만드는 방법
	- 가독성 향상
	- not null, default는 불가능하다

3. 외부에서 만드는 방법


*/
CREATE TABLE tblMemo
(
	seq number(3),	-- CONSTRAINT 생략 가능 / tblmemo_seq_pk 생략하면 자동으로 생성됨
	name varchar2(30),
	memo varchar2(1000) DEFAULT '메모',
	regdate DATE NOT NULL,
	
	-- 테이블 수준에서 제약사항 정의
	CONSTRAINT tblmemo_seq_pk PRIMARY key(seq),		-- PRIMARY key(컬럼)
	CONSTRAINT tblmemo_name_uq unique(name),
	CONSTRAINT tblmemo_memo_ck check(LENGTH(memo)>=10)
	
);










