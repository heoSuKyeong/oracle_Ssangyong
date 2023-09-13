-- ex30_trigger
/*
프로시저
1. 프로시저
2. 함수
3. 트리거

트리거, Trigger
- 프로시저의 한 종류
- 개발자의 호출이 아닌, 미리 지정한 특정 사건이 발생하면 시스템이 자동으로 실행하는 프로시저
- 3단계로 실행
    1. 예약(사건)
    2. 사건 발생
    3. 프로시저 호출
- 특정 테이블 지정
- 지정 테이블 오라클 감시
- insert or update or delete
- 미리 준비해놓은 프로시저 호출

트리거 구문
create or replace trigger 트리거명 
    before|after
    insert|update|delete
    on 테이블명
    [for each row]
declare
    선언부;
begin
    구현부;
exception
    예외처리부;
end;


*/

-- tblinsa. 직원 삭제
-- create > 마지막 commit
create or replace trigger trgInsa
    before      -- 삭제가 발생하기 직전에 아래의 구현부를 먼저 실행(before trigger)
    delete      -- 삭제가 발생하는지 감시
    on tblInsa  -- tblinsa 테이블을 감시
begin
    dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss')||' 트리거가 실행되었습니다.');
    
    -- 설정 : 월요일에는 퇴사가 불가능하다
    if to_char(sysdate, 'dy') = '월' then
        -- raise_application_error: 강제로 에러 발생
        -- before trigger 에서 에러가 발생하면 뒷 구문인 insert|update|delete 실행이 안된다.
        -- -20000 ~ -29999
        raise_application_error(-20001, '월요일에는 퇴사가 불가능합니다.');
    end if;
    
end trgInsa;

select * from tblInsa where num = 1010;
delete from tblInsa where num = 1010;

delete from tblbonus;
commit;

rollback;


-- 로그 기록 남기기
create table tblLogDiary(
    seq number primary key,
    message varchar2(1000) not null,
    regdate date default sysdate not null
);

create sequence seqLogDiary;

create or replace trigger trgDiary
    after
    insert or update or delete
    on tblDiary
declare
    vmessage varchar2(1000);
begin
    --dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss')||' 트리거가 실행되었습니다.');
    
    if inserting then
--        dbms_output.put_line('추가');
        vmessage := '새로운 항목이 추가되었습니다.';
    elsif updating then
--        dbms_output.put_line('수정');
        vmessage := '기존 항목이 수정되었습니다.';
    elsif deleting then
--        dbms_output.put_line('삭제');
        vmessage := '기존 항목이 삭제되었습니다.';
    end if;
    
    insert into tblLogDiary values (seqLogDiary.nextVal, vmessage, default);
end trgDiary;

-- 새로운 사건 추가
insert into tbldiary values (11, '프로시저 공부', '흐림', sysdate);

update tbldiary set subject = '프로시저 복습' where seq = 11;

delete from tbldiary where seq = 11;

select * from tbllogdiary;

/*
[for each row]
1. 생략 시
- 문장(Query) 단위 트리거, table level trigger
- 사건에 적용된 행의 개수와 무관하게 트리거는 딱 1회 호출된다.
- 적용된 레코드의 정보가 중요하지 않은 경우 + 사건 자체가 중요한 경우

2. 사용 시
- 행(Record) 단위 트리거
- 사건에 적요된 행의 개수만큼 트리거가 호출된다.
- 적용된 레코드의 정보가 중요한 경우 + 사건 자체 보다 중요한 경우
- 일종의 가상 레코드로 상관 관계를 사용한다. (:old, :new)

insert
- :new > 방금 추가된 행
update 
- :old > 수정되기 전 행
- :new > 수정된 후 행
delete
- :old > 삭제되기 전 행



*/

create or replace trigger trgMen
    after
    delete
    on tblMen
    --for each row
begin
    dbms_output.put_line('레코드를 삭제했습니다.' || :old.name);
end trgMen;

select * from tblMen;

delete from tblMen where name = '홍길동';  -- 1명 삭제 > 트리거 1회 실행

delete from tblmen where age<25;    -- (for each 생략)여러명 삭제 > 트리거 1회 실행

rollback;

-- 상관관계
create or replace trigger tblMen
    after
    update
    on tblMen
    for each row
begin
    dbms_output.put_line('레코드를 수정했습니다. > ' || :old.name);
    dbms_output.put_line('수정 전 나이: ' || :old.age);
    dbms_output.put_line('수정 후 나이: ' || :new.age);
end trgMen;

update tblmen set age = age +1 where name = '홍길동';


update tblmen set age = age +1;


-- 퇴사 > 프로젝트 위임
select * from tblstaff;
select * from tblproject;

-- 직원 퇴사 직전에 담당프로젝트를 체크하여 위임
create or replace trigger trgDeleteStaff
    before          -- 3. 전에
    delete          -- 2. 퇴사 처리
    on tblStaff     -- 1. 직원 테이블에서
    for each row    -- 4. 해당 직원 정보
begin
    -- 5. 위임 진행
    update tblProject set
        staff_seq = 2
            where staff_seq = :old.seq;     -- 퇴사하는 직원 번호
    
end trgDeleteStaff;

delete from tblstaff where seq =1;


-- 회원 테이블, 게시판 테이블
-- 포인트제도
-- 1. 글 작성 시 포인트 + 100
-- 2. 글 삭제 시 포인트 - 50

create table tblUser (
    id varchar2(30) primary key,
    point number default 1000 not null
);

insert into tblUser values ('hong', default);

create table tblBoard (
    seq number primary key,
    subject varchar2(1000) not null,
    id varchar2(30) not null references tblUser(id)
);

create sequence seqBoard;

-- a. 글 작성(삭제)
-- b. 포인트 누적(삭제)한다.

-- Case 1. Hard
-- 개발자가 직접 제어하는 경우
-- 일부 업무를 누락할 가능성이 높다.

-- 1.1 글 작성
insert into tblBoard values (seqBoard.nextVal, '게시판입니다.', 'hong');

-- 1.2 포인트 누적
update tblUser set point = point + 100 where id = 'hong';

select * from tblUser;

-- 1.3 삭제
delete from tblboard where seq = 1;

-- 1.4 포인트 차감
update tblUser set point = point -50 where id = 'hong';


-- Case2. 프로시저
-- 작성 프로시저
create or replace procedure procAddBoard (
    pid varchar2,
    psubject varchar2
)
is
begin
    -- 2.1 글 작성
    insert into tblBoard values (seqBoard.nextVal, psubject, pid);
    
    -- 2.2 포인트 누적
    update tblUser set point = point + 100 where id = pid;

end procAddBoard;

-- 삭제 프로시저
create or replace procedure procDeleteBoard (
    pseq number
)
is
    vid varchar2(30);
begin
    -- 2.1 삭제할 글의 작성자
    select id into vid from tblboard where seq = pseq;

    -- 2.2 삭제
    delete from tblboard where seq = pseq;
    
    -- 2.3 포인트 차감
    update tblUser set point = point -50 where id = vid;

end procDeleteBoard;


begin
    --procAddBoard('hong', '글을 작성합니다.');
    procDeleteBoard(2);
end;

select * from tblUser;

select * from tblboard;


-- Case 3. 트리거
create or replace trigger trgBoard
    after
    insert or delete
    on tblBoard
    for each row
begin
    
    if inserting then
        update tbluser set point = point + 100 where id = :new.id;
    elsif deleting then
        update tbluser set point = point - 50 where id = :old.id;
    end if;

end trgBoard;


insert into tblboard values (seqBoard.nextVal, '글 작성', 'hong');

delete from tblboard where seq = 3;

select * from tblUser;
select * from tblboard;

-- 프로시저와 트리거가 둘 다 가능한 상황이라면 프로시저를 사용하는 것이 자원을 조금더 활용할 수 있다.
-- 트리거는 24시간 내내 돌기에 자원 낭비가 있다.


/*
함수 return 반환값
1. 단일값만 반환 가능


프로시저 out parameter 반환값
1. 단일값(단일 레코드)
a. number
b. varchar2
c. date

2. 다중값(다중 레코드)
a. cursor


*/
create or replace procedure proBuseo(
    pbuseo varchar2

)
is
    cursor vcursor
    is
    select * from tblinsa where buseo = pbuseo;
    
    vrow tblinsa%rowtype;
begin
    open vcursor;
    loop
        fetch vcursor into vrow;        -- select into 와 비슷
        exit when vcursor%notfound;
        
        --업무
        dbms_output.put_line(vrow.name || ','||vrow.buseo);
    end loop;
    close vcursor;
end proBuseo;


begin
    proBuseo('영업부');
end;



create or replace procedure procBuseo(
    pbuseo in varchar2,
    pcursor out sys_refcursor  -- 커서의 자료형
)
is
begin
    open pcursor
    for
    select * from tblinsa where buseo=pbuseo;
    
end procBuseo;


declare
    vcursor sys_refcursor;
    vrow tblinsa%rowtype;
begin
    procBuseo('영업부', vcursor);
    
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        --업무
        dbms_output.put_line(vrow.name);
    end loop;
end;






