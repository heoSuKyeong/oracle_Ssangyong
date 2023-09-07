
--a. 조회수 순서대로 가져오시오.(순위, 영화명, 변동폭) 
SELECT rnum, title, total 
FROM (SELECT a.*, rownum as rnum
        FROM (SELECT title, total, rownum
                FROM movie
                ORDER BY total desc) a);
                
--b.'박성웅' 배우가 출연한 영화를 가져오시오.
select m.* from movie m 
    inner join appear a
        on m.movie_seq = a.movie_seq
             inner join actor b
                on a.actor_seq = b.actor_seq
                    where b.name = '박성웅';

--c. '김주환' 감독이 제작한 영화를 가져오시오.
select m.* from movie m
    inner join moviedirector md
        on m.movie_seq = md.movie_seq
            inner join director d
                on md.director_seq = d.director_seq
                    where d.name='김주환';

--d. 남자들이 선호하는 영화를 가져오시오.
select 
    m.title
from Movie m
    inner join Preference p
        on m.movie_seq = p.movie_seq
     where p.male > p.female;

--e. 20대가 선호하는 영화를 가져오시오.
select 
    m.*
from Movie m
    inner join Preference p
        on m.movie_seq = p.movie_seq
     where p."20대" > p."10대" and p."20대" > p."30대" and p."20대" >p."40대" and p."20대" >p."50대";   

-- f. '좋아요' 20,000개 이상 받은 영화를 가져오시오.
select * from movie where like_count >= 20000;

-- g. 한줄평 개수가 10,000개 이상 달린 영화를 가져오시오.
select * from movie where review >= 10000;

-- h. 네티즌 관람객 평점이 5.5이상인 영화를 가져오시오.
select * from movie where n_rating >= 5.5;

-- i. 영화의 명대사를 영화 제목과 함께 가져오시오.(명대사 배우명도 같이)
select
    m.title as "영화 제목",
    f.f_comment as "명대사",
    a.name as "배우명"
from famousLine f 
inner join actor a on f.actor_seq = a.actor_seq
inner join movie m on m.movie_seq = f.movie_seq;

--j. 등록된 50개의 영화중 가장 많은 영화에 참여한 배우를 가져오시오. 
SELECT at.name
FROM movie m
    Inner Join appear a
    on m.movie_seq = a.movie_seq
        Inner join actor at
        on a.actor_seq = at.actor_seq
        GROUP BY at.name
        HAVING count(*) = (SELECT max(count(*))
                            FROM movie m
                                Inner Join appear a
                                on m.movie_seq = a.movie_seq
                                    Inner join actor at
                                    on a.actor_seq = at.actor_seq
                                    GROUP BY at.name);
                                    
--  k. '드라마'와 '코미디' 2개 장르에 속한 영화를 가져오시오.                   
select m.* from movie m
    inner join moviegenre mg
        on m.movie_seq = mg.movie_seq
            inner join genre g
                on mg.genre_seq = g.genre_seq
                    where g.name = '드라마' or g.name= '코미디';

 --  l. 런타임이 120분 미만인 영화를 가져오시오.                  
select * from movie where runtime <120;

--m. 전체 관람가 영화를 가져오시오.
select 
    m.*
from movie m
    where grade = '전체 관람가';
    
--n. 누적 관객 100,000명이 넘는 영화를 가져오시오.
select
    m.*
from movie m
    where total >=100000;