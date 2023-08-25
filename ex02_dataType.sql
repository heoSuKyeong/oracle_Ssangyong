-- ex02_dataType.sql
/*

관계형 데이터베이스
- 변수라는 개념이 없다. > SQL은 프로그래밍 언어가 아니다.
- SQL은 대화형 언어이다. > DB와 대화를 목적으로 하는 언어
- 자료형은 데이터를 저장하는 규칙으로 쓰이며, 테이블 정의할 때 사용된다.(컬럼의 자료형)

ANSI-SQL 자료형
- 오라클 자료형
1. 숫자형
    - 정수, 실수
    a. number
        - (유효자리)39자리 이하의 숫자를 표현하는 자료형
        - 12345678901234567890123456789012345678 > 38자리
        - 5~22byte (가변적)
        - 1x10^-130 ~ 9.9999x10^125
        
        - number : 정수 & 실수
        - number(precision) : 전체 자릿수. 정수로 저장이 된다.(소수는 반올림되어 저장)
        - number(precision, scale) : 전체 자릿수, 소수이하 자릿수. 실수 저장 가능

2. 문자형
    - 문자열(문자+문자열)
    - char vs nchar : n의 의미?
    - char vs varchar : var의 의미? > 저장 공간 차이
        var : 가변크기로 할당된 공간보다 작은 데이터가 들어왔을 때, 남은 공간을 버린다. ex) 10바이트 할당된 공간에 3바이트 데이터가 들어오면 7바이트는 버린다.
    
    a. char
        - 고정 자릿수 문자열 > 공간(컬럼)의 크기가 불변
        - char(n) : 최대 n바이트까지 문자열
        - char(n char) : 최대 10글자까지의 문자열
        - 최소 크기 : 1바이트
        - 최대 크기 : 2,000바이트
        
    b. nchar > 활용성이 많이 떨어지므로 존재정도만 알기
        - n : national > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16 동작하게
        - char(n) : 최대 n바이트까지 문자열
        - 최소 크기 : 1바이트
        - 최대 크기 : 2,000바이트
    
    c. varchar2 > variable
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 가변
        - varchar2(n): 최대 n바이트 문자열
        - varchar2(n char)
        - 최소 크기 : 1바이트
        - 최대 크기 : 4,000바이트
        
    d. nvarchar2
        - n : national > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16 동작하게
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 가변
        - varchar2(n): 최대 n자리 문자열
        - 최소 크기 : 1바이트
        - 최대 크기 : 2,000바이트
    
    e. clob, nclob
        - 대용량 텍스트
        - character large object 
        - 최대 128TB 저장
        - 참조형 > 접근 속도가 느리다
        
    
    <예전>
    - 고정 자릿수 문자열 > 주민등록번호, 전화번호 > char
    - 가변 자릿수 문자열 > 주소, 자기소개 > varchar2
    
    <현재> varchar2로 통일
    - 고정/가변 자릿수 문자열 > varchar2
    
3. 날짜/시간형
    a. date > 가장 많이 사용됨
        - 년월일시분초
        - 7byte
        - 기원전 4712년 1월 1일 ~ 9999년 12월 31일
        
        
    b. timestamp
        - 년월일시분초 + 밀리초 + 나노초
        
        
    c. interval
        - 시간 > 틱값 저장용
    

4. 이진 데이터형
    - 비 텍스트 데이터
    - 이미지, 영상, 음악 등등
    - 잘 사용하지 않는다.
    ex) 게시판-첨부파일, 회원가입(사진) > 파일명만 (문자열)저장, 첨부파일은 폴더에 따로 저장
    a. blob
        - 최대 128TB 저장
        
결론
1. 숫자 > number
2. 문자 > varchar2 + char
3. 날짜 > date

자바
1. 숫자 > int + long, double, boolean
2. 문자열 > String
3. 날짜 > Calender

*/

-- 테이블 선언
/*
create table 테이블명 (
    컬럼명 자료형,
    컬럼명 자료형,
    컬럼명 자료형
);

*/
-- 식별자 앞의 타입 접두어를 붙인다. > 헝가리안 표기법 + 카멜 표기법
CREATE table tblType (
    --num number
    --num number(3)  -- 범위 : -999 ~ 999 + 정수
    --num number(4,2)  -- 범위 : -99.99 ~ 99.99 > 실수자리 포함 전체 자리
    
    --txt char(10)  -- 범위 : 최대 10바이트까지의 문자열 / -txt char(10 byte) byte가 생략
    --txt char(10 char) -- 범위 : 최대 10글자까지의 문자열(잘 쓰지않는다.)
    --txt varchar2(10)
   
    --txt1 char(10),
    --txt2 varchar2(10)
    
    regdate date
    
);

DROP table tblType;

-- 데이터 추가
-- INSERT INTO 테이블 (컬럼) values (값);
INSERT into tblType (num) values (100);  --정수 리터럴
INSERT into tblType (num) values (3.14);  --실수 리터럴
INSERT into tblType (num) values (3.99);  --반올림o
INSERT into tblType (num) values (999);
--INSERT into tblType (num) values (1234);  --

INSERT into tblType (num) values (1234567890);
INSERT into tblType (num) values (12345678901234567890);
INSERT into tblType (num) values (123456789012345678901234567890);
INSERT into tblType (num) values (12345678901234567890123456789012345678901234567890);

-- ***SQL은 암시적인 형변환이 자주 일어난다.
INSERT into tblType (txt) values (100);

INSERT into tblType (txt) values ('홍길동');

--오라클 인코딩 : UTF-8 > 영어(1바이트), 한글(3바이트)
INSERT into tblType (txt) values ('abcdabcdab');
-- value too large for column "HR"."TBLTYPE"."TXT" (actual: 11, maximum: 10)
INSERT into tblType (txt) values ('abcdabcdaba');

INSERT into tblType (txt) values ('홍길동입니다.');   --(actual: 19, maximum: 10)

INSERT into tblType (txt1, txt2) values ('abc', 'abc');


INSERT into tblType (regdate) values ('2023-08-25'); --23/08/25





-- 데이터 가져오기 > 결과테이블(Result Table), 결과셋(ResultSet)
SELECT * FROM tblType;

commit;
-- ***** 오라클은 모든 식별자를 대문자로 저장한다.






/*
DB Client Tools
1. SQL Developer : 오라클 제공. 무료. 그럭저럭
2. SQL*Plus : 오라클 제공. 오라클 설치될 때 같이 설치된다. CLI형식
3. SQLGate
4. Orange
5. DBeaver : 무료, 꽤 괜찮다.
6. ..
7. Toad
8. DataGrip(jetbrains) > 학교 계정(이메일) > 1년단위로 갱신

*/

