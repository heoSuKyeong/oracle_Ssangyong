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
DROP TABLE TBLSTAFF ;
DROP TABLE tblProject ;
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


-- 비디오 + 장르 > 조인
SELECT 
	v.name,
	g.name,
	g.price
FROM tblgenre g
	INNER JOIN tblvideo v
		ON g.seq = v.genre;

-- 비디오 + 장르 + 대여
SELECT 
	v.name,
	g.name,
	g.price,
	r.MEMBER,
	r.rentdate,
	r.retdate
FROM tblgenre g
	INNER JOIN tblvideo v
		ON g.seq = v.genre
			INNER JOIN tblrent r
				ON v.seq = r.video;

-- 비디오 + 장르 + 대여 + 회원
SELECT 
	v.name,
	g.name,
	g.price,
	r.MEMBER,
	m.name,
	r.rentdate,
	r.retdate
FROM tblgenre g
	INNER JOIN tblvideo v
		ON g.seq = v.genre
			INNER JOIN tblrent r
				ON v.seq = r.video
					INNER JOIN tblmember m
						ON r.MEMBER = m.seq;

-- 직원 + 부서 + 도시 + 국가 + 대륙
SELECT 
	e.first_name ||' '|| e.last_name AS 직원명,
	d.department_name AS 부서명,
	l.city AS 도시명,
	c.country_name AS 국가명,
	r.region_name AS 대륙명,
	j.job_title AS 직업명
FROM employees e
	INNER JOIN departments d
		ON e.department_id = d.department_id
			INNER JOIN locations l
				ON l.location_id = d.location_id
					INNER JOIN countries c
						ON c.country_id = l.country_id
							INNER JOIN  regions r
								ON r.region_id = c.region_id
									INNER JOIN jobs j
										ON j.job_id = e.job_id;

/*
3. 외부 조인, OUTER JOIN ***
- 내부 조인 결과 + 내부 조인에 포함되지 않았던 부모 테이블의 나머지 레코드를 합하는 조인

select
	컬럼리스트
from 테이블A
	inner join 테이블B
		on 테이블A.컬럼 = 테이블B.컬럼;

select
	컬럼리스트
from 테이블A
	(left|right) outer join 테이블B
		on 테이블A.컬럼 = 테이블B.컬럼;
									
*/

SELECT * FROM tblcustomer;
SELECT * FROM tblsales;

INSERT INTO tblcustomer VALUES (4, '호호호', '010-1234-1234', '서울시');
INSERT INTO tblcustomer VALUES (5, '이순신', '010-1234-1234', '서울시');

COMMIT;

-- 내부조인
-- 물건을 *한번이라도 구매한 이력이 있는* 고객의 정보와 그 고객의 구매내역을 가져오시오.
SELECT 
	*
FROM tblcustomer c
	INNER OUTER JOIN tblsales s			
		ON c.seq = s.cseq;

	

SELECT 
	*
FROM tblcustomer c
	LEFT OUTER JOIN tblsales s			
		ON c.seq = s.cseq;
									
SELECT 
	*
FROM tblcustomer c
	RIGHT OUTER JOIN tblsales s			
		ON c.seq = s.cseq;									
							
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

UPDATE tblproject SET staff_seq = 2 WHERE staff_seq = 3;

-- 프로젝트 1건 이상 담당하고 있는 직원 조회
SELECT *
FROM tblstaff s
	INNER JOIN tblproject p
		ON s.seq = p.staff_seq;

-- 담당 프로젝트의 유무와 상관없이 모든 직원 조회
SELECT *
FROM tblstaff s
	LEFT OUTER JOIN tblproject p
		ON s.seq = p.staff_seq;


SELECT *
FROM tblstaff s
	RIGHT OUTER JOIN tblproject p
		ON s.seq = p.staff_seq;
		
-- 한번 이상 대여된 비디오 조회	
SELECT *
FROM tblvideo v
	INNER JOIN tblrent r
		ON v.seq = r.video;

-- 한번도 대여되지 않은 비디오 재고 확인 가능
SELECT *
FROM tblvideo v
	LEFT OUTER JOIN tblrent r
		ON v.seq = r.video;	

-- 한번 이상 대여했던 회원과 대여 내역
SELECT *
FROM tblmember m
	INNER JOIN tblrent r
		ON m.seq = r.MEMBER;

-- 대여를 한번도 하지 않은 고객 명단
SELECT *
FROM tblmember m
	LEFT OUTER JOIN tblrent r
		ON m.seq = r.MEMBER
			WHERE r.seq IS null;	

-- 대여 기록이 있는 회원의 이름 + 대여 횟수
SELECT 
	m.name,
	count(*)
FROM tblmember m
	INNER JOIN tblrent r
		ON m.seq = r.MEMBER
GROUP BY m.name;	


SELECT 
	m.name,
	count(r.seq)
FROM tblmember m
	LEFT outer JOIN tblrent r
		ON m.seq = r.MEMBER
GROUP BY m.name;		
	

/*

4. 셀프 조인, SELF JOIN
- 1개의 테이블을 사용하는 조인
- 테이블이 자기 스스로와 관계를 맺는 경우

- 다중 조인(2개) + 내부 조인
- 다중 조인(2개) + 외부 조인

- 셀프 조인(1개) + 내부 조인
- 셀프 조인(1개) + 외부 조인
*/

-- 직원 테이블 
CREATE TABLE tblSelf (
	seq NUMBER PRIMARY KEY,						--직원번호(PK)
	name varchar2(30) NOT NULL,					--직원명
	departments varchar2(30) NOT NULL,			--부서명
	super NUMBER NULL REFERENCES tblself(seq)	--상사번호(FK)
);


INSERT INTO tblself VALUES (1, '홍사장', '사장', null);
INSERT INTO tblself VALUES (2, '김부장', '영업부', 1);
INSERT INTO tblself VALUES (3, '박과장', '영업부', 2);
INSERT INTO tblself VALUES (4, '최대리', '영업부', 3);
INSERT INTO tblself VALUES (5, '정사원', '영업부', 4);
INSERT INTO tblself VALUES (6, '이부장', '개발부', 1);
INSERT INTO tblself VALUES (7, '하과장', '개발부', 6);
INSERT INTO tblself VALUES (8, '신과장', '개발부', 6);
INSERT INTO tblself VALUES (9, '황대리', '개발부', 7);
INSERT INTO tblself VALUES (10, '허사원', '개발부', 9);

COMMIT;

-- 직원 명단 + 상사의 이름 조회
-- 1. join
-- 2. Sub Query
-- 3. 계층형 쿼리
SELECT *
FROM tblself;

-- join --
SELECT 
	b.name AS 직원명,
	b.departments AS 부서명,
	a.name AS 상사이름
FROM tblself a						--부모테이블 역할
	RIGHT outer JOIN tblself b			--자식테이블 역할
		ON a.seq = b.super;

SELECT
	name AS 직원명,
	departments AS 부서명,
	(SELECT name FROM tblself WHERE seq = a.super) AS 상사명
FROM tblself a;

/*
5. 전체 외부 조인, FULL OUTER JOIN
- 서로 참조하고 있는 관계에서 사용

*/

--커플인 남자, 여자 가져오시오.
SELECT 
	m.name,
	w.name
FROM tblmen m
	INNER JOIN tblwomen w
		ON m.name = w.couple;
	
SELECT 
	m.name,
	w.name
FROM tblmen m
	LEFT OUTER JOIN tblwomen w
		ON m.name = w.couple;

SELECT 
	m.name,
	w.name
FROM tblmen m
	RIGHT OUTER JOIN tblwomen w
		ON m.name = w.couple;

-- left + right outer join
-- 커플 + 남자 솔로 + 여자 솔로
SELECT 
	m.name,
	w.name
FROM tblmen m
	FULL OUTER JOIN tblwomen w
		ON m.name = w.couple;