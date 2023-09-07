-- ex23_alter.sql

/*

	DDL > 객체 조작
	- 객체 생성: CREATE
	- 객체 수정: ALTER
	- 객체 삭제: DROP
	
	DML > 데이터 조작
	- 데이터 생성: INSERT
	- 데이터 수정: UPDATE
	- 데이터 삭제: DELETE

	테이블 수정하기
	- 테이블 정의 수정 > 스키마 수정 > 컬럼 수정 > 컬럼명 or 자료형(길이) or 제약사항 등
	- 되도록 테이블 수정하는 상황을 발생시키면 안된다!!!
	- 배우긴 하되, *절대* 쓸만한 상황을 만들지 않게 하자..! 설계를 완벽하게 하자..!! > 물론 사람이 하는 일이라 아예 안 쓸순 없겠지만..
	
	테이블 수정해야 하는 상황 발생!!
	1. 테이블 삭제(DROP) > 테이블 DDL(CREATE) 수정 > 수정된 DDL로 새롭게 테이블 생성
		a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
		b. 기존 테이블에 데이터가 있었을 경우 > 미리 데이터 백업 > 테이블 삭제 > 수정된 테이블 다시 생성 > 데이터 복구
			- 개발 중에 사용 가능
			- 공부할 때 사용 가능
			- 서비스 운영 중에는 거의 불가능한 방법
	
	2. ALTER 명령어 사용 > 기존 테이블의 구조 변경
		a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
		b. 기존 테이블에 데이터가 있었을 경우 > 경우에 따라 비용 차이
			- 개발 중에 사용 가능
			- 공부할 때 사용 가능
			- 서비스 운영 중에는 경우에 따라 가능
	
*/

DROP TABLE tblEdit;

CREATE TABLE tblEdit (
	seq NUMBER PRIMARY KEY,
	DATA varchar2(20) NOT NULL
);

INSERT INTO tblEdit VALUES (1, '마우스');
INSERT INTO tblEdit VALUES (2, '키보드');
INSERT INTO tblEdit VALUES (3, '모니터');

SELECT * FROM tbledit;

-- Case 1. 새로운 컬럼을 추가하기
ALTER TABLE tbledit
	ADD (price NUMBER);
	
SELECT * FROM tbledit;

-- ORA-01758: table must be empty to add mandatory (NOT NULL) column > NOT NULL column을 만들기 위해서는 반드시 테이블이 비어있어야 한다.
-- WHY? 상식적으로 NOT NULL을 만들건데 기존에 없던 컬럼을 추가하면 해당 레코드의 추가된 컬럼은 NULL값으로 추가될 테니까!!!
ALTER TABLE tbledit
	ADD (qty NUMBER NOT NULL);
	
DELETE FROM tbledit;

INSERT INTO tblEdit VALUES (1, '마우스', 1000, 1);
INSERT INTO tblEdit VALUES (2, '키보드', 2000, 1);
INSERT INTO tblEdit VALUES (3, '모니터', 3000, 2);

ALTER TABLE tbledit
	ADD (color varchar2(30) DEFAULT 'white' NOT NULL); --> DEFAULT 값을 입력하면 NOT NULL 컬럼을 추가 할 수있다.
	
SELECT * FROM tbledit;

-- Case 2. 컬럼 삭제하기 (신경 쓸게 거의 없음!)
ALTER TABLE tbledit
	DROP COLUMN color;
	
ALTER TABLE tbledit
	DROP COLUMN qty;
	
-- 주의해야 할 것!!! > PK 삭제 금지
ALTER TABLE tbledit 
	DROP COLUMN seq; -- PK 삭제 > 절대 금지!!!
	
-- Case 3. 컬럼 수정하기
SELECT * FROM tbledit;

INSERT INTO tbledit VALUES (4, '애플 M2 맥북 프로 2023'); -- ORA-12899: value too large for column "HR"."TBLEDIT"."DATA" (actual: 28, maximum: 20)

-- Case 3.1 컬럼 길이 수정하기(확장/축소)
ALTER TABLE tbledit
	MODIFY (DATA varchar2(100));
	-- > 안들어갔던 4번 애플 맥북 프로 레코드가 잘 들어감!

ALTER TABLE tbledit
	MODIFY (DATA varchar2(20)); -- ORA-01441: cannot decrease column length because some value is too big
	
-- Case 3.2 컬럼의 제약사항 수정
ALTER TABLE tbledit
	MODIFY (DATA varchar2(100) NULL);
	
INSERT INTO tbledit VALUES (5, null);

ALTER TABLE tbledit
	MODIFY (DATA varchar2(100) NOT NULL); -- ORA-02296: cannot enable (HR.) - null values found > 위에서 null값 추가해서 없애야만 수정 됨~!

-- Case 3.3 컬럼의 자료형 바꾸기
ALTER TABLE tbledit
	MODIFY (DATA NUMBER); -- ORA-01439: column to be modified must be empty to change datatype
	
DESC tbledit; -- SQL*Plus > SQL Developer 전용 명령어	

DELETE FROM tbledit;

SELECT * FROM tbledit;

ALTER TABLE tbledit
	MODIFY (DATA varchar2(100));