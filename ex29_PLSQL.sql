
/*
PL/SQL
- Oracle's Procedural Language extension to SQL
- 기존의 ANSI-SQL + 절차 지향 언어 기능 추가
- ANSI-SQL + 확장팩(변수, 제어흐름(제어문), 객체(메서드) 정의)

프로시저, Procudure
- 메서드, 함수와 비슷한 개념
- 순서가 있는 명령어의 집합
- 모든 PL/SQL 구문은 프로시저 내에서만 작성 및 동작이 가능하다.
- 프로시저가 아닌 영역 > ANSI-SQL 영역

1. 익명 프로시저
- 1회용 코드 작성할 때 사용한다.

2. 실명 프로시저
- 데이터베이스 객체 형태로 저장하여 재호출하기 위해 사용한다.

PL/SQL 프로시저 구조
1. 4개의 블럭(키워드)으로 구성
- DECLARE
- BEGIN
- EXCEPTION
- END

1) DECLARE
- 선언부
- 프로시저내에서 사용할 변수, 객체 등을 선언하는 영역
- 생성할 변수나 객체가 없을 경우 생략 가능하다.

2) BEGIN~END
- 실행부, 구현부
- 구현된 코드를 가지는 영역(함수의 BODY역할을 한다.)
- 생략 불가능
- 구현된 코드는 ANSI-SQL + PL/SQL으로 구성되어 연산이나, 제어문을 작성한다.

3) EXCEPTION
- 예외처리부
- catch 역할(BEGIN~END 구문이 try 역할을 한다.)
- 생략 가능


자료형 + 변수

PL/SQL 자료형
- ANSI-SQL과 동일하다.

변수 선언하기
- 변수명 자료형 [NOT NULL] [DEFAULT 값];

연산자
- ANSI-SQL과 동일하다.
- 단, 대입연산자 사용법이 상이하다.
- PL/SQL 대입연산자는 :(콜론)이 붙는다.
ANSI-SQL > UPDATE TABLE SET column = '값';
PL/SQL > 변수 := '값';


*/
-- dbms_output.put_line 사용하기 위한 설정
set serveroutput on;    --현재 세션에서만 유효하다. (접속을 해제하면 초기화된다.)
set serveroutput off;

-- 익명 프로시저
DECLARE
    num number;
    name varchar2(30);
    today date;
BEGIN
    num := 10;
    -- dbms_output : pl/sql 객체
    dbms_output.put_line(num);
    
    name := '홍길동';
    dbms_output.put_line(name);

    today := sysdate;
    dbms_output.put_line(today);
    
END;
/

declare
    num1 number;
    num2 number;
    num3 number := 30;
    num4 number default 40;
    num5 number not null := 50;     -- declare 블럭에서 초기화를 해야한다.
begin
    dbms_output.put_line(num1); --null
    
    num2 := 20;
    dbms_output.put_line(num2);
    
    dbms_output.put_line(num3);
    
    dbms_output.put_line(num4);
    
    dbms_output.put_line(num5);
end;
/

/*
변수를 어떤 용도로 사용하는가
- select 결과를 담는 용도(**********)
- select into


*/
-- PL/SQL은 ANSI-SQL 인식을 못한다.
declare
    vbuseo varchar2(15);
begin
    --잘못된 대입
    --vbuseo := (select buseo from tblinsa where name = '홍길동');

    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
    
    select buseo from tblinsa where name = '홍길동';
    dbms_output.put_line(buseo);
end;
/

begin
    -- PL/SQL 프로시저안에는 순수한 SELECT문은 올 수 없다.
    -- PL/SQL 프로시저안에는 SELECT INTO문만 사용 가능하다.
    select buseo from tblinsa where name = '홍길동';
end;

-- 성과급 받는 직원명(개발부 + 부장)
CREATE table tblName (
    name varchar2(15)
);
/
-- 서브쿼리로 실행
-- 1. 개발부인 부장을 찾기(select)
-- 2. tblName에 추가하기(insert)

insert into tblname values
((select name from tblinsa where buseo = '개발부' and jikwi = '부장'));

select * from tblname;

-- 프로시저로 실행
declare
    vname varchar2(15);
begin 
    --1.
    select name into vname from tblinsa where buseo = '개발부' and jikwi = '부장';
    
    --2.
    insert into tblname (name) values (vname);
end;
/

declare
    vname varchar2(15);
    vbuseo varchar2(15);
    vjikwi varchar2(15);
    vbasicpay number;
begin
    --select 문에 into는 한번만 사용
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay from tblinsa where num = 1001;
    
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
    
    --into 사용시
    --1. 컬럼의 개수와 변수의 개수 일치 필수
    --2. 컬럼의 순서와 변수의 순서 일치 필수
    --3. 컬럼과 변수의 자료형 일치 필수
end;
/
desc tblinsa;


/*
타입 참조

%type
- 사용하는 테이블의 특정 컬럼값의 스키마를 변수에 적용
- 복사되는 정보 : 자료형, 길이

*/
declare
    --vbuseo varchar2(15);  --> 내가 tblinsa buseo 컬럼 정보를 알고 있을 때 사용가능
    vbuseo tblinsa.buseo%type;
begin
    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
    
end;
/


declare
    vname tblinsa.name%type;
    vbuseo tblinsa.buseo%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
begin
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay from tblinsa where num = 1001;
    
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
    
end;
/


-- 직원 중 일부에게 보너스 지급 후 내역 저장
create table tblBonus (
    seq number primary key,
    num number(5) not null references tblinsa(num),     --직원번호(FK)
    bonus number not null

);

declare
    vnum tblinsa.num%type;
    vbasicpay tblinsa.basicpay%type;
begin
    --1. 보너스 지급 대상 찾기
    select num, basicpay into vnum, vbasicpay from tblinsa where city = '서울' and jikwi = '부장' and buseo = '영업부';
    
    --2. 보너지 지급 내역 작성
    insert into tblbonus (seq, num, bonus) values ((select nvl(max(seq),0) +1 from tblbonus), vnum, vbasicpay * 1.5);

end;
/
select * from tblbonus b inner join tblinsa i on b.num = i.num;


select * from tblmen;
select * from tblwomen;
-- 무명씨를 tblwomen으로 옮기기
-- 1. 주어진 조건은 이름 '무명씨' 하나가지고 tblmen에서 select
-- 2. tblwomen 으로 insert
-- 3. tblmen 에서 delete
declare
    vname tblmen.name%type := '무명씨';
    vage tblmen.age%type;
    vheight tblmen.height%type;
    vweight tblmen.weight%type;
    vcouple tblmen.couple%type;
begin
    select age, height, weight, couple into vage, vheight, vweight, vcouple from tblmen where name = vname;
    
    insert into tblwomen (name, age, height, weight, couple) values (vname, vage, vheight, vweight, vcouple);
    
    delete from tblmen where name = vname;
end;
/


declare
--    vname tblmen.name%type := '무명씨';
--    vage tblmen.age%type;
--    vheight tblmen.height%type;
--    vweight tblmen.weight%type;
--    vcouple tblmen.couple%type;
    vrow tblmen%rowtype;    --vrow : tblmen의 모든 레코드 1개(모든 컬럼값)를 저장할 수 있는 변수

begin
    select * into vrow from tblmen where name = '정형돈';
    
    dbms_output.put_line(vrow.name);
    dbms_output.put_line(vrow.age);
    
    nsert into tblwomen (name, age, height, weight, couple) values (vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple);
    
    delete from tblmen where name = vrow.name;
end;
/

-----------------------------------------------------------------------------------------------
/*
제어문



*/

declare
    vnum number := 0;
begin 
    if vnum > 0 then
        dbms_output.put_line('양수');
    elsif vnum <0 then
        dbms_output.put_line('음수');
    else
        dbms_output.put_line('0');
    end if;
end;
/

-- tblinsa. 남자 직원/여자 직원 별로 다른 업무
declare
    vgender char(1);
begin
    select substr(ssn, 8, 1) into vgender from tblinsa where num = 1035;
    
    if vgender = '1' then
        dbms_output.put_line('남자직원');
    else
        dbms_output.put_line('여자직원');
    end if;
    
end;
/


-- 직원 1명 선택(num)하여 보너스 차등 지급
-- 과장/부장 > basicpay * 1.5
-- 대리/사원 > basicpay * 2
declare
    vnum tblinsa.num%type;
    vbasicpay tblinsa.basicpay%type;
    vjikwi tblinsa.jikwi%type;
begin
    --1. 보너스 지급 대상 찾기
    select num, basicpay, jikwi into vnum, vbasicpay, vjikwi from tblinsa where num = 1040;
    
    --2. 보너스 지급 내역 작성
    if vjikwi in ('과장', '부장') then
         insert into tblbonus (seq, num, bonus) values ((select nvl(max(seq),0) +1 from tblbonus), vnum, vbasicpay * 1.5);
    elsif vjikwi in ('대리', '사원') then
         insert into tblbonus (seq, num, bonus) values ((select nvl(max(seq),0) +1 from tblbonus), vnum, vbasicpay * 2);
    end if;

end;
/
select * from tblbonus;
select * from tblbonus b inner join tblinsa i on b.num = i.num;
/*

case 문
- ANSI-SQL의 case문과 유사
- 자바의 switch문, 다중 if문과 유사

*/
declare
    vcontinent tblcountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblCountry where name = '영국';
    
    if vcontinent = 'AS' then
        vresult := '아시아';
    elsif vcontinent = 'EU' then
        vresult := '유럽';
    elsif vcontinent = 'AF' then
        vresult := '아프리카';
    else
        vresult := '기타';
    end if;
    
    dbms_output.put_line(vresult);
    
    
    case
        when vcontinent = 'AS' then vresult := '아시아';
        when vcontinent = 'EU' then vresult := '유럽';
        when vcontinent = 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    
    dbms_output.put_line(vresult);
    
    
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타'
    end case;
    
end;
/

/*
반복문
1. loop
- 단순 반복
loop
    exit when 조건    -- 조건부 break;
end loop

2. for loop
- 횟수 반복(like 자바 for)
- loop 기반

3. while loop
- 조건 반복(like 자바 while)
- loop 기반

*/

-- ORA-20000: ORU-10027: buffer overflow, limit of 1000000 bytes
-- 무한루프 상태
begin
    loop
        dbms_output.put_line('100');
    end loop;
end;
/

declare
    vnum number := 1;
begin
    loop
        dbms_output.put_line(vnum);
        vnum := vnum+1;
        
        exit when vnum > 10;
    end loop;
end;
/

create table tblLoop (
    seq number primary key,
    data varchar2(100) not null
);

create sequence seqLoop;

-- 데이터 x 1000건 추가
-- data > '항목1', '항목2',..., '항목1000'

-- 1. loop
declare
    vnum number := 1;
begin
    loop
        insert into tblLoop values (seqLoop.nextVal, '항목'||vnum);
        
        vnum := vnum+1;
        exit when vnum>1000;
    end loop;
end;
/
select * from tblLoop;

-- 2. for loop
begin
    for i in 1..10 loop
        dbms_output.put_line(i);
    end loop;
    
end;
/

create table tblGugudan(
    dan number not null ,
    num number not null ,
    result number not null,
    constraint tblgugudan_dan_num_pk primary key(dan, num)     --복합키(Composite Key) 생성
);
drop table tblgugudan;

create table tblGugudan(
    dan number not null ,
    num number not null ,
    result number not null,
);
-- 외부에서 제약사항 추가하기
-- 테이블과 제약사항 관리를 따로할 수 있는 장점이 있다.
alter table tblgugudan add constraint tblgugudan_dan_num_pk primary key(dan, num);







