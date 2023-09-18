
set serveroutput on;  


-- 회사 관리
-- B07-01. 회사 등록 및 관리

-- 1. 회사를 조회하는 경우 기관과 회사의 이름을 입력하여 회사 정보(회사명, 급여, 회사 위치, 회사 규모), 연계 시작 날짜, 요구하는 과목, 요구 성적을 출력한다.

-- 조회
create or replace procedure procCom(
    pcompany varchar2,
    presult out varchar2
)
is
begin
    DBMS_OUTPUT.PUT_LINE('────────────────────── 회사 정보 ──────────────────────');
    for company in (
        
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
        WHERE c.COMPANYNAME = pcompany
    
    )
    loop
    --회사 정보 출력
    DBMS_OUTPUT.PUT_LINE('회사명: ' || company.회사명);
    DBMS_OUTPUT.PUT_LINE('평균급여: ' || company.평균급여);
    DBMS_OUTPUT.PUT_LINE('회사위치: ' || company.회사위치);
    DBMS_OUTPUT.PUT_LINE('회사규모: ' || company.회사규모);
    DBMS_OUTPUT.PUT_LINE('요구과목: ' || company.요구과목);
    DBMS_OUTPUT.PUT_LINE('요구성적: ' || company.요구성적);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
    
    
exception
    WHEN OTHERS THEN
        presult := '회사 정보 조회 실패했습니다.';
end procCom;
/


declare
    vcompany tblcompany.companyname%type := '노스스타컨설팅';
    vresult varchar(30);
begin
    procCom(vcompany, vresult);
    DBMS_OUTPUT.PUT_LINE(vresult);
end;
/


-- 2. 연계 회사가 요구하는 과목 및 요구 성적을 만족하는 교육생을 조회하는 경우 조건에 만족하는 교육생을 성적과 출결 정보를 기준으로 내림차순 정렬한다.
create or replace procedure procRequirementStudent(
    pcompany varchar2
)
is
begin
    DBMS_OUTPUT.PUT_LINE('────────────────────── 요구 조건 만족 교육생 정보 ──────────────────────');
    for company in (
        
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
        WHERE c.COMPANYNAME = pcompany AND (ts.attendancescore+ts.writtenscore+ts.practicalscore) >= r.score
        ORDER BY 교육생성적 desc
    
    )
    loop
    --회사 정보 출력
    DBMS_OUTPUT.PUT_LINE('회사명: ' || company.회사명);
    DBMS_OUTPUT.PUT_LINE('회사요구과목: ' || company.회사요구과목);
    DBMS_OUTPUT.PUT_LINE('회사요구성적: ' || company.회사요구성적);
    DBMS_OUTPUT.PUT_LINE('교육생이름: ' || company.교육생이름);
    DBMS_OUTPUT.PUT_LINE('교육생성적: ' || company.교육생성적);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
exception
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('요구 조건 만족 교육생 정보 조회 실패했습니다.');
end procRequirementStudent;
/


declare
    vcompany tblcompany.companyname%type := '노스스타컨설팅';
begin
    procRequirementStudent(vcompany);
end;
/


-- 3. 연계 회사에 재직중인 교육생을 조회하는 경우 회사에 재직중인 교육생이 이전에 수료한 과정명을 출력한다.
-- 조회(연계 회사에 재직중인 교육생 조회)

declare
begin
    DBMS_OUTPUT.PUT_LINE('────────────────────── 연계 회사 재직 중인 교육생 정보 ──────────────────────');
    for company in (
        
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
        ORDER BY 취업일 DESC
    
    )
    loop
    DBMS_OUTPUT.PUT_LINE('연계회사명: ' || company.연계회사명);
    DBMS_OUTPUT.PUT_LINE('취업일: ' || company.취업일);
    DBMS_OUTPUT.PUT_LINE('교육생이름: ' || company.교육생이름);
    DBMS_OUTPUT.PUT_LINE('수료과정명: ' || company.수료과정명);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('연계 회사 재직 중인 교육생 조회에 실패했습니다.');
end;
/



-- 4. 연계 회사 등록 및 조건을 입력한다.
-- 등록(연계 회사)
create or replace procedure procAddCom(
    pcompanyname varchar2,
    pcompanytype varchar2,
    pcompanysize varchar2,
    psalary NUMBER,
    plocation varchar2,
    pisconnection NUMBER,
    presult out varchar2      -- 피드백
)
is 
begin
    insert into tblcompany (companyNum, companyName, companyType, companySize, averageSalary, companyLocation, isConnection)
        values ((select nvl(max(lpad(companyNum, 5, '0')), 0) + 1 from tblcompany), pcompanyname, pcompanytype, pcompanysize, psalary, plocation, pisconnection);
        
    presult := '등록에 성공했습니다.'   -- 성공
exception
    when others then
        presult := '등록에 실패했습니다.';   -- 실패
end procAddCom;


declare
    vresult varchar2(30);
begin
    procAddCom('쌍용','si','대기업','12345','서울시 강남구', 1, vresult);
    dbms_output.put_line(vresult);
end;

select * from tblcompany;

-- 등록(연계 회사 조건)
create or replace procedure procAddrequirement(
    pcompanyNum varchar2,
    psubjectNum varchar2,
    pscore number,
    presult out varchar2      -- 피드백
)
is 
begin
    insert into tblrequirement (requirementNum, companyNum, subjectNum, score)
        values ((select nvl(max(lpad(requirementNum, 5, '0')), 0) + 1 from tblrequirement), pcompanyNum, psubjectNum, pscore);
        
    presult := '등록 성공했습니다.';   -- 성공
exception
    when others then
        presult := '등록 실패했습니다.';   -- 실패
end procAddrequirement;
/

declare
    vresult varchar2(30);
begin
    procAddrequirement('1','999',100, vresult);
    dbms_output.put_line(vresult);
end;
/


-- 요구조건 삭제
create or replace procedure procDeleteReq (
    pname in varchar2,
    presult out varchar2
)
is
begin
    DELETE FROM tblrequirement WHERE companynum =  
                                                    (SELECT 
                                                        r.companynum
                                                        FROM tblrequirement r
                                                            INNER JOIN tblcompany c
                                                             ON r.companynum = c.companynum
                                                    WHERE c.companyname=pname);
    
    presult := '삭제 성공했습니다.';  
exception
    when others then
        presult := '삭제 실패했습니다.';  
end procDeleteReq;
/

declare
    vresult varchar2(30);
begin
    procDeleteReq('지티플러스', vresult);    --회사명
    dbms_output.put_line(vresult);
end;
/
select * from tblcompany where compnayname = '삼성';

-- 회사 수정 / 조건 수정
-- 수정(회사 정보)
create or replace procedure procUpdateCom (
    pseq number,        --수정할 항목
    pnum varchar2,       --수정할 회사번호
    pdata varchar2,     --수정할 정보
    presult out varchar2      -- 피드백
)
is 
begin
    DBMS_OUTPUT.PUT_LINE('────────────────────── 회사 정보 수정 ──────────────────────');
    if pseq = 1 then
        update tblcompany
        set companyname = pdata
        where companyNum = pnum;
    elsif pseq = 2 then
        update tblcompany
        set companyType = pdata
        where companyNum = pnum;
    elsif pseq = 3 then
        update tblcompany
        set companySize = pdata
        where companyNum = pnum;
    elsif pseq = 4 then
        update tblcompany
        set averageSalary = to_number(pdata)
        where companyNum = pnum;
    elsif pseq = 5 then
        update tblcompany
        set companyLocation = pdata
        where companyNum = pnum;
    elsif pseq = 6 then
        update tblcompany
        set isConnection = to_number(pdata)
        where companyNum = pnum;
    else
        raise_application_error(-20001, '올바른 수정항목을 선택해주세요.');
    end if;

    presult := '수정 성공했습니다.';   -- 성공
exception
    when others then
        presult := '수정 실패했습니다.';   -- 실패
end procUpdateCom;
/

declare
    vresult varchar2(30);
begin
    -- procUpdateCom(<수정할 항목>, <수정할 회사번호>, <수정할 내용>);
    -- 1. 회사명 2. 회사형태 3. 회사규모 4. 평균급여 5. 회사위치 6. 연계회사여부
    procUpdateCom(2, '43', '대기업', vresult);
    dbms_output.put_line(vresult);
end;
/


-- 수정(연계 회사 조건)
create or replace procedure procUpdaterequirement(
    prequirementNum varchar2,
    pscore number,
    psubjectnum varchar2, 
    presult out varchar2      -- 피드백
)
is 
begin
    
    update tblrequirement
    set score = pscore , subjectnum = psubjectnum
    where requirementNum = prequirementNum;
    
    presult := '수정 성공했습니다.';   -- 성공
exception
    when others then
        presult := '수정 실패했습니다.';   -- 실패
end procUpdaterequirement;
/

declare
    vresult varchar2(30);
begin
    procUpdaterequirement('10',100,'10', vresult);
    dbms_output.put_line(vresult);
end;
/

-- B05-01. 비품 등록 및 관리
-- 1. 현재 있는 비품 리스트(컴퓨터, 모니터, 키보드 등)을 조회한다.

-- 조회
declare
begin
    DBMS_OUTPUT.PUT_LINE('────────────────────── 비품 정보 ──────────────────────');
    for item in (
        
       SELECT
            id.itemdetailnum AS 비품번호,
            i.itemcategory AS 비품분류,
            id.itemname AS 비품명,
            id.itemcondition AS 비품상태,
            id.lectureroomnum AS 소속강의실
        FROM tblitem i
            INNER JOIN tblitemdetail id
                ON i.itemnum = id.itemnum
    
    )
    loop
    DBMS_OUTPUT.PUT_LINE('비품번호: ' || item.비품번호);
    DBMS_OUTPUT.PUT_LINE('비품분류: ' || item.비품분류);
    DBMS_OUTPUT.PUT_LINE('비품명: ' || item.비품명);
    DBMS_OUTPUT.PUT_LINE('비품상태: ' || item.비품상태);
    DBMS_OUTPUT.PUT_LINE('비품위치(강의실번호): ' || item.소속강의실);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('조회 실패했습니다.');
end;
/


-- 2. 비품이 새로 들어오면 추가한다.

-- 추가
create or replace procedure procAddItem(
    pitemNum varchar2,
    pitemName varchar2,
    pitemCondition varchar2,
    plectureRoomNum varchar2,
    presult out varchar2      -- 피드백
)
is 
begin  
    INSERT INTO tblItemDetail (itemDetailNum, itemNum, itemName, itemCondition, lectureRoomNum)
			VALUES ((select nvl(max(lpad(itemDetailNum, 5, '0')), 0) + 1 from tblItemDetail), pitemnum, pitemname, pitemCondition, plectureRoomNum);
    
    presult := '생성 성공했습니다.';   -- 성공
exception
    when others then
        presult := '생성 실패했습니다.';   -- 실패
end procAddItem;
/

declare
    vresult varchar2(30);
begin
    procAddItem('1', 'Aimecca AM-205LE', '상', '1', vresult);
    dbms_output.put_line(vresult);
end;
/


-- 3. 비품 수리 신청이 들어오면 확인 후 수리여부를 수정한다.

-- 수정(수리여부)
create or replace procedure procRepair (
    pitemchangenum varchar2,
    presult out varchar2
)
is
begin
    UPDATE tblitemchange 
        SET isreplacement = '1'
            WHERE itemchangenum = pitemchangenum;
    presult := '수리여부 갱신 성공했습니다.';   -- 성공
exception
    when others then
        presult := '수리여부 갱신 실패했습니다.';   -- 실패
end procRepair;
/


declare
    vresult varchar2(30);
begin
    procRepair('24', vresult);
    dbms_output.put_line(vresult);
end;
/


-- 4. 비품 삭제
-- 삭제
create or replace procedure procDeleteitem(
    pseq varchar2,
    presult out varchar2
)
is
begin
    DELETE FROM tblitemdetail WHERE itemdetailnum = pseq;
        presult := '비품 삭제 성공했습니다.';   -- 성공
exception
    when others then
        presult := '비품 삭제 실패했습니다.';   -- 실패
end procDeleteitem;
/

declare
    vresult varchar2(30);
begin
    procDeleteitem('1', vresult);
    dbms_output.put_line(vresult);
end;


-- B06-01. 출입 카드 등록 및 관리	
-- 1. 새로 교육생을 등록할 시, 새로운 출입카드를 등록하고 교육생에게 배부한다.
-- 교육생명단에 insert 발생 시, 출입카드리스트에 교육생을 추가하는 트리거필요!!!**********

-- 등록
create or replace trigger trgCard
    after
    insert
    on tblstudent
    for each row
declare
    tstudentnum varchar2(30);
begin
    tstudentnum := :new.studentNum;
    INSERT INTO tblAccessCard VALUES ((select nvl(max(lpad(accessCardNum, 5, '0')), 0) + 1 from tblAccessCard), tstudentnum , 0);
     DBMS_OUTPUT.PUT_LINE('교육생 출입카드 등록에 성공했습니다.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('교육생 출입카드 등록에 실패했습니다.');
end trgCard;
/

INSERT INTO tblStudent (studentNum,interviewRegiNum,registrationDate,signUpCnt,courseDetailNum)
			VALUES ('517','1','2022-03-02',1,'1');
 

-- 조회
declare
begin
    DBMS_OUTPUT.PUT_LINE('──────────────────── 출입카드 정보 ─────────────────────');
    for cards in (
        
       SELECT
            c.accessCardNum AS 출입카드번호,
            v.studentname AS 교육생이름,
            c.isAccessCard AS 배부여부
        FROM tblAccessCard c
            INNER JOIN vwstudent v	
                ON c.studentnum = v.studentnum
        ORDER BY to_number(c.accessCardNum)
    
    )
    loop
    DBMS_OUTPUT.PUT_LINE('출입카드번호: ' || cards.출입카드번호);
    DBMS_OUTPUT.PUT_LINE('교육생이름: ' || cards.교육생이름);
    DBMS_OUTPUT.PUT_LINE('배부여부: ' || cards.배부여부);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('출입카드 정보 조회에 실패했습니다.');
end;
/
 

-- 2. 교육생에게 배부한 출입카드에 대해 재발급 신청이 들어올 시, 재발급 신청 사유를 확인할 수 있다.(select)

-- 조회(출입카드 재발급 정보)
declare
begin
    DBMS_OUTPUT.PUT_LINE('──────────────────── 출입카드 재발급 정보 ─────────────────────');
    for card in (
        
       SELECT
            c.accesscardreissuenum AS 출입카드재발급번호,
            v.studentname AS 교육생이름,
            c.isreissue AS 배부여부,
            c.reissuereason AS 분실사유
        FROM tblaccesscardreissue c
            INNER JOIN vwstudent v	
                ON c.studentnum = v.studentnum
        ORDER BY to_number(c.accesscardreissuenum)
    
    )
    loop
    DBMS_OUTPUT.PUT_LINE('출입카드재발급번호: ' || card.출입카드재발급번호);
    DBMS_OUTPUT.PUT_LINE('교육생이름: ' || card.교육생이름);
    DBMS_OUTPUT.PUT_LINE('배부여부: ' || card.배부여부);
    DBMS_OUTPUT.PUT_LINE('분실사유: ' || card.분실사유);
    DBMS_OUTPUT.PUT_LINE('──────────────────────────────────────────────────────────────');
    end loop;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('출입카드 재발급 정보 조회에 실패했습니다.');
end;
/

-- 수정(출입카드 배부여부)
create or replace procedure procUpdateCard(
    paccessCardNum varchar2,
    presult out varchar2
)
is
begin
    
    UPDATE tblaccessCard 
	SET isAccessCard = '1'
	WHERE accessCardNum = paccessCardNum;
    presult := '출입카드 배부여부 갱신 성공했습니다.';   -- 성공
exception
    when others then
        presult := '출입카드 배부여부 갱신 실패했습니다.';   -- 실패
end procUpdateCard;
/

declare
    vresult varchar2(100);
begin
    procUpdateCard('515', vresult);
    dbms_output.put_line(vresult);
end;
/



-- 3. 재발급 신청이 들어온 교육생에 한해, 새로운 출입카드를 등록하고 배부한다.(update)

-- 수정(출입카드 재발급 배부여부)
create or replace procedure procUpdateReCard(
    paccesscardreissuenum varchar2,
    presult out varchar2
)
is
begin
    
    UPDATE tblaccesscardreissue 
	SET isreissue = '1'
	WHERE accesscardreissuenum = paccesscardreissuenum;
    presult := '출입카드 재발급 배부여부 갱신 성공했습니다.';   -- 성공
exception
    when others then
        presult := '출입카드 재발급 배부여부 갱신 실패했습니다.';   -- 실패
end procUpdateReCard;
/

declare
    vresult varchar2(100);
begin
    procUpdateReCard('515', vresult);
    dbms_output.put_line(vresult);
end;
/


-- 교사

-- C09-01. 비품 교체 신청
-- 1. 교사는 비품에 대해 교체 신청 사유를 기재하여 교체 신청을 할 수 있다.

-- 등록
create or replace procedure procApplyChangeItem(
    pitemDetailNum varchar2,
    pitemChangeReason varchar,
    presult out varchar2
)
is
begin
    INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES ((select nvl(max(lpad(itemChangeNum, 5, '0')), 0) + 1 from tblitemChange), pitemDetailNum, pitemChangeReason, 0, sysdate);
    presult := '비품 교체 신청 등록 성공했습니다.';   -- 성공
exception
    when others then
        presult := '비품 교체 신청 등록 실패했습니다.';   -- 실패    
end procApplyChangeItem; 
/

declare
    vresult varchar2(100);
begin
    procApplyChangeItem('806', '허수경 뿌심', vresult);
    dbms_output.put_line(vresult);
end;
/



-- 교육생		
-- D03-01. 출입카드 조회 및 재신청
-- 1. 본인에게 배부된 출입카드를 분실하였을 경우, 분실사유를 기재하여 새 출입카드를 신청한다.
-- 수료 및 탈락된 교육생은 재발급 신청할 수 없다. >> 프로시저로 만들기************

-- 등록
create or replace procedure procCardReissue(
    pstudentNum varchar2,
    preissueReason varchar,
    presult out varchar2
)
is
    pcount number;
begin

    SELECT count(*) into pcount FROM tblComplete WHERE studentnum = pstudentNum;
    
    if pcount > 0 then
        raise_application_error(-20001, '수료한 학생은 신청이 불가합니다.');
    end if;
    
    SELECT count(*) into pcount FROM tblfail WHERE studentnum = pstudentNum;
    if pcount > 0 then
        raise_application_error(-20001, '탈락한 학생은 신청이 불가합니다.');
    end if;
    
    INSERT INTO tblAccessCardReissue (accessCardReissueNum, studentNum, isReissue, reissueReason)
			VALUES ((select nvl(max(lpad(accessCardReissueNum, 5, '0')), 0) + 1 from tblAccessCardReissue), pstudentNum, 0, preissueReason);

    presult := '출입카드 재발급 신청 등록 성공했습니다.';   -- 성공
exception
    when others then
        presult := '출입카드 재발급 신청 등록 실패했습니다.';   -- 실패    
end procCardReissue; 
/

declare
    vresult varchar2(100);
begin
    procCardReissue('15', '허수경 뿌심', vresult);
    dbms_output.put_line(vresult);
end;
/


SELECT * FROM tblAccessCardReissue;





-- D07-01. 비품 교체 신청
-- 1. 교육생은 비품에 대해 교체 신청 사유를 기재하여 교체 신청을 할 수 있다.

-- 교사 쪽 비품 교체 신청 프로시저 동일(procApplyChangeItem)

create or replace procedure procApplyChangeItem(
    pitemDetailNum varchar2,
    pitemChangeReason varchar,
    presult out varchar2
)
is
begin
    INSERT INTO tblitemChange (itemChangeNum, itemDetailNum, itemChangeReason, isReplacement, itemChangeDate)
			VALUES ((select nvl(max(lpad(itemChangeNum, 5, '0')), 0) + 1 from tblitemChange), pitemDetailNum, pitemChangeReason, 0, sysdate);
    presult := '비품 교체 신청 등록 성공했습니다.';   -- 성공
exception
    when others then
        presult := '비품 교체 신청 등록 실패했습니다.';   -- 실패    
end procApplyChangeItem; 
/

declare
    vresult varchar2(100);
begin
    procApplyChangeItem('806', '허수경 뿌심', vresult);
    dbms_output.put_line(vresult);
end;
/


-- 조회(출입카드)

create or replace procedure procCard(
    pstudentnum varchar2
)
is
begin
    DBMS_OUTPUT.PUT_LINE('──────────────────── 출입카드 정보 ─────────────────────');
    for cards in (
        
       SELECT
            c.accessCardNum AS 출입카드번호,
            v.studentname AS 교육생이름,
            c.isAccessCard AS 배부여부
        FROM tblAccessCard c
            INNER JOIN vwstudent v	
                ON c.studentnum = v.studentnum
         where v.studentnum = pstudentnum
        ORDER BY to_number(c.accessCardNum)
       
    
    )
    loop
    DBMS_OUTPUT.PUT_LINE('출입카드번호: ' || cards.출입카드번호);
    DBMS_OUTPUT.PUT_LINE('교육생이름: ' || cards.교육생이름);
    DBMS_OUTPUT.PUT_LINE('배부여부: ' || cards.배부여부);
    DBMS_OUTPUT.PUT_LINE('────────────────────────────────────────────────────────────');
    end loop;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('출입카드 정보 조회에 실패했습니다.');
end procCard;
/
 

declare
begin
    procCard('1');
end;
/