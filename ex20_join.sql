-- ex20_join.sql
/*

관계형 데이터에비스 시스템이 지양하는 것들
- 테이블 다시 수정해야 고쳐지는 것들 >> 구조적인 문제이다.
- 구조적인 문제로 테이블을 다시 수정해야 변경이 가능하다.

1. 테이블에 기본키가 없는 상태 > 데이터 조작이 곤란하다.
2. null이 많은 상태의 테이블 > 공간 낭비
3. 데이터가 중복되는 상태 > 공간 낭비 + 데이터 무결성 위험
4. 하나의 속성값이 원자값이 아닌 상태

*/

-- 1. 테이블에 기본키가 없는 상태 --------
CREATE TABLE tblTest
(
	name varchar2(30) NOT NULL,
	age number(3) NOT NULL,
	nick varchar2(30) NOT NULL
);

-- 홍길동, 20, 강아지
-- 아무개, 22, 바보
-- 테스트, 20, 반장
-- 홍길동, 20, 강아지 > 중복데이터 조작 어려움

-- 홍길동 별명 수정
UPDATE tblTest SET nick = '고양이' WHERE name = '홍길동';	-- 식별 불가능


-- 2. null이 많은 상태의 테이블 ----------
CREATE TABLE tblTest
(
	name varchar2(30) PRIMARY KEY,
	age number(3) NOT NULL,
	nick varchar2(30) NOT NULL,
	hobby varchar2(100) NULL
);

-- 홍길동, 20, 강아지, null
-- 아무개, 22, 고양이, 게임
-- 이수신, 24, 거북이, '수영, 활쏘기'


-- 3. 데이터가 중복되는 상태 -----------
-- 직원정보
-- 직원(번호(PK), 직원명, 급여, 거주지, 담당프로젝트)
CREATE TABLE tblStaff
(
	seq NUMBER PRIMARY KEY,
	name varchar2(30) NOT NULL,
	salary NUMBER NOT NULL,
	address varchar2(300) NOT NULL,
	project varchar2(300)
);

INSERT INTO tblStaff (seq, name, salary, address, project)
	values(1, '홍길동', 300, '서울시', '홍콩 수출');

INSERT INTO tblStaff (seq, name, salary, address, project)
	values(2, '아무개', 250, '인천시', 'TV 광고');

INSERT INTO tblStaff (seq, name, salary, address, project)
	values(3, '하하하', 350, '의정부시', '매출 분석');

SELECT * FROM tblstaff;

-- '홍길동'에게 담당 프로젝트 1건 추가
-- UPDATE tblstaff SET project = project + ',고객 관리' WHERE seq = 1;		--절대 금지(원자값 위반)
INSERT INTO tblstaff VALUES (4, '홍길동', 300, '서울시', '고객 관리');		--seq 고유 번호가 

INSERT INTO tblStaff (seq, name, salary, address, project)
	values(5, '호호호', 250, '서울시', '게시판 관리, 회원 응대');

INSERT INTO tblStaff (seq, name, salary, address, project)
	values(6, '후후후', 250, '부산시', '불량 회원 응대');

-- TV 광고 담당자 확인
SELECT *
FROM tblstaff
WHERE project = 'TV 광고';

-- 회원 응대 담당자 확인
SELECT *
FROM tblstaff
WHERE project like '%회원 응대%';

-- 해결 > 테이블 재구성
DROP TABLE tblstaff;
DROP TABLE tblproject;


-- 직원정보
-- 직원(번호(PK), 직원명, 급여, 거주지)
CREATE TABLE tblStaff
(
	seq NUMBER PRIMARY KEY,
	name varchar2(30) NOT NULL,
	salary NUMBER NOT NULL,
	address varchar2(300) NOT NULL
);

-- 프로젝트 정보 분리
CREATE TABLE tblProject(
	seq NUMBER PRIMARY KEY, 			-- 프로젝트 번호(PK)
	project varchar2(100) NOT NULL,		-- 프로젝트명
	staff_seq NUMBER NOT NULL			-- 담당 직원 번호
);

INSERT INTO tblStaff (seq, name, salary, address)
	values(1, '홍길동', 300, '서울시');

INSERT INTO tblStaff (seq, name, salary, address)
	values(2, '아무개', 250, '인천시');

INSERT INTO tblStaff (seq, name, salary, address)
	values(3, '하하하', 350, '의정부시');

INSERT INTO tblproject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (3, '매출 분석', 3);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (4, '노조 협상', 1);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2);

SELECT * FROM tblstaff;
SELECT * from tblProject;

-- 'TV 광고' 담당자
SELECT staff_seq FROM tblProject WHERE project = 'TV 광고';

SELECT *
FROM tblstaff
WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = 'TV 광고');

-- A. 신입사원 입사 > 신규 프로젝트 담당
-- A.1. 신입사원 추가
INSERT INTO tblStaff (seq, name, salary, address)
	values(4, '호호호', 250, '성남시');

-- A.2. 신규 프로젝트 추가
INSERT INTO tblproject (seq, project, staff_seq) VALUES (6, '자재 매입', 4);

-- A.3. 신규 프로젝트 추가 > 담당자 5번 없음 > 에러는 안나지만 논리 오류가 난다.
INSERT INTO tblproject (seq, project, staff_seq) VALUES (7, '고객 유치', 5);

SELECT *
FROM tblstaff
WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = '홍콩 수출');

-- B. '홍길동' 퇴사
-- B.1. '홍길동' 삭제 > 프로젝트 담당자 변경되어야 함.
DELETE FROM tblStaff WHERE seq=1;

-- B.2 '홍길동' 삭제 > 인수인계(위임) 절차 필요
UPDATE tblproject SET staff_seq = 2 WHERE staff_seq = 1;

-- B.3. '홍길동' 삭제
DELETE FROM tblStaff WHERE seq=1;

--[테이블 간 관계 설정]----------------------------------------------------------------------

-- 직원(번호(PK), 직원명, 급여, 거주지)
CREATE TABLE tblStaff
(
	seq NUMBER PRIMARY KEY,
	name varchar2(30) NOT NULL,
	salary NUMBER NOT NULL,
	address varchar2(300) NOT NULL
); -- 부모테이블

-- 프로젝트 테이블 재생성(FK 추가)
CREATE TABLE tblProject(
	seq NUMBER PRIMARY KEY, 								-- 프로젝트 번호(PK)
	project varchar2(100) NOT NULL,							-- 프로젝트명
	staff_seq NUMBER NOT NULL REFERENCES tblstaff(seq)		-- 담당 직원 번호(FK)
); -- 자식테이블

INSERT INTO tblStaff (seq, name, salary, address)
	values(1, '홍길동', 300, '서울시');

INSERT INTO tblStaff (seq, name, salary, address)
	values(2, '아무개', 250, '인천시');

INSERT INTO tblStaff (seq, name, salary, address)
	values(3, '하하하', 350, '의정부시');

INSERT INTO tblproject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (3, '매출 분석', 3);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (4, '노조 협상', 1);
INSERT INTO tblproject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2);

-- ORA-02291: integrity constraint (HR.SYS_C007129) violated - parent key not found
-- 신규 프로젝트 추가 > 부모 테이블에 5번이 없어 에러난다.
INSERT INTO tblproject (seq, project, staff_seq) VALUES (7, '고객 유치', 5);

-- ORA-02292: integrity constraint (HR.SYS_C007129) violated - child record found
-- '홍길동' 삭제 > 자식 테이블이 참조하고 있어 에러난다.
DELETE FROM tblStaff WHERE seq=1;


-- *** 자식테이블보다 부모테이블이 먼저 발생한다.
-- 고객 테이블 (부모테이블)
create table tblCustomer (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    tel varchar2(15) not null,      --연락처
    address varchar2(100) not null  --주소
);

-- 판매내역 테이블 (자식테이블)
create table tblSales (
    seq number primary key,                             --판매번호(PK)
    item varchar2(50) not null,                         --제품명
    qty number not null,                                --판매수량
    regdate date default sysdate not null,              --판매날짜
    cseq number not null references tblCustomer(seq)    --판매한 고객번호(FK)
);


-- [비디오 대여점]

-- 장르 테이블
create table tblGenre (
    seq number primary key,         --장르 번호(PK)
    name varchar2(30) not null,     --장르명
    price number not null,          --대여가격
    period number not null          --대여기간(일)
);

-- 비디오 테이블
create table tblVideo (
    seq number primary key,                         --비디오 번호(PK)
    name varchar2(100) not null,                    --비디오 제목
    qty number not null,                            --보유 수량
    company varchar2(50) null,                      --제작사
    director varchar2(50) null,                     --감독
    major varchar2(50) null,                        --주연배우
    genre number not null references tblGenre(seq)  --장르 번호(FK)
);


-- 고객 테이블
create table tblMember (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    grade number(1) not null,       --고객등급(1,2,3)
    byear number(4) not null,       --생년
    tel varchar2(15) not null,      --연락처
    address varchar2(300) null,     --주소
    money number not null           --예치금
);

-- 대여 테이블
create table tblRent (
    seq number primary key,                             --대여번호(PK)
    member number not null references tblMember(seq),   --회원번호(FK)
    video number not null references tblVideo(seq),     --비디오번호(FK)
    rentdate date default sysdate not null,             --대여시각
    retdate date null,                                  --반납시각
    remark varchar2(500) null                           --비고
);

SELECT * FROM tblGenre;
SELECT * FROM tblvideo;
SELECT * FROM tblmember;
SELECT * FROM tblRent;

/*

조인, Join
- (서로 관계를 맺은) 2개 이상의 테이블을 1개의 결과셋으로 만드는 기술

조인의 종류
1. 단순 조인, CROSS JOIN
2. 내부 조인, INNER JOIN ***
3. 외부 조인, OUTER JOIN ***
4. 셀프 조인, SELF JOIN
5. 전체 외부 조인, FULL OUTER JOIN

*/
/*
 
1. 단순 조인, CROSS JOIN, 카티션곱(데카르트곱)
- A 테이블 X B 테이블
- select 컬럼리스트 from 테이블A CROSS JOIN 테이블B;
- 가치있는 행과 가치없는 행이 섞여 있어 별로 쓸모없다. 
- 더미데이터 생성용
*/

SELECT * FROM tblcustomer;
SELECT * FROM tblSales;

SELECT * FROM tblcustomer CROSS JOIN tblsales;	-- ANSI-SQL cross join 구문
SELECT * FROM tblcustomer , tblsales;			-- Oracle 전용 cross join 구문

/*
2. 내부 조인, INNER JOIN 
select 컬럼리스트 from 테이블A INNER JOIN 테이블B ON 테이블A.PK = 테이블B.FK;

*/

-- 직원 테이블, 프로젝트 테이블
SELECT *
FROM tblstaff
INNER JOIN tblproject
	ON tblstaff.seq = tblproject.staff_seq;

-- 별칭을 준 시점부터 테이블 이름은 별칭으로 변경된다.
SELECT 
	s.seq,
	s.name,
	p.seq,
	p.project
FROM tblstaff s INNER JOIN tblproject p ON s.seq = p.staff_seq
ORDER BY p.seq;


-- 고객 테이블, 판매 테이블
SELECT 
	c.name AS 고객명,
	s.item AS 제품명,
	s.qty AS 개수
FROM tblCustomer c
	INNER JOIN tblsales s
		ON c.seq = s.cseq;

	
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT 
	m.name,
	w.name
FROM tblmen m
	INNER JOIN tblwomen w
		ON m.name = w.couple;

-- 서로 연관없는 데이터이지만 seq 번호가 일치하여 조인이 가능하다 
SELECT *
FROM tblstaff st
	INNER JOIN tblsales sa
		ON st.seq = sa.cseq;
	
	
-- 고객명(tblCustomer) + 판매물품명(tblSales)
-- 1. 조인
SELECT 
	c.name AS 고객명,
	s.item AS 물품명
FROM tblCustomer c
	INNER JOIN tblSales s
		ON c.seq = s.cseq;

-- 2. 서브 쿼리 (상관 서브 쿼리)
-- 메인 쿼리 > 자식 테이블
-- 상관 서브 쿼리 > 메인 테이블
SELECT 
	(SELECT name FROM tblCustomer c WHERE c.seq = s.cseq) AS 고객명,
	item AS 물품명
FROM tblSales s;



