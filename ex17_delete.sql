-- ex17_delete.sql
/*

DELETE
- DML
- 원하는 행을 삭제하는 명령어

DELETE 구문
- DELETE [FROM] 테이블명 [WHERE 절]

*/
COMMIT;
ROLLBACK;

SELECT * FROM tblinsa;

DELETE FROM tblinsa WHERE num = 1001;

