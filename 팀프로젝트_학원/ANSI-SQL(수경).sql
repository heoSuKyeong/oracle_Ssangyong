
-- 회사 관리
-- B07-01. 회사 등록 및 관리

-- 1. 연계 회사를 조회하는 경우 기관과 연계된 회사의 이름을 입력하여 회사 정보(회사명, 급여, 회사 위치, 회사 규모), 연계 시작 날짜, 요구하는 과목, 요구 성적을 출력한다.

/*
SELECT 
	c.companyname AS 회사명,
	c.averagesalary AS 평균급여,
	c.companylocation AS 회사위치,
	c.companysize AS 회사규모,
	t.subjectname AS 요구과목,
	r.score AS 요구성적
FROM TBLCOMPANY c
	INNER JOIN tblrequirement r
	ON c.companynum = r.companynum
		INNER JOIN tblsubject t
			ON t.subjectnum = r.subjectnum
WHERE c.COMPANYNAME = <회사명>;
 */

SELECT 
	c.companyname AS 회사명,
	c.averagesalary AS 평균급여,
	c.companylocation AS 회사위치,
	c.companysize AS 회사규모,
	t.subjectname AS 요구과목,
	r.score AS 요구성적
FROM TBLCOMPANY c
	INNER JOIN tblrequirement r
	ON c.companynum = r.companynum
		RIGHT OUTER JOIN tblsubject t
			ON t.subjectnum = r.subjectnum
WHERE c.COMPANYNAME = '삼성';

-- 2. 연계 회사가 요구하는 과목 및 요구 성적을 만족하는 교육생을 조회하는 경우 조건에 만족하는 교육생을 성적과 출결 정보를 기준으로 내림차순 정렬한다.

/*        
SELECT 
	c.companyname AS 회사명,
	t.subjectname AS 회사요구과목,
	r.score AS 회사요구성적,
	s.studentname AS 교육생이름,
	(ts.attendancescore+ts.writtenscore+ts.practicalscore) AS 교육생성적
FROM TBLCOMPANY c
	INNER JOIN tblrequirement r
	ON c.companynum = r.companynum
		INNER JOIN tblsubject t
			on t.subjectnum = r.subjectnum
				INNER JOIN tblsubjectdetail sd
					ON sd.subjectnum = r.subjectnum
						INNER JOIN tbltest test
							ON test.subjectdetailnum = sd.subjectdetailnum
								INNER JOIN tbltestscore ts
									ON ts.testnum = test.testnum
										INNER JOIN vwstudent s
											ON s.studentNum = ts.studentnum
WHERE c.COMPANYNAME = <회사명> AND (ts.attendancescore+ts.writtenscore+ts.practicalscore) >= r.score
ORDER BY 교육생성적 desc;
*/                     
SELECT 
	c.companyname AS 회사명,
	t.subjectname AS 회사요구과목,
	r.score AS 회사요구성적,
	s.studentname AS 교육생이름,
	(ts.attendancescore+ts.writtenscore+ts.practicalscore) AS 교육생성적
FROM TBLCOMPANY c
	INNER JOIN tblrequirement r
	ON c.companynum = r.companynum
		INNER JOIN tblsubject t
			on t.subjectnum = r.subjectnum
				INNER JOIN tblsubjectdetail sd
					ON sd.subjectnum = r.subjectnum
						INNER JOIN tbltest test
							ON test.subjectdetailnum = sd.subjectdetailnum
								INNER JOIN tbltestscore ts
									ON ts.testnum = test.testnum
										INNER JOIN vwstudent s
											ON s.studentNum = ts.studentnum
WHERE c.COMPANYNAME = '와치텍' AND (ts.attendancescore+ts.writtenscore+ts.practicalscore) >= r.score
ORDER BY 교육생성적 desc;


-- 3. 연계 회사에 재직중인 교육생을 조회하는 경우 회사에 재직중인 교육생이 이전에 수료한 과정명을 출력한다.

SELECT
	c.companyname AS 연계회사명,
	j.jobdate AS 취업일,
	student.studentname AS 교육생이름,
	course.coursename AS 수료과정명
FROM tblcompany c
	INNER JOIN tbljob j
	 ON c.companynum = j.companynum
	 	INNER JOIN tblstudent s
	 	ON s.studentnum = j.studentnum
	 		INNER JOIN tblcoursedetail cd
	 		ON cd.coursedetailnum = s.coursedetailnum
	 			INNER JOIN vwstudent student
	 			ON student.studentnum = s.studentnum
	 				INNER JOIN tblcourse course
	 				ON course.coursenum = cd.coursenum
WHERE c.isconnection = 1
ORDER BY 취업일 DESC;

-- 4. 연계 회사 등록 및 조건을 입력한다.
-- 연계 회사 등록
/*
INSERT INTO tblcompany (companyNum, companyName, companyType, companySize, averageSalary, companyLocation, isConnection) 
			VALUES (seqCompany.nextVal, <회사명>, <회사형태>, <회사규모>, <평균급여>, <회사위치>, <연계회사여부>);
*/
INSERT INTO tblcompany (companyNum, companyName, companyType, companySize, averageSalary, companyLocation, isConnection) 
			VALUES (seqCompany.nextVal, '위버로프트', 'IT리더', '스타트업', 3854, '경기 이천시', 0);

-- 연계 회사 조건 등록
/*		
INSERT INTO tblrequirement (requirementNum, companyNum, subjectNum, score) VALUES (seqRequirement.nextVal, <회사번호>, <과목번호>, <요구성적>);	
*/		
INSERT INTO tblrequirement (requirementNum, companyNum, subjectNum, score) VALUES (seqRequirement.nextVal, 1, 10, 92);

-- 조건 삭제
/*
DELETE FROM tblrequirement WHERE requirementnum = (SELECT 
													r.companynum
													FROM tblrequirement r
														INNER JOIN tblcompany c
														 ON r.companynum = c.companynum
													WHERE c.companyname=<회사명>);
*/
DELETE FROM tblrequirement WHERE requirementnum = (SELECT 
													r.companynum
													FROM tblrequirement r
														INNER JOIN tblcompany c
														 ON r.companynum = c.companynum
													WHERE c.companyname='지티플러스');

-- 연계 회사 수정 / 조건 수정
UPDATE tblcompany SET companysize = '대기업' WHERE companynum = '44';

UPDATE tblrequirement 
	SET score = 80 , subjectnum = 30
	WHERE requirementnum ='10';


------------------------------------------------------------------------------------------------------------------------------


-- B05-01. 비품 등록 및 관리
-- 1. 현재 있는 비품 리스트(컴퓨터, 모니터, 키보드 등)을 조회한다.
SELECT
	id.itemdetailnum AS 비품번호,
	i.itemcategory AS 비품분류,
	id.itemname AS 비품명,
	id.itemcondition AS 비품상태,
	id.lectureroomnum AS "비품위치(강의실번호)"
FROM tblitem i
	INNER JOIN tblitemdetail id
		ON i.itemnum = id.itemnum;


-- 2. 비품이 새로 들어오면 추가한다.
/*
INSERT INTO tblItemDetail (itemDetailNum, itemNum, itemName, itemCondition, lectureRoomNum)
			VALUES (seqItemDetail.nextVal, <비품분류번호>, <비품명>, <비품상태>, <강의실번호>);
*/
INSERT INTO tblItemDetail (itemDetailNum, itemNum, itemName, itemCondition, lectureRoomNum)
			VALUES (seqItemDetail.nextVal, '1', 'Aimecca AM-205LE', '상', '5');	
	

-- 3. 비품 수리 신청이 들어오면 확인 후 수리여부를 수정한다.
/*
UPDATE tblitemchange 
	SET isreplacement = '1'
		WHERE itemchangenum = <비품교체신청번호>;
*/
UPDATE tblitemchange 
	SET isreplacement = '1'
		WHERE itemchangenum = '24';

	
-- 비품 삭제
-- DELETE FROM tblitemdetail WHERE itemdetailnum = <비품상세번호>;
DELETE FROM tblitemdetail WHERE itemdetailnum = '1';


	
-- B06-01. 출입 카드 등록 및 관리	
-- 1. 새로 교육생을 등록할 시, 새로운 출입카드를 등록하고 교육생에게 배부한다.
-- 교육생명단에 insert 발생 시, 출입카드리스트에 교육생을 추가하는 프로시저 필요!!!**********

-- INSERT INTO tblAccessCard (accessCardNum, studentNum, isAccessCard) VALUES (seqAccessCard.nextVal, <교육생번호>, <지급여부>);
INSERT INTO tblAccessCard (accessCardNum, studentNum, isAccessCard) VALUES (seqAccessCard.nextVal, '7777', 0);	

-- 2. 교육생에게 배부한 출입카드에 대해 재발급 신청이 들어올 시, 재발급 신청 사유를 확인할 수 있다.(select)

SELECT
	c.accesscardreissuenum AS 출입카드재발급번호,
	v.studentname AS 교육생이름,
	c.isreissue AS 배부여부,
	c.reissuereason AS 분실사유
FROM tblaccesscardreissue c
	INNER JOIN vwstudent v	
		ON c.studentnum = v.studentnum
ORDER BY to_number(c.accesscardreissuenum);

-- 3. 재발급 신청이 들어온 교육생에 한해, 새로운 출입카드를 등록하고 배부한다.(update)
/*
UPDATE tblaccesscardreissue
	SET isreissue = '1'
		WHERE accesscardreissuenum = <출입카드재발급번호>;
*/
UPDATE tblaccesscardreissue
	SET isreissue = '1'
		WHERE accesscardreissuenum = '14';

	
-- 교사

-- C09-01. 비품 교체 신청
-- 1. 교사는 비품에 대해 교체 신청 사유를 기재하여 교체 신청을 할 수 있다.
/*
INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES (seqItemChange.nextVal, <비품상세번호>, <교체사유>, <교체여부>, <교체신청일-금일자동입력>);
*/	
INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES (seqItemChange.nextVal, '806', '작동 고장', 0, sysdate);


		
-- 교육생		
		
-- D03-01. 출입카드 조회 및 재신청
-- 1. 본인에게 배부된 출입카드를 분실하였을 경우, 분실사유를 기재하여 새 출입카드를 신청한다.
-- 수료 및 탈락된 교육생은 재발급 신청할 수 없다. >> 프로시저로 만들기************
		
INSERT INTO tblAccessCardReissue (accessCardReissueNum, studentNum, isReissue, reissueReason)
			VALUES (seqAccessCardReissue.nextVal, '503', 0, '분실');



-- D07-01. 비품 교체 신청
-- 1. 교육생은 비품에 대해 교체 신청 사유를 기재하여 교체 신청을 할 수 있다.
/*
INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES (seqItemChange.nextVal, <비품상세번호>, <교체사유>, <교체여부>, <교체신청일-금일자동입력>);
*/	
INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES (seqItemChange.nextVal, '806', '작동 고장', 0, sysdate);

			
		
		
--------------------------------------------
-- 뷰 생성

-- 교육생 이름
CREATE OR REPLACE VIEW vwStudent
AS
SELECT
   s.studentNum AS studentNum,
   i.interviewerName AS studentName,
   i.interviewerSsn AS studentSsn,
   i.interviewerTel AS studentTel
FROM tblInterviewer i
   INNER JOIN tblInterviewRegister r
      ON i.interviewerNum = r.interviewerNum
         INNER JOIN tblStudent s
            ON r.interviewRegiNum = s.interviewRegiNum;		

           
           
CREATE OR REPLACE VIEW vwCourseGather
AS
SELECT
	c.coursenum,
   c.courseName,
   s.subjectnum,
   s.subjectname,
   sd.subjectdetailnum,
   cd.coursedetailnum
FROM tblCourseDetail cd
   INNER JOIN tblSubjectDetail sd
      ON cd.courseDetailNum = sd.coursedetailnum
         INNER JOIN tblCourse c
            ON cd.courseNum = c.courseNum
               INNER JOIN tblSubject s
                  ON sd.subjectNum = s.subjectNum
                     INNER JOIN tblTextBook tb
                        ON s.subjectNum = tb.subjectNum
                           INNER JOIN tblTeacher t
                              ON cd.teacherNum = t.teacherNum;
  
                                
SELECT * FROM vwCourseGather;



COMMIT;


SELECT * FROM tblstudent;