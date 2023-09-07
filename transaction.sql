-- ex25_transaction.sql
/*
트랜잭션, Transaction
- 시간별로 일어나는 업무들의 집합
- 데이터를 조작하는 업무의 물리적(시간적) 단위(행동의 범위)
- 1개 이상의 명령어를 묶어놓은 단위


트랜잭션 관련 명령어, DCL(TCL)
1. COMMIT
2. ROLLBACK
3. SAVEPOINT



*/

CREATE TABLE tblTrans
AS 
SELECT name, buseo, jikwi FROM tblinsa WHERE city = '서울';

SELECT *
FROM tbltrans;

-- 행동을 시간순으로 기억하기(*****)

-- 로그인 직후(접속) > 트랜잭션이 시작됨
-- 트랜잭션에 모든 명령어가 기록되는 것이 아니라 데이터에 영향을 주는 것만 기록된다.
--	: INSERT, UPDATE, DELETE

-- INSERT, UPDATE, DELETE 작업 > 오라클에 바로 반영되는것이 아니라, 임시 메모리에 반영된다. / 한번 검토 후 적용을 하자

DELETE FROM tbltrans WHERE name = '박문수';		--트랜잭션에 포함

SELECT * FROM tbltrans;		--트랜잭션과 무관

ROLLBACK;		--현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용하지않고 취소한다.

SELECT * FROM tbltrans;

DELETE FROM tbltrans WHERE name = '박문수';

SELECT * FROM tbltrans;

COMMIT;		--현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용한다.

SELECT * FROM tbltrans;

DELETE FROM tbltrans WHERE name = '김말자';

SELECT * FROM tbltrans;

COMMIT;

SELECT * FROM tbltrans;

INSERT INTO tbltrans VALUES ('호호호','기획부','사원');
UPDATE tbltrans SET jikwi = '상무' WHERE name = '홍길동';

SELECT * FROM tbltrans;

COMMIT;


/*
트랜잭션이 언제 시작해서 ~ 언제 끝나는지? (하나의 트랜잭션)

새로운 트랜잭션이 시작하는 시점
1. 클라이언트 접속 직후(로그인)
2. commit 실행 직후
3. rollback 실행 직후

현재 트랜잭션이 종료되는 시점
1. commit : 현재 트랜잭션을 종료 + DB 반영
2. rollback : 현재 트랜잭션을 종료 + DB 미반영
3. 클라이언트 접속 종료
a. 정상 종료
- 현재 트랜잭션에 아직 반영이 안된 명령어가 남아있다고 안내메세지를 띄움
b. 비정상 종료
- 메모리 상(트랜잭션)의 모든 작업이 반영 될만한 틈 없이 강제 종료
- rollback
4. DDL 실행
- CREATE, ALTER, DROP 실행 시 즉시 COMMIT 실행된다.
- DDL이 구조를 변경하여 데이터에 영향을 끼친다. > 미리 저장이 된다.(자동 COMMIT)


*/

UPDATE tbltrans SET jikwi = '부장' WHERE name = '홍길동';

SELECT * FROM tbltrans;

COMMIT;

UPDATE tbltrans SET jikwi = '사장' WHERE name = '하하하';

SELECT * FROM tbltrans;

-- 시퀀스 객체 생성 > 현재 트랜잭션 commit 동반
CREATE SEQUENCE seqTrans;

ROLLBACK;

SELECT * FROM tbltrans;


-- savepoint 라벨;
COMMIT;

SELECT * FROM tbltrans;

INSERT INTO tbltrans values('후후후','기획부','직원');

SAVEPOINT a;

DELETE FROM tbltrans WHERE name = '하하하';

SAVEPOINT b;

UPDATE tbltrans SET buseo = '개발부' WHERE name = '후후후';

SELECT * FROM tbltrans;

ROLLBACK TO b;

SELECT * FROM tbltrans;

ROLLBACK;