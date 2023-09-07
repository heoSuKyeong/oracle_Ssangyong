
--a. ��ȸ�� ������� �������ÿ�.(����, ��ȭ��, ������) 
SELECT rnum, title, total 
FROM (SELECT a.*, rownum as rnum
        FROM (SELECT title, total, rownum
                FROM movie
                ORDER BY total desc) a);
                
--b.'�ڼ���' ��찡 �⿬�� ��ȭ�� �������ÿ�.
select m.* from movie m 
    inner join appear a
        on m.movie_seq = a.movie_seq
             inner join actor b
                on a.actor_seq = b.actor_seq
                    where b.name = '�ڼ���';

--c. '����ȯ' ������ ������ ��ȭ�� �������ÿ�.
select m.* from movie m
    inner join moviedirector md
        on m.movie_seq = md.movie_seq
            inner join director d
                on md.director_seq = d.director_seq
                    where d.name='����ȯ';

--d. ���ڵ��� ��ȣ�ϴ� ��ȭ�� �������ÿ�.
select 
    m.title
from Movie m
    inner join Preference p
        on m.movie_seq = p.movie_seq
     where p.male > p.female;

--e. 20�밡 ��ȣ�ϴ� ��ȭ�� �������ÿ�.
select 
    m.*
from Movie m
    inner join Preference p
        on m.movie_seq = p.movie_seq
     where p."20��" > p."10��" and p."20��" > p."30��" and p."20��" >p."40��" and p."20��" >p."50��";   

-- f. '���ƿ�' 20,000�� �̻� ���� ��ȭ�� �������ÿ�.
select * from movie where like_count >= 20000;

-- g. ������ ������ 10,000�� �̻� �޸� ��ȭ�� �������ÿ�.
select * from movie where review >= 10000;

-- h. ��Ƽ�� ������ ������ 5.5�̻��� ��ȭ�� �������ÿ�.
select * from movie where n_rating >= 5.5;

-- i. ��ȭ�� ���縦 ��ȭ ����� �Բ� �������ÿ�.(���� ���� ����)
select
    m.title as "��ȭ ����",
    f.f_comment as "����",
    a.name as "����"
from famousLine f 
inner join actor a on f.actor_seq = a.actor_seq
inner join movie m on m.movie_seq = f.movie_seq;

--j. ��ϵ� 50���� ��ȭ�� ���� ���� ��ȭ�� ������ ��츦 �������ÿ�. 
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
                                    
--  k. '���'�� '�ڹ̵�' 2�� �帣�� ���� ��ȭ�� �������ÿ�.                   
select m.* from movie m
    inner join moviegenre mg
        on m.movie_seq = mg.movie_seq
            inner join genre g
                on mg.genre_seq = g.genre_seq
                    where g.name = '���' or g.name= '�ڹ̵�';

 --  l. ��Ÿ���� 120�� �̸��� ��ȭ�� �������ÿ�.                  
select * from movie where runtime <120;

--m. ��ü ������ ��ȭ�� �������ÿ�.
select 
    m.*
from movie m
    where grade = '��ü ������';
    
--n. ���� ���� 100,000���� �Ѵ� ��ȭ�� �������ÿ�.
select
    m.*
from movie m
    where total >=100000;