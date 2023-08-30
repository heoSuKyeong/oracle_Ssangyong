-- ex15_insert.sql

/*
INSERT
- DML
- 테이블에 데이터를 추가하는 명령어

INSERT 구문
- insert into 테이블명 (컬럼리스트) values (값리스트);

*/

DROP TABLE tblmemo;
-- 메모 테이블
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,					--메모번호(PK)
	name varchar2(30) DEFAULT '익명',			--작성자
	memo varchar2(1000),						--메모
	regdate DATE DEFAULT sysdate NOT null		--작성날짜
);

SELECT * FROM tblmemo;

DROP SEQUENCE seqMemo;
CREATE SEQUENCE seqMemo;

-- 1.표준
-- : 원본 테이블의 정의된 컬럼 순서대로 컬럼리스트와 값리스트를 구성하는 방법
INSERT INTO tblmemo (seq, name, memo, regdate) 
			VALUES (seqMemo.nextVal, '홍길동','메모',sysdate);

-- 2. 컬럼리스트의 순서는 원본 테이블과 상관없다.
-- : 컬럼리스트와 값리스트의 순서만 동일하면 된다.
INSERT INTO tblmemo (seq, memo, regdate, name) 
			VALUES (seqMemo.nextVal,'메모',sysdate,'홍길동');		

--ORA-00947: not enough values
-- 3. 컬럼리스트보다 값리스트의 인자값이 적을 때
INSERT INTO tblmemo (seq, name, memo, regdate) 
			VALUES (seqMemo.nextVal,'메모',sysdate);	
		
-- ORA-00913: too many values
-- 4. 컬럼리스트가 값리스트보다 인자값이 적을 때		
INSERT INTO tblmemo (seq, memo, regdate) 
			VALUES (seqMemo.nextVal, '홍길동','메모',sysdate);		
		
-- 5. null 컬럼 조작
	-- a. null 상수		
INSERT INTO tblmemo (seq, name, memo, regdate) 
			VALUES (seqMemo.nextVal, '홍길동', NULL, sysdate);		
		
	-- b. 컬럼, 값 자체 생략		
INSERT INTO tblmemo (seq, name, regdate) 
			VALUES (seqMemo.nextVal, '홍길동',sysdate);				
		
		
-- 6. default 컬럼 조작
	-- a. 컬럼 생략
INSERT INTO tblmemo (seq, memo, regdate) 
			VALUES (seqMemo.nextVal, '메모', sysdate);		
		
	-- b. null 상수 > null(개발자 의지 표현) > default 작동 안함
INSERT INTO tblmemo (seq, name, memo, regdate) 
			VALUES (seqMemo.nextVal, null,'메모',sysdate);		
		
	-- c. default 상수
INSERT INTO tblmemo (seq, name, memo, regdate) 
			VALUES (seqMemo.nextVal, default,'메모',sysdate);		
			

-- 7. 단축
-- 컬럼리스트를 생략할 수 있다.
-- 컬럼시트를 생략하면 테이블의 원본 컬럼 순서대로 값리스트를 작성해야 한다.
INSERT INTO tblmemo VALUES (seqMemo.nextVal, '홍길동','메모',sysdate);	

-- null컬럼을 생략 불가능
INSERT INTO tblmemo VALUES (seqMemo.nextVal, '홍길동',sysdate);	
INSERT INTO tblmemo VALUES (seqMemo.nextVal, '홍길동', NULL, sysdate);	

-- default
INSERT INTO tblmemo VALUES (seqMemo.nextVal,'메모',sysdate);
INSERT INTO tblmemo VALUES (seqMemo.nextVal, default,'메모',sysdate);


-- 8.
-- tblMemo 테이블 복사하여 새 테이블 생성
CREATE TABLE tblMemoCopy
(
	seq number(3) PRIMARY KEY,					--메모번호(PK)
	name varchar2(30) DEFAULT '익명',			--작성자
	memo varchar2(1000),						--메모
	regdate DATE DEFAULT sysdate NOT null		--작성날짜
);

SELECT * FROM tblMemo;

INSERT INTO tblMemoCopy SELECT * FROM tblMemo; 		--sub query

SELECT * FROM tblMemoCopy;

-- 9.
-- tblMemo 테이블 복사하여 새 테이블 생성(tblMemoCopy2)
-- 제약 사항이 복사가 안된다.
-- 임시(더미) 테스트용으로만 사용한다.
CREATE TABLE tblMemoCopy2 AS SELECT * FROM tblMemo;

SELECT * FROM tblMemoCopy2;		

INSERT INTO tblMemoCopy2 (seq, name, memo, regdate) 
			VALUES (15, '홍길동','메모',sysdate);








