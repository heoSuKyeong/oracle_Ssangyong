 -- 프로시저 총 정리 > CRUD
 
 -- 1. 추가 작업(Create)
 create or replace procedure 추가작업(
    추가할 데이터 -> in 매개변수,
    추가할 데이터 -> in 매개변수,
    추가할 데이터 -> in 매개변수,
    성공 유무 반환 -> out 매개변수        -- 피드백(성공1, 실패0)
 )
 is
    내부 변수 선언
begin
    작업(insert + (select, update, delete))
exception
    when others then
        예외처리
        
end;


-- 할일 추가하기 프로시저
create or replace procedure procAddTodo(
    ptitle varchar2,
    presult out number      -- 피드백
)
is 
begin
    insert into tblTodo (seq, title, adddate, completedate)
        values (seqTodo.nextVal, ptitle, sysdate, null);
        
    presult := 1;   -- 성공
exception
    when others then
        presult := 0;   -- 실패
end procAddTodo;

create sequence seqTodo start with 25;


declare
    vresult number;
begin
    procAddTodo('새로운 할일입니다.', vresult);
    dbms_output.put_line(vresult);
end;

select * from tbltodo;



-- 2. 수정 작업(update)
create or replace procedure 수정작업 (
    수정할 데이터 -> in 매개변수,
    수정할 데이터 -> in 매개변수,
    식별자         -> in 매개변수,      -- where절에 사용할 pk or 데이터
    성공 유무 반환 -> out 매개변수        -- 피드백
)
is 
    내부 변수 선언
begin
    작업(update + (insert, update, delete, select...))
exception
    when others then
        예외처리
end;


-- 할일 수정하기(U) > completedate 채우는 작업
create or replace procedure procCompleteTodo (
    --pcompletedate date > 수정할 날짜에 sysdate 처리
    pseq in number,     -- 수정할 할일 번호
    presult out number
)
is
begin
    update tblTodo set
        completedate = sysdate
            where seq = pseq;
    presult := 1;
exception
    when others then
        presult :=0;
end procCompleteTodo;


declare
    vresult number;
begin
    procCompleteTodo(25, vresult);
    dbms_output.put_line(vresult);
end;

select * from tbltodo;


-- 3. 삭제 작업(delete)
create or replace procedure 삭제작업 (
    식별자 -> in 매개변수,
    성공 유무 반환 -> out 매개변수
)
is
    내부 변수 선언;
begin
    작업(delete + (insert, update, delete, select))
exception
    then others then
        예외처리
end;


-- 할일 삭제하기
create or replace procedure procDeleteTodo (
    pseq in number,
    presult out number
)
is
begin
    delete from tblTodo where seq = pseq;
    presult :=1;
exception
    when others then
        presult :=0;
end procDeleteTodo;


declare
    vresult number;
begin
    procDeleteTodo(26, vresult);
    dbms_output.put_line(vresult);
end;

select * from tbltodo;



-- 4. 읽기 작업(read)
-- a. 조건 유/무
-- b. 단일행/다중행 반환, 단일컬럼/다중컬럼

-- 완료, 미완료, 총 개수
create or replace procedure 읽기작업(
    조건 데이터 -> in 매개변수,
    단일 반환값 -> out 매개변수,
    다중 반환값 -> out 매개변수(커서)
)
is
    내부 변수 선언
begin
    작업(select + (insert, update, delete, select))
exception
    when others then
        예외처리
end;


create or replace procedure procCountTodo(
    pcount1 out number,     -- 완료한 일
    pcount2 out number,     -- 미완료한 일
    pcount3 out number      -- 모든 일
)
is
begin
    select count(*) into pcount1 from tbltodo where completedate is not null;
    select count(*) into pcount2 from tbltodo where completedate is null;
    select count(*) into pcount3 from tbltodo;
exception
    when others then
        dbms_output.put_line('예외처리');
end procCountTodo;


declare
    vcount1 number;
    vcount2 number;
    vcount3 number;
begin
    procCountTodo(vcount1, vcount2, vcount3);
    dbms_output.put_line(vcount1);
    dbms_output.put_line(vcount2);
    dbms_output.put_line(vcount3);
end;



create or replace procedure procCountTodo(
    psel in number,     -- 사용자 선택(완료일 -1, 안한일 -2, 모든일-3)
    pcount out number
)
is
begin
    if psel = 1 then
        select count(*) into pcount from tbltodo where completedate is not null;
    elsif psel = 2 then
        select count(*) into pcount from tbltodo where completedate is null;
    elsif psel = 3 then
        select count(*) into pcount from tbltodo;
    end if;
exception
    when others then
        dbms_output.put_line('예외처리');
end procCountTodo;

declare
    vcount number;
begin
    procCountTodo(1, vcount);
    dbms_output.put_line(vcount);
end;


-- 번호를 입력하여 조회
create or replace procedure procGetTodo(
    pseq in number,
    prow out tblTodo%rowtype
)
is
begin
    select * into prow from tblTodo where seq = pseq;
exception
    when others then
        dbms_output.put_line('예외처리');
end;


declare
    vrow tbltodo%rowtype;
begin
    procgettodo(25, vrow);
    dbms_output.put_line(vrow.title);
end;


-- 다중 레코드 반환
-- 1. 완료한 일 목록 반환
-- 2. 안할 일 목록 반환
-- 3. 모든 일 반환

create or replace procedure procListTodo(
    psel in number,
    pcursor out sys_refcursor
)
is
begin
    if psel =1 then
        open pcursor
        for
        select * from tbltodo where completedate is not null;
    elsif psel = 2 then
        open pcursor
        for
        select * from tbltodo where completedate is null;
    elsif psel = 3 then
        open pcursor
        for
        select * from tbltodo;
    end if;
exception
    when others then
        dbms_output.put_line('예외처리');
end procListTodo;


declare
    vcursor sys_refcursor;
    vrow tblTodo%rowtype;
begin
    procListTodo(3, vcursor);
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(vrow);
        
    end loop;
end;









