-- ex16_update.sql

/*

UPDATE
- DML
- 원하는 행의 원하는 컬럼값을 수정하는 명령어

UPDATE 구분
- UPDATE 테이블명 SET 컬럼명=값 [, 컬럼명=값] [WHERE 절]


*/
COMMIT;
ROLLBACK;

SELECT * FROM tblcountry;

-- 대한민국 수도 이전 : 서울 > 세종
UPDATE tblcountry SET capital = '세종' WHERE name = '대한민국';

UPDATE tblcountry SET 
		capital = '세종' ,
		population = population + 100,
		continent = 'EU'
WHERE name = '대한민국';