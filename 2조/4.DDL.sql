CREATE TABLE movie(
    movie_seq number primary key,           -- 2자 이하
    title varchar2(100) not null,           -- 영화제목(제한없음)
    m_state varchar2(12) not null,          -- 상영중 / 개봉예정 / 미상영
    grade varchar2(30) not null,            -- 관람등급
    review number(10) default 0,            -- 한줄평 숫자
    m_open date not null,                   -- 개봉일자       open ->m_open
    runtime number(3) ,                     -- 런타임 (정보없음 = null)
    like_count number(10) default 0,        -- 좋아요 수
    c_rating number(4, 2) default 0.0,      -- 소수점 두자리까지 표기
    n_rating number(4, 2) default 0.0,      -- 소수점 두자리까지 표기
    r_rating number(4, 2) default 0.0,      -- 소수점 두자리까지 표기 
    total number(10) default 0              --누적 관객
);

create table director (
    director_seq number primary key,        
    name varchar(32) not null
);
create table MovieDirector (
    MD_seq number primary key,
    movie_seq number references movie(movie_seq),   
    director_seq number references director(director_seq)
);
create table Actor (
    actor_seq number primary key,
    name varchar2(100) not null
);

create table Appear (
    appear_seq number primary key,
    a_role varchar2(50) not null,     --role->a_role 
    appear varchar2(30) not null,
    movie_seq number references movie(movie_seq),
    actor_seq number references actor(actor_seq)    
);

create table famousLine (
    famousline_seq number primary key,
    f_date date default sysdate,                      
    f_comment varchar2(4000) not null,                    
    f_like number(10) not null,                           
    actor_seq number not null references Actor(actor_seq),
    movie_seq number not null references Movie(movie_seq)
);
create table Preference(
    prefer_seq number primary key, 
    male number,
    female number,
    "10대" number,
    "20대" number,
    "30대" number,
    "40대" number,
    "50대" number,
    movie_seq number references Movie(movie_seq)
);
create table Genre(
    genre_seq number primary key,
    name varchar2(200)
);
create table MovieGenre(
    MG_seq number primary key,
    movie_seq number not null references Movie(movie_seq),
    genre_seq number not null references Genre(genre_seq)
);
create table country (
    country_seq number primary key,
    name varchar(100) not null
);
create table movieCountry(
    movieCountry_seq number primary key,
    movie_seq number references movie(movie_seq),
    country_seq number references country(country_seq)
);
