---dataMovie-----

drop sequence movie_seq;
create sequence movie_seq;
insert into movie values(movie_seq.nextval,'웅남이','상영중','15세 관람가',2758,'23/03/22',97,6789,7.69,7.09,3.33,129847);
insert into movie values(movie_seq.nextval,'스즈메의 문단속','상영중','12세 관람가',8747,'23/03/08',122,15486,8.16,8.29,7.79,2655578);
insert into movie values(movie_seq.nextval,'소울메이트','상영중','12세 관람가',1441,'23/03/15',124,4274,8.03,8.66,6.17,171429);
insert into movie values(movie_seq.nextval,'파벨만스','상영중','12세 관람가',260,'23/03/22',151,469,8.91,8.78,8.80,27063);
insert into movie values(movie_seq.nextval,'더 퍼스트 슬램덩크','상영중','12세 관람가',17039,'23/01/04',124,12023,9.28,9.44,7.83,4249401);
insert into movie values(movie_seq.nextval,'샤잠! 신들의 분노','상영중','12세 관람가',486,'23/03/15',130,333,6.95,6.49,4.50,74928);
insert into movie values(movie_seq.nextval,'귀멸의 칼날: 상현집결, 그리고 도공 마을로','상영중','15세 관람가',1631,'23/03/22',110,1728,6.66,4.95,0,517603);
insert into movie values(movie_seq.nextval,'에브리씽 에브리웨어 올 앳 원스+','상영중','15세 관람가',789,'23/03/01',150,784,8.88,7.77,0,83908);
insert into movie values(movie_seq.nextval,'대외비','상영중','15세 관람가',2868,'23/03/01',116,2367,6.15,6.20,5.17,751436);
insert into movie values(movie_seq.nextval,'플레인','상영중','15세 관람가',357,'23/03/15',107,344,7.73,7.93,5.00,34871);
insert into movie values(movie_seq.nextval,'모나리자와 블러드 문','상영중','15세 관람가',203,'23/03/22',107,738,6.92,7.00,5.29,13980);
insert into movie values(movie_seq.nextval,'임 히어로 더 파이널','상영중','전체 관람가',5334,'23/03/01',102,9698,9.87,9.82,0,227956);

INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime,like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '던전 앤 드래곤:도적들의 명예', '개봉예정', '12세 관람가', 0,'2023-03-29', 134, 339, 0, 0, 0, 0);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime,like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextval, '멍뭉이', '상영중', '전체관람가', 1084, '2023-03-01', 113, 2450, 8.36, 8.690, 5.00, 168650);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '다음소희', '상영중', '15세 관람가', 2078, '2023-02-08', 138, 2842, 8.75, 9.44, 6.73, 105338);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, 'TAR타르', '상영중', '15세 관람가', 455,'2023-02-22', 158, 546, 7.78, 7.78, 7.55, 35236);
INSERT INTO MOVIE(movie_seq, title, m_state, grade, review, m_open, like_count, c_rating, n_rating, r_rating, total) 
values(movie_seq.nextVal, '드림', '개봉예정', '보류', 0 ,'2023-04-26' , 14079, 0, 0, 0, 0);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '옥수역귀신', '개봉예정', '보류', 0,'2023-04-01', 80, 252, 0, 0, 0, 0); 
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating)
values(movie_seq.nextVal, '보스턴 교살자', '미상영', '15세 관람가', 37,'2023-03-17', 112, 50, 0, 8.51, 0);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '똑똑똑', '상영중', '15세 관람가', 508, '2023-03-08', 100, 275, 6.04, 5.73, 5.80, 30847);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating , total)
values(movie_seq.nextVal, '포커페이스', '상영중', '15세 관람가', 11,'2023-03-23', 91, 31, 6.67, 5.55, 4.00, 557);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating)
values(movie_seq.nextVal, '리바운드', '개봉예정', '12세 관람가', 0,'2023-04-05', 122, 741, 0, 0, 0);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '마루이 비디오', '상영중', '15세 관람가', 659,'2023-02-22', 87, 1275, 6.28, 5.53, 5.75, 165649);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '서치2', '상영웅', '12세 관람가', 877,'2023-02-22', 111, 1230, 8.32, 8.77, 6.50, 412492);
INSERT INTO MOVIE (movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating, r_rating, total)
values(movie_seq.nextVal, '이니셰린의 밴시', '상영중', '15세 관람가', 184,'2023-03-15', 114, 340, 8.32, 8.27, 8.08, 16885);

insert into Movie values (movie_seq.nextVal,'더 웨일','상영중','15세 관람가',
default,'23/03/01',117,899,8.28,8.50,6.67,48864);

insert into Movie values (movie_seq.nextVal,'오토라는 남자','개봉예정','12세 관람가',
default,'23/03/29',126,303,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'어쩌면 우린 헤어졌는지 모른다','상영중','12세 관람가',
205,'23/02/08',103,626,7.86,8.25,5.67,18238);

insert into Movie values (movie_seq.nextVal,'존 윅 4','개봉예정','청소년 관람불가',
default,'23/04/12',169,798,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'앤트맨과 와스프:퀀텀매니아','상영중','12세 관람가',
5940,'23/02/15',124,2876,6.88,7.09,5.22,1550459);

insert into Movie values (movie_seq.nextVal,'스파이 코드명 포춘','미상영','정보없음', --개봉일자
default,'23/12/31',null,131,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'어떤 영웅','상영중','12세 관람가',
63,'23/03/15',128,152,8.15,8.08,6.75,3206);

insert into Movie values (movie_seq.nextVal,'곰돌이 푸:피와 꿀','미상영','정보없음', --개봉일자
default,'23/12/31',84,241,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'카운트','상영중','12세 관람가',
2148,'23/02/22',109,2378,8.00,8.82,5.50,391974);

insert into Movie values (movie_seq.nextVal,'킬링 로맨스','개봉예정','15세 관람가',
default,'23/04/14',106,411,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'아기공룡 둘리:얼음별 대모험 4K 리마스터링','미상영','전체 관람가',
default,'23/05/01',80,695,default,9.35,default,default);

insert into Movie values (movie_seq.nextVal,'거울 속 외딴 성','미상영','12세 관람가',
default,'23/04/12',116,336,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'에어','개봉예정','15세 관람가',
default,'23/04/05',112,190,default,default,default,default);

insert into Movie values (movie_seq.nextVal,'아바타:물의 길','상영중','12세 관람가',
25057,'22/12/14',192,23683,8.82,8.65,7.80,10799855);

insert into Movie values (movie_seq.nextVal,'날씨의 아이','상영중','15세 관람가',
6494,'21/09/09',112,11847,8.38,7.98,6.57,742203);



-- 41번부터 10개
insert into movie(movie_seq, title, m_state, grade, review, m_open, runtime, like_count, n_rating) values(movie_seq.nextVal,'서부 전선 이상 없다', '미상영', '청소년 관람불가', 187, '22/10/28', 147, 107, 9.01);
insert into movie(movie_seq, title, m_state, grade, review, m_open, runtime, like_count) values(movie_seq.nextVal,'물안에서', '미상영', '12세 관람가', 0, '23/04/12', 61, 40);
insert into movie values(movie_seq.nextVal,'에브리씽 에브리웨어 올 앳 원스', '상영중', '15세 관람가', 3878, '22/10/12', 139, 3309, 8.81, 8.16, 8.33,default);
insert into movie values(movie_seq.nextVal,'그대 어이가리', '상영중', '12세 관람가', 119, '23/03/08', 120, 473, 9.43, 9.56, 6.00,default);
insert into movie values(movie_seq.nextVal,'팔로우드', '상영중', '15세 관람가', 15, '23/03/22', 96, 56, 5.33, 3.47, 3.00,default);
insert into movie values(movie_seq.nextVal,'너의 이름은.', '상영중', '12세 관람가', 32666, '17/01/04', 106, 26426, 9.02, 8.81, 7.55,default);
insert into movie values(movie_seq.nextVal,'교섭', '미상영', '12세 관람가', 6164, '23/01/18', 108, 8845, 6.25, 5.80, 6.43,default);
insert into movie(movie_seq, title, m_state, grade, m_open, like_count) values(movie_seq.nextVal,'가디언즈 오브 갤럭시:Volume 3.', '개봉예정', '정보없음', '23/05/01', 2724);
insert into movie(movie_seq, title, m_state, grade, m_open, like_count) values(movie_seq.nextVal,'인디아나 존스:운명의 다이얼.', '개봉예정', '정보없음', '23/06/01', 483);
insert into movie(movie_seq, title, m_state, grade, review, m_open, runtime, like_count, c_rating, n_rating) values(movie_seq.nextVal,'리벤져', '미상영', '15세 관람가', 1076, '18/12/06', 102, 439, 9.38, 4.73);


----------------dataDirector----------------

drop sequence director_seq;
create sequence director_seq;

insert into director values (director_seq.nextVal, '박성광');
insert into director values (director_seq.nextVal, '신카이 마코토');
insert into director values (director_seq.nextVal, '민용근');
insert into director values (director_seq.nextVal, '스티븐 스필버그');
insert into director values (director_seq.nextVal, '이노우에 다케히코');
insert into director values (director_seq.nextVal, '데이비드 F.샌드버그');
insert into director values (director_seq.nextVal, '소토자키 하루오');
insert into director values (director_seq.nextVal, '다니엘 콴');
insert into director values (director_seq.nextVal, '다니엘 쉐이너트');
insert into director values (director_seq.nextVal, '이원태');
insert into director values (director_seq.nextVal, '장-프랑소와 리셰');
insert into director values (director_seq.nextVal, '애나 릴리 아미푸르');
insert into director values (director_seq.nextVal, '오윤동');
insert into director values (director_seq.nextVal, '조나단 골드스타인');
insert into director values (director_seq.nextVal, '존 프란시스 데일리');
insert into director values (director_seq.nextVal, '김주환');
insert into director values (director_seq.nextVal, '정주리');
insert into director values (director_seq.nextVal, '토드 필드');
insert into director values (director_seq.nextVal, '이병헌');
insert into director values (director_seq.nextVal, '정용기');
insert into director values (director_seq.nextVal, '맷 러스킨');
insert into director values (director_seq.nextVal, 'M. 나이트 샤말란');
insert into director values (director_seq.nextVal, '러셀 크로우');
insert into director values (director_seq.nextVal, '장항준');
insert into director values (director_seq.nextVal, '윤준형');
insert into director values (director_seq.nextVal, '니콜라스 D.존슨');
insert into director values (director_seq.nextVal, '윌 메릭');
insert into director values (director_seq.nextVal, '마틴 맥도나');
insert into director values (director_seq.nextVal, '대런 아로노프스키');
insert into director values (director_seq.nextVal, '마크 포스터');
insert into director values (director_seq.nextVal, '형슬우');
insert into director values (director_seq.nextVal, '채드 스타헬스키');
insert into director values (director_seq.nextVal, '페이튼 리드');
insert into director values (director_seq.nextVal, '가이 리치');
insert into director values (director_seq.nextVal, '아쉬가르 파라디');
insert into director values (director_seq.nextVal, '리스 플레이크-워터필드');
insert into director values (director_seq.nextVal, '권혁재');
insert into director values (director_seq.nextVal, '이원석');
insert into director values (director_seq.nextVal, '김수정');
insert into director values (director_seq.nextVal, '임경원');
insert into director values (director_seq.nextVal, '하라 케이이치');
insert into director values (director_seq.nextVal, '벤 애플렉');
insert into director values (director_seq.nextVal, '제임스 카메론');
insert into director values (director_seq.nextVal, '에드워드 버거');
insert into director values (director_seq.nextVal, '홍상수');
insert into director values (director_seq.nextVal, '이창열');
insert into director values (director_seq.nextVal, '안토인 르');
insert into director values (director_seq.nextVal, '임순례');
insert into director values (director_seq.nextVal, '제임스 건');
insert into director values (director_seq.nextVal, '제임스 맨골드');
insert into director values (director_seq.nextVal, '이승원');


--------------------movieDirector----------------

drop sequence MD_seq;
create sequence MD_seq;
insert into MovieDirector values (MD_seq.nextVal,1,1);
insert into MovieDirector values (MD_seq.nextVal,2,2);
insert into MovieDirector values (MD_seq.nextVal,3,3);
insert into MovieDirector values (MD_seq.nextVal,4,4);
insert into MovieDirector values (MD_seq.nextVal,5,5);
insert into MovieDirector values (MD_seq.nextVal,6,6);
insert into MovieDirector values (MD_seq.nextVal,7,7);
insert into MovieDirector values (MD_seq.nextVal,8,8);
insert into MovieDirector values (MD_seq.nextVal,8,9);
insert into MovieDirector values (MD_seq.nextVal,9,10);
insert into MovieDirector values (MD_seq.nextVal,10,11);
insert into MovieDirector values (MD_seq.nextVal,11,12);
insert into MovieDirector values (MD_seq.nextVal,12,13);
insert into MovieDirector values (MD_seq.nextVal,13,14);
insert into MovieDirector values (MD_seq.nextVal,13,15);
insert into MovieDirector values (MD_seq.nextVal,14,16);
insert into MovieDirector values (MD_seq.nextVal,15,17);
insert into MovieDirector values (MD_seq.nextVal,16,18);
insert into MovieDirector values (MD_seq.nextVal,17,19);
insert into MovieDirector values (MD_seq.nextVal,18,20);
insert into MovieDirector values (MD_seq.nextVal,19,21);
insert into MovieDirector values (MD_seq.nextVal,20,22);
insert into MovieDirector values (MD_seq.nextVal,21,23);
insert into MovieDirector values (MD_seq.nextVal,22,24);
insert into MovieDirector values (MD_seq.nextVal,23,25);
insert into MovieDirector values (MD_seq.nextVal,24,26);
insert into MovieDirector values (MD_seq.nextVal,24,27);
insert into MovieDirector values (MD_seq.nextVal,25,28);
insert into MovieDirector values (MD_seq.nextVal,26,29);
insert into MovieDirector values (MD_seq.nextVal,27,30);
insert into MovieDirector values (MD_seq.nextVal,28,31);
insert into MovieDirector values (MD_seq.nextVal,29,32);
insert into MovieDirector values (MD_seq.nextVal,30,33);
insert into MovieDirector values (MD_seq.nextVal,31,34);
insert into MovieDirector values (MD_seq.nextVal,32,35);
insert into MovieDirector values (MD_seq.nextVal,33,36);
insert into MovieDirector values (MD_seq.nextVal,34,37);
insert into MovieDirector values (MD_seq.nextVal,35,38);
insert into MovieDirector values (MD_seq.nextVal,36,39);
insert into MovieDirector values (MD_seq.nextVal,36,40);
insert into MovieDirector values (MD_seq.nextVal,37,41);
insert into MovieDirector values (MD_seq.nextVal,38,42);
insert into MovieDirector values (MD_seq.nextVal,39,43);
insert into MovieDirector values (MD_seq.nextVal,40,2);
insert into MovieDirector values (MD_seq.nextVal,41,44);
insert into MovieDirector values (MD_seq.nextVal,42,45);
insert into MovieDirector values (MD_seq.nextVal,43,8);
insert into MovieDirector values (MD_seq.nextVal,43,9);
insert into MovieDirector values (MD_seq.nextVal,44,46);
insert into MovieDirector values (MD_seq.nextVal,45,47);
insert into MovieDirector values (MD_seq.nextVal,46,2);
insert into MovieDirector values (MD_seq.nextVal,47,48);
insert into MovieDirector values (MD_seq.nextVal,48,49);
insert into MovieDirector values (MD_seq.nextVal,49,50);
insert into MovieDirector values (MD_seq.nextVal,50,51);
----------------------dataactor-------------------

drop sequence actor_seq;
create sequence actor_seq;
--웅남이
insert into actor values (actor_seq.nextVal, '박성웅');
insert into actor values (actor_seq.nextVal, '이이경');
insert into actor values (actor_seq.nextVal, '엄혜란');
insert into actor values (actor_seq.nextVal, '최민수');
insert into actor values (actor_seq.nextVal, '오달수');
insert into actor values (actor_seq.nextVal, '윤제문');
insert into actor values (actor_seq.nextVal, '백지혜');
insert into actor values (actor_seq.nextVal, '서동원');

--스즈메의 문단속
insert into actor values (actor_seq.nextVal, '하라 나노카');
insert into actor values (actor_seq.nextVal, '마츠무라 호쿠토');
insert into actor values (actor_seq.nextVal, '후카츠 에리');
insert into actor values (actor_seq.nextVal, '마츠모토 코시로');
insert into actor values (actor_seq.nextVal, '소메타니 쇼타');
insert into actor values (actor_seq.nextVal, '이토 사이리');
insert into actor values (actor_seq.nextVal, '하나세 코토네');
insert into actor values (actor_seq.nextVal, '하나자와 카나');

--소울메이트
insert into actor values (actor_seq.nextVal, '김다미');
insert into actor values (actor_seq.nextVal, '전소니');
insert into actor values (actor_seq.nextVal, '변우석');
insert into actor values (actor_seq.nextVal, '장혜진');
insert into actor values (actor_seq.nextVal, '박충선');
insert into actor values (actor_seq.nextVal, '남윤수');
insert into actor values (actor_seq.nextVal, '김수형');
insert into actor values (actor_seq.nextVal, '류지안');

--파벨만스
insert into actor values (actor_seq.nextVal, '미셸 윌리엄스');
insert into actor values (actor_seq.nextVal, '폴 다노');
insert into actor values (actor_seq.nextVal, '세스 로건');
insert into actor values (actor_seq.nextVal, '가브리엘 라벨');
insert into actor values (actor_seq.nextVal, '주드 허쉬');

--샤잠
insert into actor values (actor_seq.nextVal, '제커리 레비');
insert into actor values (actor_seq.nextVal, '애셔 앤젤');
insert into actor values (actor_seq.nextVal, '아담 브로디');
insert into actor values (actor_seq.nextVal, '잭 딜런 그레이저');
insert into actor values (actor_seq.nextVal, '그레이스 펄튼');
insert into actor values (actor_seq.nextVal, '로즈 버틀러');
insert into actor values (actor_seq.nextVal, '이안 첸');
insert into actor values (actor_seq.nextVal, '메건 굿');

--귀멸의 칼날
insert into actor values (actor_seq.nextVal, '하나에 나츠키');
insert into actor values (actor_seq.nextVal, '키토 아카리');
insert into actor values (actor_seq.nextVal, '시모노 히로');
insert into actor values (actor_seq.nextVal, '마츠오카 요시츠구');

--에브리씽 에브리웨어 올 앳 원스+
insert into actor values (actor_seq.nextVal, '양자경');
insert into actor values (actor_seq.nextVal, '스테파니 수');
insert into actor values (actor_seq.nextVal, '키 호이 콴');
insert into actor values (actor_seq.nextVal, '제이미 리 커터스');

--대외비
insert into actor values (actor_seq.nextVal, '조진웅');
insert into actor values (actor_seq.nextVal, '이성민');
insert into actor values (actor_seq.nextVal, '김무열');
insert into actor values (actor_seq.nextVal, '원현준');
insert into actor values (actor_seq.nextVal, '김민재');
insert into actor values (actor_seq.nextVal, '유승목');
insert into actor values (actor_seq.nextVal, '김윤성');
insert into actor values (actor_seq.nextVal, '박세진');

--플레인
insert into actor values (actor_seq.nextVal, '제라드 버틀러');
insert into actor values (actor_seq.nextVal, '마이크 콜터');

--모나리자와 블러드 문
insert into actor values (actor_seq.nextVal, '전종서');
insert into actor values (actor_seq.nextVal, '케이트 허드슨');
insert into actor values (actor_seq.nextVal, '크레이크 로빈슨');
insert into actor values (actor_seq.nextVal, '에드 스크레인');
insert into actor values (actor_seq.nextVal, '에반 휘튼');

--아임 히어로 더 파이널
insert into actor values (actor_seq.nextVal, '임영웅');

--던전 앤 드래곤: 도적들의 명예
insert into actor values (actor_seq.nextVal, '크리스 파인');
insert into actor values (actor_seq.nextVal, '미셸 로드리게즈');
insert into actor values (actor_seq.nextVal, '레게장 페이지');
insert into actor values (actor_seq.nextVal, '저스티스 스미스');
insert into actor values (actor_seq.nextVal, '소피아 릴리스');
insert into actor values (actor_seq.nextVal, '클로에 콜맨');
insert into actor values (actor_seq.nextVal, '데이지 헤드');
insert into actor values (actor_seq.nextVal, '휴 그랜트');

--멍뭉이
insert into actor values (actor_seq.nextVal, '유연석');
insert into actor values (actor_seq.nextVal, '차태현');
insert into actor values (actor_seq.nextVal, '정인선');
insert into actor values (actor_seq.nextVal, '박진주');
insert into actor values (actor_seq.nextVal, '태원석');
insert into actor values (actor_seq.nextVal, '정지훈');
insert into actor values (actor_seq.nextVal, '김지영');
insert into actor values (actor_seq.nextVal, '정의순');

--다음 소희
insert into actor values (actor_seq.nextVal, '김시은');
insert into actor values (actor_seq.nextVal, '배두나');
insert into actor values (actor_seq.nextVal, '정회린');
insert into actor values (actor_seq.nextVal, '강현오');
insert into actor values (actor_seq.nextVal, '박우영');
insert into actor values (actor_seq.nextVal, '이인영');
insert into actor values (actor_seq.nextVal, '박희은');
insert into actor values (actor_seq.nextVal, '김용준');

--Tar 타르
insert into actor values (actor_seq.nextVal, '케이트 블란쳇');
insert into actor values (actor_seq.nextVal, '노에미 메를랑');
insert into actor values (actor_seq.nextVal, '니나 호스');

--드림
insert into actor values (actor_seq.nextVal, '박서준');
insert into actor values (actor_seq.nextVal, '아이유');
insert into actor values (actor_seq.nextVal, '김종수');
insert into actor values (actor_seq.nextVal, '고창석');
insert into actor values (actor_seq.nextVal, '정승길');
insert into actor values (actor_seq.nextVal, '이현우');
insert into actor values (actor_seq.nextVal, '양현민');
insert into actor values (actor_seq.nextVal, '홍완표');

--옥수역귀신
insert into actor values (actor_seq.nextVal, '김보라');
insert into actor values (actor_seq.nextVal, '김재현');
insert into actor values (actor_seq.nextVal, '신소율');

--보스턴 교살자
insert into actor values (actor_seq.nextVal, '키이라 나이틀리');
insert into actor values (actor_seq.nextVal, '캐리 쿤');
insert into actor values (actor_seq.nextVal, '알렉산드로 니볼라');
insert into actor values (actor_seq.nextVal, '크리스 쿠퍼');

--똑똑똑
insert into actor values (actor_seq.nextVal, '데이브 바티스타');
insert into actor values (actor_seq.nextVal, '루퍼트 그린트');

--포커페이스
insert into actor values (actor_seq.nextVal, '러셀 크로우');
insert into actor values (actor_seq.nextVal, '리암 햄스워스');
insert into actor values (actor_seq.nextVal, '엘사 파타키');

--리바운드
insert into actor values (actor_seq.nextVal, '안재홍');
insert into actor values (actor_seq.nextVal, '이신영');
insert into actor values (actor_seq.nextVal, '정진운');
insert into actor values (actor_seq.nextVal, '김택');
insert into actor values (actor_seq.nextVal, '정건주');
insert into actor values (actor_seq.nextVal, '김민');
insert into actor values (actor_seq.nextVal, '안지호');

--마루이 비디오
insert into actor values (actor_seq.nextVal, '서현우');
insert into actor values (actor_seq.nextVal, '조민경');
insert into actor values (actor_seq.nextVal, '임한성');
insert into actor values (actor_seq.nextVal, '안현빈');
insert into actor values (actor_seq.nextVal, '박희진');
insert into actor values (actor_seq.nextVal, '안민영');

--서치 2
insert into actor values (actor_seq.nextVal, '스톰 레이드');
insert into actor values (actor_seq.nextVal, '켄 렁');
insert into actor values (actor_seq.nextVal, '다니엘 헤니');
insert into actor values (actor_seq.nextVal, '니아 롱');
insert into actor values (actor_seq.nextVal, '에이미 랜덱커');

--이니셰린의 밴시
insert into actor values (actor_seq.nextVal, '콜린 파렐');
insert into actor values (actor_seq.nextVal, '브렌단 글리슨');
insert into actor values (actor_seq.nextVal, '케리 콘돈');
insert into actor values (actor_seq.nextVal, '베리 케오간');

--더 웨일
insert into actor values (actor_seq.nextVal, '브렌든 프레이저');
insert into actor values (actor_seq.nextVal, '세이디 싱크');
insert into actor values (actor_seq.nextVal, '홍 차우');
insert into actor values (actor_seq.nextVal, '타이 심킨스');
insert into actor values (actor_seq.nextVal, '사만다 모튼');

--오토라는 남자
insert into actor values (actor_seq.nextVal, '톰 행크스');
insert into actor values (actor_seq.nextVal, '마리아나 트레비노');
insert into actor values (actor_seq.nextVal, '레이첼 켈러');
insert into actor values (actor_seq.nextVal, '마누엘 가르시아 룰포');
insert into actor values (actor_seq.nextVal, '트루먼 행크스');

--어쩌면 우린 헤어졌는지 모른다
insert into actor values (actor_seq.nextVal, '이동휘');
insert into actor values (actor_seq.nextVal, '정은채');
insert into actor values (actor_seq.nextVal, '강길우');
insert into actor values (actor_seq.nextVal, '정다은');
insert into actor values (actor_seq.nextVal, '옥지영');

--존 윅4
insert into actor values (actor_seq.nextVal, '키아누 리브스');
insert into actor values (actor_seq.nextVal, '견자단');
insert into actor values (actor_seq.nextVal, '빌 스카스가드');
insert into actor values (actor_seq.nextVal, '로렌스 피시번');
insert into actor values (actor_seq.nextVal, '이안 맥쉐인');
insert into actor values (actor_seq.nextVal, '사나다 히로유키');
insert into actor values (actor_seq.nextVal, '랜스 레드딕');
insert into actor values (actor_seq.nextVal, '셰미어 앤더슨');

--앤트맨과 와스프:퀀텀매니아
insert into actor values (actor_seq.nextVal, '폴 러드');
insert into actor values (actor_seq.nextVal, '에반젤린 릴리');
insert into actor values (actor_seq.nextVal, '조나단 메이저스');
insert into actor values (actor_seq.nextVal, '캐서린 뉴튼');
insert into actor values (actor_seq.nextVal, '미셸 파이퍼');
insert into actor values (actor_seq.nextVal, '마이클 더글라스');

--스파이 코드명 포춘
insert into actor values (actor_seq.nextVal, '제이슨 스타뎀');
insert into actor values (actor_seq.nextVal, '조쉬 하트넷');
insert into actor values (actor_seq.nextVal, '오브리 플라자');

--어떤 영웅
insert into actor values (actor_seq.nextVal, '아미르 자디디');
insert into actor values (actor_seq.nextVal, '모센 타나반데');
insert into actor values (actor_seq.nextVal, '페레스테헤 사드르 오라파이');
insert into actor values (actor_seq.nextVal, '사리나 파르허디');

--곰돌이 푸: 피와 꿀
insert into actor values (actor_seq.nextVal, '크레이그 데이빗 다우젯');
insert into actor values (actor_seq.nextVal, '크리스 코델');
insert into actor values (actor_seq.nextVal, '니콜라이 레온');
insert into actor values (actor_seq.nextVal, '마크 할더');

--카운트
insert into actor values (actor_seq.nextVal, '진선규');
insert into actor values (actor_seq.nextVal, '성유빈');
insert into actor values (actor_seq.nextVal, '오나라');
insert into actor values (actor_seq.nextVal, '장동주');
insert into actor values (actor_seq.nextVal, '고규필');
insert into actor values (actor_seq.nextVal, '김민호');

--킬링 로맨스
insert into actor values (actor_seq.nextVal, '이하늬');
insert into actor values (actor_seq.nextVal, '이선균');
insert into actor values (actor_seq.nextVal, '공명');

--아기공룡 둘리: 얼음별 대모험 4K 리마스터링
insert into actor values (actor_seq.nextVal, '박영남');
insert into actor values (actor_seq.nextVal, '이인성');

--거울 속 외딴 성
insert into actor values (actor_seq.nextVal, '토우마 아미');
insert into actor values (actor_seq.nextVal, '아시다 마나');
insert into actor values (actor_seq.nextVal, '키타무라 타쿠미');
insert into actor values (actor_seq.nextVal, '키류 사쿠라');
insert into actor values (actor_seq.nextVal, '이타가키 리히토');
insert into actor values (actor_seq.nextVal, '요코미조 나호');
insert into actor values (actor_seq.nextVal, '타카야마 미나미');
insert into actor values (actor_seq.nextVal, '카지 유우키');

--에어
insert into actor values (actor_seq.nextVal, '맷 데이먼');
insert into actor values (actor_seq.nextVal, '벤 애플렉');
insert into actor values (actor_seq.nextVal, '제이슨 베이트먼');
insert into actor values (actor_seq.nextVal, '말론 웨이언스');
insert into actor values (actor_seq.nextVal, '크리스 메시나');
insert into actor values (actor_seq.nextVal, '크리스 터커');
insert into actor values (actor_seq.nextVal, '비올라 데이비스');

--아바타:물의 길
insert into actor values (actor_seq.nextVal, '조 샐다나');
insert into actor values (actor_seq.nextVal, '샘 워싱턴');
insert into actor values (actor_seq.nextVal, '시고니 위버');
insert into actor values (actor_seq.nextVal, '우나 채플린');
insert into actor values (actor_seq.nextVal, '지오바니 리비시');
insert into actor values (actor_seq.nextVal, '스티븐 랭');
insert into actor values (actor_seq.nextVal, '케이트 윈슬렛');
insert into actor values (actor_seq.nextVal, '클리프 커티스');

--날씨의 아이
insert into actor values (actor_seq.nextVal, '심규혁');
insert into actor values (actor_seq.nextVal, '김유림');
insert into actor values (actor_seq.nextVal, '최한');
insert into actor values (actor_seq.nextVal, '강은애');
insert into actor values (actor_seq.nextVal, '이장원');
insert into actor values (actor_seq.nextVal, '손정아');
insert into actor values (actor_seq.nextVal, '다이고 코타로');
insert into actor values (actor_seq.nextVal, '모리나나');

--서부 전선 이상 없다
insert into actor values (actor_seq.nextVal, '알브레이트 슈흐');
insert into actor values (actor_seq.nextVal, '에딘 하사노빅');
insert into actor values (actor_seq.nextVal, '다니엘 브륄');
insert into actor values (actor_seq.nextVal, '데비드 스트리에소브');
insert into actor values (actor_seq.nextVal, '마이클 위텐본');

--물안에서
insert into actor values (actor_seq.nextVal, '신석호');
insert into actor values (actor_seq.nextVal, '하성국');
insert into actor values (actor_seq.nextVal, '김승윤');
insert into actor values (actor_seq.nextVal, '김민희');
insert into actor values (actor_seq.nextVal, '김소령');

--에브리씽 에브리웨어 올 앳 원스 
insert into actor values (actor_seq.nextVal, '제이미 리 커티스');

--그대 어이가리
insert into actor values (actor_seq.nextVal, '선동혁');
insert into actor values (actor_seq.nextVal, '정아미');
insert into actor values (actor_seq.nextVal, '김유미');
insert into actor values (actor_seq.nextVal, '장태훈');
insert into actor values (actor_seq.nextVal, '민경진');
insert into actor values (actor_seq.nextVal, '박종진');
insert into actor values (actor_seq.nextVal, '이승철');

--팔로우드
insert into actor values (actor_seq.nextVal, '매튜 솔로몬');
insert into actor values (actor_seq.nextVal, '존 세비지');
insert into actor values (actor_seq.nextVal, '샘 발렌타인');
insert into actor values (actor_seq.nextVal, '팀 드라이어');
insert into actor values (actor_seq.nextVal, '사라 창');
insert into actor values (actor_seq.nextVal, '시마즈 테루미');
insert into actor values (actor_seq.nextVal, '인디아 애덤스');
insert into actor values (actor_seq.nextVal, '블랑카 블랑코');

--너의 이름은
insert into actor values (actor_seq.nextVal, '카미키 류노스케');
insert into actor values (actor_seq.nextVal, '카미시라이시 모네');
insert into actor values (actor_seq.nextVal, '나가사와 마사미');
insert into actor values (actor_seq.nextVal, '나리타 료');
insert into actor values (actor_seq.nextVal, '유우키 아오이');
insert into actor values (actor_seq.nextVal, '이치하라 에츠코');
insert into actor values (actor_seq.nextVal, '시마자키 노부나가');
insert into actor values (actor_seq.nextVal, '이시카와 카이토');

--교섭
insert into actor values (actor_seq.nextVal, '황정민');
insert into actor values (actor_seq.nextVal, '현빈');
insert into actor values (actor_seq.nextVal, '강기영');
insert into actor values (actor_seq.nextVal, '이승철');
insert into actor values (actor_seq.nextVal, '정재성');
insert into actor values (actor_seq.nextVal, '박형수');
insert into actor values (actor_seq.nextVal, '안창환');
insert into actor values (actor_seq.nextVal, '전성우');

--가디언즈 오브 갤럭시:Volume 3
insert into actor values (actor_seq.nextVal, '크리스 프랫');
insert into actor values (actor_seq.nextVal, '데이브 파티스타');
insert into actor values (actor_seq.nextVal, '빈 디젤');
insert into actor values (actor_seq.nextVal, '브래들리 쿠퍼');
insert into actor values (actor_seq.nextVal, '카렌 길런');
insert into actor values (actor_seq.nextVal, '폼 클레멘티에프');
insert into actor values (actor_seq.nextVal, '윌 폴터');

--
insert into actor values (actor_seq.nextVal, '해리슨 포드');
insert into actor values (actor_seq.nextVal, '피비 윌러-브리지');
insert into actor values (actor_seq.nextVal, '안토니오 반데라스');
insert into actor values (actor_seq.nextVal, '존 라이스 데이비스');
insert into actor values (actor_seq.nextVal, '매브 미켈슨');

--리벤져
insert into actor values (actor_seq.nextVal, '브루스 칸');
insert into actor values (actor_seq.nextVal, '박희순');
insert into actor values (actor_seq.nextVal, '윤진서');
insert into actor values (actor_seq.nextVal, '김인권');
insert into actor values (actor_seq.nextVal, '김나연');
insert into actor values (actor_seq.nextVal, '박철민');
insert into actor values (actor_seq.nextVal, '전수진');
insert into actor values (actor_seq.nextVal, '김재현');

-----------------------dataAppear--------------------------
drop sequence appear_seq;
CREATE SEQUENCE appear_seq;
INSERT INTO APPEAR values(appear_seq.nextVal,'나웅남 역', '주연', 1, 1);
INSERT INTO APPEAR values(appear_seq.nextVal, '조말봉 역', '주연', 1, 2);
INSERT INTO APPEAR values(appear_seq.nextVal, '장경숙 역', '주연', 1 ,3);
INSERT INTO APPEAR values(appear_seq.nextVal, '이정식 역', '주연', 1, 4);
INSERT INTO APPEAR values(appear_seq.nextVal, '나복천 역', '주연', 1, 5);
INSERT INTO APPEAR values(appear_seq.nextVal, '오일곤 역', '조연', 1, 6);
INSERT INTO APPEAR values(appear_seq.nextVal, '윤나라 역', '조연', 1, 7);
INSERT INTO APPEAR values(appear_seq.nextVal, '성형사 역', '조연', 1, 8);
INSERT INTO APPEAR values(appear_seq.nextVal, '이와토 스즈메', '주연', 2, 9);
INSERT INTO APPEAR values(appear_seq.nextVal, '무나카타 소타', '주연', 2,10);
INSERT INTO APPEAR values(appear_seq.nextVal, '이와토 타마키', '주연', 2,11);
INSERT INTO APPEAR values(appear_seq.nextVal, '무나카타 히츠지로', '조연', 2,12);
INSERT INTO APPEAR values(appear_seq.nextVal, '오카베 미노루', '조연', 2,13);
INSERT INTO APPEAR values(appear_seq.nextVal, '니노미야 루미', '조연', 2,14);
INSERT INTO APPEAR values(appear_seq.nextVal, '아마베 치카', '조연', 2,15);
INSERT INTO APPEAR values(appear_seq.nextVal, '이와토 츠바메', '조연', 2,16);
INSERT INTO APPEAR values(appear_seq.nextVal, '안미소', '주연', 3,17);
INSERT INTO APPEAR values(appear_seq.nextVal, '고하은', '주연', 3,18);
INSERT INTO APPEAR values(appear_seq.nextVal, '함진우', '주연', 3,19);
INSERT INTO APPEAR values(appear_seq.nextVal, '장혜진', '조연', 3,20);
INSERT INTO APPEAR values(appear_seq.nextVal, '하은부', '조연', 3,21);
INSERT INTO APPEAR values(appear_seq.nextVal, '기훈', '조연', 3,22);
INSERT INTO APPEAR values(appear_seq.nextVal, '어린 미소', '조연', 3,23);
INSERT INTO APPEAR values(appear_seq.nextVal, '어린 하은', '류지안', 3,24);
INSERT INTO APPEAR values(appear_seq.nextVal, '미셸 윌리엄스', '주연', 4,25);
INSERT INTO APPEAR values(appear_seq.nextVal, '폴 다노', '주연', 4,26);
INSERT INTO APPEAR values(appear_seq.nextVal, '세스 로건', '주연', 4,27);
INSERT INTO APPEAR values(appear_seq.nextVal, '가브리엘 라벨', '주연', 4,28);
INSERT INTO APPEAR values(appear_seq.nextVal, '주드 허쉬', '조연', 4,29);
INSERT INTO APPEAR values(appear_seq.nextVal, '샤잠', '주연', 6, 30);
INSERT INTO APPEAR values(appear_seq.nextVal, '빌리 뱃슨', '주연', 6,31);
INSERT INTO APPEAR values(appear_seq.nextVal, '아담 브로디', '조연', 6,32);
INSERT INTO APPEAR values(appear_seq.nextVal, '프레디 프리먼', '조연', 6,33);
INSERT INTO APPEAR values(appear_seq.nextVal, '메리 브롬필드', '조연', 6,34);
INSERT INTO APPEAR values(appear_seq.nextVal, '로즈 버틀러', '조연', 6,35);
INSERT INTO APPEAR values(appear_seq.nextVal, '유진', '조연', 6,36);
INSERT INTO APPEAR values(appear_seq.nextVal, '성인 다라 더들리', '조연', 6,37);
INSERT INTO APPEAR values(appear_seq.nextVal, '탄지로', '주연', 7, 38);
INSERT INTO APPEAR values(appear_seq.nextVal, '네즈코', '주연', 7, 39);
INSERT INTO APPEAR values(appear_seq.nextVal, '젠이츠', '주연', 7, 40);
INSERT INTO APPEAR values(appear_seq.nextVal, '이노스케', '주연', 7, 41);
INSERT INTO APPEAR values(appear_seq.nextVal, '양자경', '주연', 8, 42);
INSERT INTO APPEAR values(appear_seq.nextVal, '스테파니 수', '주연', 8, 43);
INSERT INTO APPEAR values(appear_seq.nextVal, '키 호이 콴', '주연', 8,44);
INSERT INTO APPEAR values(appear_seq.nextVal, '제이미 리 커티스', '주연', 8,45);
INSERT INTO APPEAR values(appear_seq.nextVal, '전해웅', '주연', 9,46);
INSERT INTO APPEAR values(appear_seq.nextVal, '권순태', '주연', 9,47);
INSERT INTO APPEAR values(appear_seq.nextVal, '김필도', '주연', 9,48);
INSERT INTO APPEAR values(appear_seq.nextVal, '정한모', '조연', 9,49);
INSERT INTO APPEAR values(appear_seq.nextVal, '문장호', '조연', 9,50);
INSERT INTO APPEAR values(appear_seq.nextVal, '안규환', '조연', 9,51);
INSERT INTO APPEAR values(appear_seq.nextVal, '박상만', '조연', 9,52);
INSERT INTO APPEAR values(appear_seq.nextVal, '송단아', '조연', 9,53);
INSERT INTO APPEAR values(appear_seq.nextVal, '제라드 버틀러', '주연', 10, 54);
INSERT INTO APPEAR values(appear_seq.nextVal, '마이크 콜터', '주연', 10,55);
INSERT INTO APPEAR values(appear_seq.nextVal, '전종서', '주연', 11, 56);
INSERT INTO APPEAR values(appear_seq.nextVal, '케이트 허드슨', '주연', 11, 57);
INSERT INTO APPEAR values(appear_seq.nextVal, '크레이크 로빈슨', '주연', 11, 58);
INSERT INTO APPEAR values(appear_seq.nextVal, '에드 스크레인', '조연', 11, 59);
INSERT INTO APPEAR values(appear_seq.nextVal, '에반 휘튼', '조연', 11, 60);
INSERT INTO APPEAR values(appear_seq.nextVal, '임영웅', '주연', 12, 61);
INSERT INTO APPEAR values(appear_seq.nextVal, '바드', '주연', 13, 62);
INSERT INTO APPEAR values(appear_seq.nextVal, '바바리안', '주연', 13, 63);
INSERT INTO APPEAR values(appear_seq.nextVal, '팔라딘', '주연', 13, 64);
INSERT INTO APPEAR values(appear_seq.nextVal, '소서러', '주연', 13, 65);
INSERT INTO APPEAR values(appear_seq.nextVal, '드루이드', '주연', 13, 66);
INSERT INTO APPEAR values(appear_seq.nextVal, '클로에 콜맨', '주연', 13, 67);
INSERT INTO APPEAR values(appear_seq.nextVal, '위저드', '주연', 13, 68);
INSERT INTO APPEAR values(appear_seq.nextVal, '사기꾼', '주연', 13, 69);
INSERT INTO APPEAR values(appear_seq.nextVal, '민수', '주연', 14, 70);
INSERT INTO APPEAR values(appear_seq.nextVal, '진국', '주연', 14, 71);
INSERT INTO APPEAR values(appear_seq.nextVal, '성경', '조연', 14, 72);
INSERT INTO APPEAR values(appear_seq.nextVal, '미선', '조연', 14, 73);
INSERT INTO APPEAR values(appear_seq.nextVal, '태욱', '조연', 14, 74);
INSERT INTO APPEAR values(appear_seq.nextVal, '상호', '조연', 14, 75);
INSERT INTO APPEAR values(appear_seq.nextVal, '선미', '조연', 14, 76);
INSERT INTO APPEAR values(appear_seq.nextVal, '영주', '조연', 14, 77);
INSERT INTO APPEAR values(appear_seq.nextVal, '소희', '주연', 15, 78);
INSERT INTO APPEAR values(appear_seq.nextVal, '유진', '주연', 15, 79);
INSERT INTO APPEAR values(appear_seq.nextVal, '쭈니', '조연', 15, 80);
INSERT INTO APPEAR values(appear_seq.nextVal, '태준', '조연', 15, 81);
INSERT INTO APPEAR values(appear_seq.nextVal, '동호', '조연', 15, 82);
INSERT INTO APPEAR values(appear_seq.nextVal, '은아', '조연', 15, 83);
INSERT INTO APPEAR values(appear_seq.nextVal, '소희 엄마', '조연', 15, 84);
INSERT INTO APPEAR values(appear_seq.nextVal, '소희 아빠', '조연', 15, 85);
INSERT INTO APPEAR values(appear_seq.nextVal, '케이트 블란쳇', '주연', 16,86);
INSERT INTO APPEAR values(appear_seq.nextVal, '노에미 메를랑', '조연', 16,87);
INSERT INTO APPEAR values(appear_seq.nextVal, '니나 호스', '조연', 16,88);
INSERT INTO APPEAR values(appear_seq.nextVal, '윤홍대', '주연', 17,89);
INSERT INTO APPEAR values(appear_seq.nextVal, '이소민', '주연', 17,90);
INSERT INTO APPEAR values(appear_seq.nextVal, '김환동', '조연', 17,91);
INSERT INTO APPEAR values(appear_seq.nextVal, '전효봉', '조연', 17,92);
INSERT INTO APPEAR values(appear_seq.nextVal, '손범수', '조연', 17,93);
INSERT INTO APPEAR values(appear_seq.nextVal, '김인선', '조연', 17,94);
INSERT INTO APPEAR values(appear_seq.nextVal, '전문수', '조연', 17,95);
INSERT INTO APPEAR values(appear_seq.nextVal, '영진', '조연', 17,96);
INSERT INTO APPEAR values(appear_seq.nextVal, '김보라', '주연', 18,97);
INSERT INTO APPEAR values(appear_seq.nextVal, '김재현', '주연', 18,98);
INSERT INTO APPEAR values(appear_seq.nextVal, '신소을', '주연', 18,99);
INSERT INTO APPEAR values(appear_seq.nextVal, '키이라 나이틀리', '주연', 19, 100);
INSERT INTO APPEAR values(appear_seq.nextVal, '캐리 쿤', '주연', 19, 101);
INSERT INTO APPEAR values(appear_seq.nextVal, '알렉산드로 니볼라', '주연', 19, 102);
INSERT INTO APPEAR values(appear_seq.nextVal, '크리스 쿠퍼', '주연', 19, 103);
INSERT INTO APPEAR values(appear_seq.nextVal, '데이브 바티스타', '주연', 20, 104);
INSERT INTO APPEAR values(appear_seq.nextVal, '루퍼트 그린트', '주연', 20, 105);
INSERT INTO APPEAR values(appear_seq.nextVal, '러셀 크로우', '주연', 21, 106);
INSERT INTO APPEAR values(appear_seq.nextVal, '리함 헴스워스', '주연', 21, 107);
INSERT INTO APPEAR values(appear_seq.nextVal, '엘사 파타키', '주연', 21, 108);
INSERT INTO APPEAR values(appear_seq.nextVal, '안재홍', '주연', 22, 109);
INSERT INTO APPEAR values(appear_seq.nextVal, '이신형', '주연', 22, 110);
INSERT INTO APPEAR values(appear_seq.nextVal, '정진운', '주연', 22, 111);
INSERT INTO APPEAR values(appear_seq.nextVal, '김택', '주연', 22, 112);
INSERT INTO APPEAR values(appear_seq.nextVal, '정건주', '주연', 22, 113);
INSERT INTO APPEAR values(appear_seq.nextVal, '김민', '주연', 22, 114);
INSERT INTO APPEAR values(appear_seq.nextVal, '안지호', '주연', 22, 115);
INSERT INTO APPEAR values(appear_seq.nextVal, '김피디', '주연', 23, 116);
INSERT INTO APPEAR values(appear_seq.nextVal, '여기자', '주연', 23, 117);
INSERT INTO APPEAR values(appear_seq.nextVal, '조감독', '조연', 23, 118);
INSERT INTO APPEAR values(appear_seq.nextVal, '카메라맨', '조연', 23, 119);
INSERT INTO APPEAR values(appear_seq.nextVal, '조병선', '조연', 23, 120);
INSERT INTO APPEAR values(appear_seq.nextVal, '무속인', '조연', 23, 121);
INSERT INTO APPEAR values(appear_seq.nextVal, '스톰 레이드', '주연', 24, 122);
INSERT INTO APPEAR values(appear_seq.nextVal, '켄렁', '주연', 24, 123);
INSERT INTO APPEAR values(appear_seq.nextVal, '다니엘 헤니', '주연', 24, 124);
INSERT INTO APPEAR values(appear_seq.nextVal, '니아 롱', '주연', 24, 125);
INSERT INTO APPEAR values(appear_seq.nextVal, '에이미 랜덱커', '주연', 24, 126);
INSERT INTO APPEAR values(appear_seq.nextVal, '콜린 파렐', '주연', 25, 127);
INSERT INTO APPEAR values(appear_seq.nextVal, '브렌단 글리슨', '주연', 25,128);
INSERT INTO APPEAR values(appear_seq.nextVal, '케리 콘돈', '조연', 25,129);
INSERT INTO APPEAR values(appear_seq.nextVal, '배리 케오간', '조연', 25,130);
INSERT INTO APPEAR values(appear_seq.nextVal, '찰리', '주연', 26, 131);
INSERT INTO APPEAR values(appear_seq.nextVal, '엘리', '주연', 26, 132);
INSERT INTO APPEAR values(appear_seq.nextVal, '리즈', '주연', 26, 133);
INSERT INTO APPEAR values(appear_seq.nextVal, '토마스', '조연', 26, 134);
INSERT INTO APPEAR values(appear_seq.nextVal, '메리', '조연', 26, 135);
INSERT INTO APPEAR values(appear_seq.nextVal, '오토', '주연', 27, 136);
INSERT INTO APPEAR values(appear_seq.nextVal, '마리아나 트레비노', '조연', 27, 137);
INSERT INTO APPEAR values(appear_seq.nextVal, '레이첼 켈러', '조연', 27, 138);
INSERT INTO APPEAR values(appear_seq.nextVal, '마누엘 가르시아 룰포', '조연', 27, 139);
INSERT INTO APPEAR values(appear_seq.nextVal, '트루먼 행크스', '조연', 27, 140);
INSERT INTO APPEAR values(appear_seq.nextVal, '준호', '주연', 28,141);
INSERT INTO APPEAR values(appear_seq.nextVal, '아영', '주연', 28,142);
INSERT INTO APPEAR values(appear_seq.nextVal, '경일', '주연', 28,143);
INSERT INTO APPEAR values(appear_seq.nextVal, '안나', '주연', 28,144);
INSERT INTO APPEAR values(appear_seq.nextVal, '희수', '조연', 28,145);
INSERT INTO APPEAR values(appear_seq.nextVal, '키아누 르브스', '주연', 29, 146);
INSERT INTO APPEAR values(appear_seq.nextVal, '견자단', '주연', 29, 147);
INSERT INTO APPEAR values(appear_seq.nextVal, '빌 스카스가드', '주연', 29, 148);
INSERT INTO APPEAR values(appear_seq.nextVal, '로렌스 피시번', '주연', 29, 149);
INSERT INTO APPEAR values(appear_seq.nextVal, '이안 맥쉐인', '주연', 29, 150);
INSERT INTO APPEAR values(appear_seq.nextVal, '사나다 히로유키', '주연', 29, 151);
INSERT INTO APPEAR values(appear_seq.nextVal, '랜스 레드딕', '조연', 29, 152);
INSERT INTO APPEAR values(appear_seq.nextVal, '셰미어 앤더슨', '조연', 29, 153);
INSERT INTO APPEAR values(appear_seq.nextVal, '스캇', '주연', 30, 154);
INSERT INTO APPEAR values(appear_seq.nextVal, '호프', '주연', 30, 155);
INSERT INTO APPEAR values(appear_seq.nextVal, '정복자 캉', '주연', 30, 156);
INSERT INTO APPEAR values(appear_seq.nextVal, '캐시', '주연', 30, 157);
INSERT INTO APPEAR values(appear_seq.nextVal, '재닛', '주연', 30, 158);
INSERT INTO APPEAR values(appear_seq.nextVal, '행크', '주연', 30, 159);
INSERT INTO APPEAR values(appear_seq.nextVal, '제이슨 스타뎀', '주연', 31,160);
INSERT INTO APPEAR values(appear_seq.nextVal, '조쉬 하트넷', '주연', 31,161);
INSERT INTO APPEAR values(appear_seq.nextVal, '휴 그랜트', '주연', 31,69);
INSERT INTO APPEAR values(appear_seq.nextVal, '오브리 플라자', '주연', 31,162);
INSERT INTO APPEAR values(appear_seq.nextVal, '아미르 자디디', '주연', 32,163);
INSERT INTO APPEAR values(appear_seq.nextVal, '모센 타나반데', '주연', 32,164);
INSERT INTO APPEAR values(appear_seq.nextVal, '페레스테헤 사드르 오라파이', '주연', 32,165);
INSERT INTO APPEAR values(appear_seq.nextVal, '사리나 파르허디', '주연', 32,166);
INSERT INTO APPEAR values(appear_seq.nextVal, '푸', '주연', 33, 167);
INSERT INTO APPEAR values(appear_seq.nextVal, '피글렛', '주연', 33, 168);
INSERT INTO APPEAR values(appear_seq.nextVal, '크리스토퍼 로빈', '주연', 33, 169);
INSERT INTO APPEAR values(appear_seq.nextVal, '마크 할더', '조연', 33, 170);
INSERT INTO APPEAR values(appear_seq.nextVal, '시헌', '주연', 34, 171);
INSERT INTO APPEAR values(appear_seq.nextVal, '윤우', '주연', 34, 172);
INSERT INTO APPEAR values(appear_seq.nextVal, '일선', '주연', 34, 173);
INSERT INTO APPEAR values(appear_seq.nextVal, '교장', '주연', 34, 92);
INSERT INTO APPEAR values(appear_seq.nextVal, '장동주', '주연', 34, 174);
INSERT INTO APPEAR values(appear_seq.nextVal, '고규필', '주연', 34, 175);
INSERT INTO APPEAR values(appear_seq.nextVal, '김민호', '주연', 34, 176);
INSERT INTO APPEAR values(appear_seq.nextVal, '여래', '주연', 35, 177);
INSERT INTO APPEAR values(appear_seq.nextVal, '조나단', '주연', 35, 178);
INSERT INTO APPEAR values(appear_seq.nextVal, '범우', '주연', 35, 179);
INSERT INTO APPEAR values(appear_seq.nextVal, '둘리', '주연', 36, 180);
INSERT INTO APPEAR values(appear_seq.nextVal, '고길동', '이인성', 36, 181);
INSERT INTO APPEAR values(appear_seq.nextVal, '코코로', '주연', 37, 182);
INSERT INTO APPEAR values(appear_seq.nextVal, '늑대님', '주연', 37, 183);
INSERT INTO APPEAR values(appear_seq.nextVal, '리온', '주연', 37, 184);
INSERT INTO APPEAR values(appear_seq.nextVal, '아키', '조연', 37, 185);
INSERT INTO APPEAR values(appear_seq.nextVal, '스바루', '조연', 37, 186);
INSERT INTO APPEAR values(appear_seq.nextVal, '후카', '조연', 37, 187);
INSERT INTO APPEAR values(appear_seq.nextVal, '마사무네', '조연', 37, 188);
INSERT INTO APPEAR values(appear_seq.nextVal, '우레시노', '조연', 37, 189);
INSERT INTO APPEAR values(appear_seq.nextVal, '소니 바카로', '주연', 38, 190);
INSERT INTO APPEAR values(appear_seq.nextVal, '벤 애플렉', '주연', 38, 191);
INSERT INTO APPEAR values(appear_seq.nextVal, '제이슨 베이트먼', '주연', 38, 192);
INSERT INTO APPEAR values(appear_seq.nextVal, '말론 웨이언스', '주연', 38, 193);
INSERT INTO APPEAR values(appear_seq.nextVal, '크리스 메시나', '주연', 38, 194);
INSERT INTO APPEAR values(appear_seq.nextVal, '크리스 터커', '주연', 38, 195);
INSERT INTO APPEAR values(appear_seq.nextVal, '비올라 데이비스', '주연', 38, 196);
INSERT INTO APPEAR values(appear_seq.nextVal, '네이티리', '주연', 39, 197);
INSERT INTO APPEAR values(appear_seq.nextVal, '제이크 설리', '주연', 39, 198);
INSERT INTO APPEAR values(appear_seq.nextVal, '그레이스 어거스틴', '시고니 위버', 39, 199);
INSERT INTO APPEAR values(appear_seq.nextVal, '우나 채플린', '주연', 39, 200);
INSERT INTO APPEAR values(appear_seq.nextVal, '지오바니 리비시', '주연', 39, 201);
INSERT INTO APPEAR values(appear_seq.nextVal, '마일즈 쿼리치', '주연', 39, 202);
INSERT INTO APPEAR values(appear_seq.nextVal, '케이트 윈슬랫', '주연', 39, 203);
INSERT INTO APPEAR values(appear_seq.nextVal, '클리프 커티스', '조연', 39, 204);
INSERT INTO APPEAR values(appear_seq.nextVal, '호다카', '주연', 40, 205);
INSERT INTO APPEAR values(appear_seq.nextVal, '히나', '주연', 40, 206);
INSERT INTO APPEAR values(appear_seq.nextVal, '스가', '주연', 40, 207);
INSERT INTO APPEAR values(appear_seq.nextVal, '나츠미', '주연', 40, 208);
INSERT INTO APPEAR values(appear_seq.nextVal, '야스이', '주연', 40, 209);
INSERT INTO APPEAR values(appear_seq.nextVal, '타치바나 후미', '주연', 40, 210);
INSERT INTO APPEAR values(appear_seq.nextVal, '호다카', '주연', 40, 211);
INSERT INTO APPEAR values(appear_seq.nextVal, '히나', '주연', 40, 212);
INSERT INTO APPEAR values(appear_seq.nextVal, '알브레히트 슈흐', '주연', 41, 213);
INSERT INTO APPEAR values(appear_seq.nextVal, '에딘 하사노빅', '주연', 41, 214);
INSERT INTO APPEAR values(appear_seq.nextVal, '다니엘 브륄', '주연', 41, 215);
INSERT INTO APPEAR values(appear_seq.nextVal, '데비드 스트리에소브', '주연', 41, 216);
INSERT INTO APPEAR values(appear_seq.nextVal, '마이클 위텐본', '주연', 41, 217);
INSERT INTO APPEAR values(appear_seq.nextVal, '신석호', '주연', 42, 218);
INSERT INTO APPEAR values(appear_seq.nextVal, '하성국', '주연', 42, 219);
INSERT INTO APPEAR values(appear_seq.nextVal, '김승윤', '주연', 42, 220);
INSERT INTO APPEAR values(appear_seq.nextVal, '김민희', '주연', 42, 221);
INSERT INTO APPEAR values(appear_seq.nextVal, '김소령', '주연', 42, 222);
INSERT INTO APPEAR values(appear_seq.nextVal, '양자경', '주연', 43, 42);
INSERT INTO APPEAR values(appear_seq.nextVal, '스테파니 수', '주연', 43, 43);
INSERT INTO APPEAR values(appear_seq.nextVal, '키호이 콴', '주연', 43, 44);
INSERT INTO APPEAR values(appear_seq.nextVal, '제이미 리 커티스', '주연', 43, 223);
INSERT INTO APPEAR values(appear_seq.nextVal, '동혁', '주연',44, 224);
INSERT INTO APPEAR values(appear_seq.nextVal, '종렬', '주연',44, 224);
INSERT INTO APPEAR values(appear_seq.nextVal, '엔딩 구음 노래', '주연',44, 224);
INSERT INTO APPEAR values(appear_seq.nextVal, '연희', '주연',44, 225);
INSERT INTO APPEAR values(appear_seq.nextVal, '수경', '주연',44, 226);
INSERT INTO APPEAR values(appear_seq.nextVal, '태훈', '주연',44, 227);
INSERT INTO APPEAR values(appear_seq.nextVal, '광재', '조연',44, 228);
INSERT INTO APPEAR values(appear_seq.nextVal, '박선생', '조연',44, 229);
INSERT INTO APPEAR values(appear_seq.nextVal, '태식', '조연',44, 230);
INSERT INTO APPEAR values(appear_seq.nextVal, '마이크', '주연', 45, 231);
INSERT INTO APPEAR values(appear_seq.nextVal, '월러스', '주연', 45, 232);
INSERT INTO APPEAR values(appear_seq.nextVal, '대니', '주연', 45, 233);
INSERT INTO APPEAR values(appear_seq.nextVal, '크리스토퍼', '주연', 45, 234);
INSERT INTO APPEAR values(appear_seq.nextVal, '사라 창', '조연', 45, 235);
INSERT INTO APPEAR values(appear_seq.nextVal, '시마즈 테루미', '조연', 45, 236);
INSERT INTO APPEAR values(appear_seq.nextVal, '인디아 애덤스', '조연', 45, 237);
INSERT INTO APPEAR values(appear_seq.nextVal, '블랑카 블랑코', '조연', 45, 238);
INSERT INTO APPEAR values(appear_seq.nextVal, '타치바나 타키', '주연', 46, 239);
INSERT INTO APPEAR values(appear_seq.nextVal, '미야미즈 미츠하', '주연', 46, 240);
INSERT INTO APPEAR values(appear_seq.nextVal, '오쿠데라 미키', '조연', 46, 241);
INSERT INTO APPEAR values(appear_seq.nextVal, '테시가와라 카츠히코', '조연', 46, 242);
INSERT INTO APPEAR values(appear_seq.nextVal, '나토라 사야카', '조연', 46, 243);
INSERT INTO APPEAR values(appear_seq.nextVal, '미야미즈 히토하', '조연', 46, 244);
INSERT INTO APPEAR values(appear_seq.nextVal, '후지히 츠카사', '조연', 46, 245);
INSERT INTO APPEAR values(appear_seq.nextVal, '타카기 신타', '조연', 46, 246);
INSERT INTO APPEAR values(appear_seq.nextVal, '정재호', '주연', 47, 247);
INSERT INTO APPEAR values(appear_seq.nextVal, '박대식', '주연', 47, 248);
INSERT INTO APPEAR values(appear_seq.nextVal, '카심', '주연', 47, 249);
INSERT INTO APPEAR values(appear_seq.nextVal, '이봉한', '주연', 47, 249);
INSERT INTO APPEAR values(appear_seq.nextVal, '최장관', '조연', 47, 250);
INSERT INTO APPEAR values(appear_seq.nextVal, '김차관', '조연', 47, 251);
INSERT INTO APPEAR values(appear_seq.nextVal, '박전략', '조연', 47, 252);
INSERT INTO APPEAR values(appear_seq.nextVal, '심정보', '조연', 47, 253);
INSERT INTO APPEAR values(appear_seq.nextVal, '차서기', '조연', 47, 254);
INSERT INTO APPEAR values(appear_seq.nextVal, '스타로드', '주연', 48, 255);
INSERT INTO APPEAR values(appear_seq.nextVal, '피터 제이슨 퀼', '주연', 48, 255);
INSERT INTO APPEAR values(appear_seq.nextVal, '가모라', '주연', 48, 197); -- 조 샐다나
INSERT INTO APPEAR values(appear_seq.nextVal, '드랙스', '주연', 48, 256);
INSERT INTO APPEAR values(appear_seq.nextVal, '그루트 목소리', '주연', 48, 257);
INSERT INTO APPEAR values(appear_seq.nextVal, '로켓 목소리', '주연', 48, 258);
INSERT INTO APPEAR values(appear_seq.nextVal, '네뷸라', '조연', 48, 259);
INSERT INTO APPEAR values(appear_seq.nextVal, '맨티스', '조연', 48, 260);
INSERT INTO APPEAR values(appear_seq.nextVal, '아담 워록', '조연', 48, 261);
INSERT INTO APPEAR values(appear_seq.nextVal, '인디아나 존스', '주연', 49, 262);
INSERT INTO APPEAR values(appear_seq.nextVal, '피비 윌러-브리지', '주연', 49, 263);
INSERT INTO APPEAR values(appear_seq.nextVal, '안토니오 반데라스', '주연', 49, 264);
INSERT INTO APPEAR values(appear_seq.nextVal, '존 라이스 데이비스', '주연', 49, 265);
INSERT INTO APPEAR values(appear_seq.nextVal, '매즈 미켈슨', '주연', 49, 266);
INSERT INTO APPEAR values(appear_seq.nextVal, '김율', '주연', 50, 267);
INSERT INTO APPEAR values(appear_seq.nextVal, '카를로스 쿤', '주연', 50, 268);
INSERT INTO APPEAR values(appear_seq.nextVal, '말리', '주연', 50, 269);
INSERT INTO APPEAR values(appear_seq.nextVal, '바우', '주연', 50, 270);
INSERT INTO APPEAR values(appear_seq.nextVal, '진', '조연', 50, 271);
INSERT INTO APPEAR values(appear_seq.nextVal, '이파', '조연', 50, 272);
INSERT INTO APPEAR values(appear_seq.nextVal, '카오리', '조연', 50, 273);
INSERT INTO APPEAR values(appear_seq.nextVal, '레오파드', '조연', 50, 274);
-----------------------------datafamousline----------------------------
drop sequence famousline_seq;
create sequence famousline_seq;

insert into famousline values (famousline_seq.nextVal, '23/03/08','나는 스즈메의 내일이란다',612,9,2);
insert into famousline values (famousline_seq.nextVal, '23/03/08','스즈메 좋아! 너는 방해돼',190,9,2);
insert into famousline values (famousline_seq.nextVal, '23/03/09','있자나 너, 이 근처에 폐허 없니?',128,10,2);

insert into famousline values (famousline_seq.nextVal, '23/03/15','여름 하에 은하수 은이면 여름은 하수?',35,17,3);
insert into famousline values (famousline_seq.nextVal, '23/03/20','우린 앞으로 다른 삶을 살게 될거야, 넌 예전의 나처럼 난 예전의 너처럼..',17,17,3);
insert into famousline values (famousline_seq.nextVal, '23/03/13','그 때 처음 알았어 마음도 그릴 수 있다는 거',35,18,3);

insert into famousline values (famousline_seq.nextVal, '23/03/24','지평선은 아래있어도 좋고, 위에있어도 좋지만, 가운데 있으면 더럽게 재미없는거야. 알았으면 이제 꺼져',4,28,4);
insert into famousline values (famousline_seq.nextVal, '23/03/23','베이글만!',1,28,4);
insert into famousline values (famousline_seq.nextVal, '23/03/26','인생은 영화가 될 수 없어!',0,26,4);

insert into famousline values (famousline_seq.nextVal, '23/03/01','예수님입니다. 부활 하셨거든',77,46,9);
insert into famousline values (famousline_seq.nextVal, '23/03/01','원래 세상은 더럽고 인생은 서럽다.',51,47,9);
insert into famousline values (famousline_seq.nextVal, '23/03/01','(봉고차) 몇개고?',50,47,9);

insert into famousline values (famousline_seq.nextVal, '23/03/01','더 좋은 계획 있어요?',1,55,10);
insert into famousline values (famousline_seq.nextVal, '23/03/01','언제봐도 안 질리는 풍경이라니까...',0,54,10);

insert into famousline values (famousline_seq.nextVal, '23/03/01','별을 품을 수 있는 더 큰 우주가 되겠습니다',70,61,12);
insert into famousline values (famousline_seq.nextVal, '23/03/01','세계 최고의 가수가 될거예요',70,61,12);
insert into famousline values (famousline_seq.nextVal, '23/03/01','영웅시대는 저의 전부입니다.',70,61,12);

insert into famousline values (famousline_seq.nextVal, '23/03/04','반려견은 집에 놓는 소품이 아닙니다.',14,70,14);
insert into famousline values (famousline_seq.nextVal, '23/03/04','나는 꿈만큼은 팔고 싶지않아. 그것마저 팔면 나는 없어져. 아무것도 아닌게 돼.',11,71,14);
insert into famousline values (famousline_seq.nextVal, '23/03/04','78이 뭐가 많아. 형 인생 지금 막 시작했거든',10,71,14);

insert into famousline values (famousline_seq.nextVal, '23/02/09','힘든 일을 하면 존중받으면 좋을텐데 그런 일이나 한다고 더 무시해',85,79,15);
insert into famousline values (famousline_seq.nextVal, '23/02/28','병신 같애',85,78,15);

insert into famousline values (famousline_seq.nextVal, '23/03/01','아버지',2,116,23);

insert into famousline values (famousline_seq.nextVal, '23/02/26','시리야 119 전화해줘',30,122,24);
insert into famousline values (famousline_seq.nextVal, '23/02/26','피-스',10,122,24);
insert into famousline values (famousline_seq.nextVal, '23/02/26','love you',3,122,24);

insert into famousline values (famousline_seq.nextVal, '23/03/16','손가락 자르기 전까지는 분위기 괜찮았다니까!',0,127,25);
insert into famousline values (famousline_seq.nextVal, '23/03/16','혹시 절 만나주실 가능성은 없겠죠? 혹시나 해서요.. 용기있는자가 미인을..뭐 거시기 있잖아요',0,130,25);
insert into famousline values (famousline_seq.nextVal, '23/03/16','꼭 반드시 좆되겠네요!',0,128,25);

insert into famousline values (famousline_seq.nextVal, '23/03/02','알아야겠어. 내 인생에서 잘한 일이 하나라도 있단걸!',11,131,26);
insert into famousline values (famousline_seq.nextVal, '23/03/02','그건 정말 좋은 에세이야',6,131,26);

insert into famousline values (famousline_seq.nextVal, '23/02/15','우리들 전부',44,156,30);
insert into famousline values (famousline_seq.nextVal, '23/02/15','내 덕에 8달러나 아꼈지',31,159,30);
insert into famousline values (famousline_seq.nextVal, '23/02/15','18147',28,154,30);

insert into famousline values (famousline_seq.nextVal, '23/02/24','바통 좀 받아도. 숨차다.',24,171,34);
insert into famousline values (famousline_seq.nextVal, '23/02/23','니 알아서 해라',3,171,34);
insert into famousline values (famousline_seq.nextVal, '23/03/07','신호받아라',0,171,34);

insert into famousline values (famousline_seq.nextVal, '06/10/06','저질? 그래 너 오늘 저질 맛 좀 보자',61,181,36);
insert into famousline values (famousline_seq.nextVal, '06/08/23','종로로 갈까요~ 영등포로 갈까요~ 차라리 청량리로 갈까요~',61,181,36);
insert into famousline values (famousline_seq.nextVal, '08/07/15','갈비뼈 하나 실례하겠사와요',61,181,36);

insert into famousline values (famousline_seq.nextVal, '06/10/06','저질? 그래 너 오늘 저질 맛 좀 보자',61,181,36);
insert into famousline values (famousline_seq.nextVal, '06/10/06','저질? 그래 너 오늘 저질 맛 좀 보자',61,181,36);
insert into famousline values (famousline_seq.nextVal, '06/10/06','저질? 그래 너 오늘 저질 맛 좀 보자',61,181,36);

insert into famousline values (famousline_seq.nextVal, '22/12/14','아들엔 아들이야',416,197,39);
insert into famousline values (famousline_seq.nextVal, '22/12/16','아버지는 지킨다. 그것이 존재 이유다.',362,198,39);
insert into famousline values (famousline_seq.nextVal, '13/12/07','당신 면상을 봅니다.',350,199,39);

insert into famousline values (famousline_seq.nextVal, '19/10/30','상관없어! 상관없다고! 더 이상 히나는 맑은 소녀가 아니야! 맑은 날 따위 두 번 다시 못 봐도 괜찮아!',615,211,40);
insert into famousline values (famousline_seq.nextVal, '19/10/30','신이 있다면 우리에게 어떠한 것도 주지마시고. 가져가지도 말아주세요',547,211,40);
insert into famousline values (famousline_seq.nextVal, '19/10/30','지금부터 하늘이 맑아질거야',342,212,40);

insert into famousline values (famousline_seq.nextVal, '22/10/12','다정함을 보여줘',222,44,43);
insert into famousline values (famousline_seq.nextVal, '22/10/19','그 모든 거절과 그 모든 실망이 당신을 여기로 이끌었어, 이 순간으로.',149,44,43);
insert into famousline values (famousline_seq.nextVal, '22/10/21','그럼 그 한줌의 시간을 소중히 핡야',143,42,43);

insert into famousline values (famousline_seq.nextVal, '16/10/05','(좋아해) 이래선 이름을 알수없잖아',1436,240,46);
insert into famousline values (famousline_seq.nextVal, '16/08/27','한 번밖에 만지지 않았어!',1001,239,46);
insert into famousline values (famousline_seq.nextVal, '17/01/05','어제는 좀.. 귀여웠어',545,245,46);

insert into famousline values (famousline_seq.nextVal, '23/01/18','자존심이 총알 막아주는거 아닙니다',55,248,47);
insert into famousline values (famousline_seq.nextVal, '23/01/23','아쌀라말라이쿰',47,249,47);
insert into famousline values (famousline_seq.nextVal, '23/01/18','외교부의 사명 중 하나는 자국민 보호라고 알고 있습니다.',44,247,47);

insert into famousline values (famousline_seq.nextVal, '18/12/16','아저씨 제발요..엄마 내가 잘못했어..',13,271,50);
insert into famousline values (famousline_seq.nextVal, '18/12/27','아저씨 아저씨',7,271,50);
insert into famousline values (famousline_seq.nextVal, '18/12/14','돈 몇푼에 내가 니꺼라도 된 줄 아니? 넌 공사 사이즈도 안나와',6,269,50);


------------dataPreference-----------------
drop sequence prefer_seq;
create sequence prefer_seq;

-- 1-10
insert into preference values(prefer_seq.nextVal, 51, 49, 1, 26, 42, 25, 6, 1);
insert into preference values(prefer_seq.nextVal, 64, 36, 6, 36, 35, 18, 6, 2);
insert into preference values(prefer_seq.nextVal, 52, 48, 2, 25, 39, 22, 12, 3);
insert into preference values(prefer_seq.nextVal, 67, 33, 1, 31, 38, 18, 12, 4);
insert into preference values(prefer_seq.nextVal, 61, 39, 2, 24, 44, 24, 6, 5);
insert into preference values(prefer_seq.nextVal, 72, 28, 1, 31, 42, 20, 6, 6);
insert into preference values(prefer_seq.nextVal, 67, 33, 3, 35, 34, 22, 6, 7);
insert into preference values(prefer_seq.nextVal, 51, 49, 2, 35, 40, 17, 6, 8);
insert into preference values(prefer_seq.nextVal, 58, 42, 2, 24, 39, 25, 10, 9);
insert into preference values(prefer_seq.nextVal, 60, 40, 0, 20, 38, 31, 10, 10);

-- 11-20
insert into preference values(prefer_seq.nextVal, 65, 35, 3, 28, 41, 21, 7, 11);
insert into preference values(prefer_seq.nextVal, 12, 88, 0, 5, 12, 19, 64, 12);
-- insert into preference values(prefer_seq.nextVal, 13);
insert into preference values(prefer_seq.nextVal, 40, 60, 4, 26, 37, 21, 12, 14);
insert into preference values(prefer_seq.nextVal, 59, 41, 2, 19, 37, 27, 15, 15);
insert into preference values(prefer_seq.nextVal, 61, 39, 1, 33, 41, 18, 8, 16);
--insert into preference values(prefer_seq.nextVal,  17);
--insert into preference values(prefer_seq.nextVal,  18);
--insert into preference values(prefer_seq.nextVal,  19);
insert into preference values(prefer_seq.nextVal, 61, 39, 1, 26, 40, 26, 6, 20);
insert into preference values(prefer_seq.nextVal, 67, 33, 0, 0, 67, 33, 0, 21);
insert into preference values(prefer_seq.nextVal, 66, 34, 2, 30, 40, 22, 6, 23);
insert into preference values(prefer_seq.nextVal, 51, 49, 1, 34, 38, 20, 8, 24);

insert into preference values (prefer_seq.nextVal, 66, 34, 2, 18, 46, 24, 10, 25);
insert into preference values (prefer_seq.nextVal, 62, 38, 0, 34, 38, 19, 9, 26);
insert into preference values (prefer_seq.nextVal, 79, 21, 3, 24, 31, 28, 14, 28);
insert into preference values (prefer_seq.nextVal, 61, 39, 2, 27, 42, 21, 7, 30);
insert into preference values (prefer_seq.nextVal, 70, 30, 0, 15, 50, 26, 9, 32);
insert into preference values (prefer_seq.nextVal, 49, 51, 1, 24, 41, 24, 10, 34);
insert into preference values (prefer_seq.nextVal, 63, 37, 2, 30, 39, 23, 6, 39);
insert into preference values (prefer_seq.nextVal, 71, 29, 14, 54, 19, 9, 4, 40);

-- preference 40 - 50
INSERT INTO Preference values(prefer_seq.nextVal, 71, 29, 14, 54, 19, 9, 4, 40);
INSERT INTO Preference values(prefer_seq.nextVal, 53, 47, 3, 47, 34, 12, 4, 43);
INSERT INTO Preference values(prefer_seq.nextVal, 67, 33, 5, 33, 29, 5, 29, 44);
INSERT INTO Preference values(prefer_seq.nextVal, 50, 50, 17, 0, 50, 33, 0, 45);
INSERT INTO Preference values(prefer_seq.nextVal, 54, 46, 10, 55, 16, 16, 3, 46);
INSERT INTO Preference values(prefer_seq.nextVal, 55, 45, 2, 26, 38, 22, 11, 47);
INSERT INTO Preference values(prefer_seq.nextVal, 33, 67, 0, 57, 29, 14, 0, 50);





--------datagenre--------------------

drop sequence genre_seq;
create sequence genre_seq;
insert into Genre values(genre_seq.nextval, '드라마');
insert into Genre values(genre_seq.nextval, '판타지');
insert into Genre values(genre_seq.nextval, '서부');
insert into Genre values(genre_seq.nextval, '공포');
insert into Genre values(genre_seq.nextval, '멜로/로멘스');
insert into Genre values(genre_seq.nextval, '모험');
insert into Genre values(genre_seq.nextval, '스릴러');
insert into Genre values(genre_seq.nextval, '느와르');
insert into Genre values(genre_seq.nextval, '컬트');
insert into Genre values(genre_seq.nextval, '다큐멘터리');
insert into Genre values(genre_seq.nextval, '코미디');
insert into Genre values(genre_seq.nextval, '가족');
insert into Genre values(genre_seq.nextval, '미스터리');
insert into Genre values(genre_seq.nextval, '전쟁');
insert into Genre values(genre_seq.nextval, '애니메이션');
insert into Genre values(genre_seq.nextval, '범죄');
insert into Genre values(genre_seq.nextval, '뮤지컬');
insert into Genre values(genre_seq.nextval, 'SF');
insert into Genre values(genre_seq.nextval, '액션');
insert into Genre values(genre_seq.nextval, '무협');
insert into Genre values(genre_seq.nextval, '에로');
insert into Genre values(genre_seq.nextval, '서스펜스');
insert into Genre values(genre_seq.nextval, '서사');
insert into Genre values(genre_seq.nextval, '블랙코미디');
insert into Genre values(genre_seq.nextval, '실험');
insert into Genre values(genre_seq.nextval, '공연실황');

----------------dataMovieGenre--------------

drop sequence MG_seq;
create sequence MG_seq;
insert into MovieGenre values(MG_seq.nextval,1,11);
insert into MovieGenre values(MG_seq.nextval,1,19);
insert into MovieGenre values(MG_seq.nextval,2,15);
insert into MovieGenre values(MG_seq.nextval,3,1);
insert into MovieGenre values(MG_seq.nextval,4,1);
insert into MovieGenre values(MG_seq.nextval,5,15);
insert into MovieGenre values(MG_seq.nextval,6,6);
insert into MovieGenre values(MG_seq.nextval,6,19);
insert into MovieGenre values(MG_seq.nextval,7,15);
insert into MovieGenre values(MG_seq.nextval,8,19);
insert into MovieGenre values(MG_seq.nextval,8,11);
insert into MovieGenre values(MG_seq.nextval,9,1);
insert into MovieGenre values(MG_seq.nextval,9,16);
insert into MovieGenre values(MG_seq.nextval,10,7);
insert into MovieGenre values(MG_seq.nextval,10,19);
insert into MovieGenre values(MG_seq.nextval,11,2);
insert into MovieGenre values(MG_seq.nextval,11,7);
insert into MovieGenre values(MG_seq.nextval,11,13);
insert into MovieGenre values(MG_seq.nextval,12,10);
insert into MovieGenre values(MG_seq.nextval,12,26);
insert into MovieGenre values(MG_seq.nextval,13,2);
insert into MovieGenre values(MG_seq.nextval,13,6);
insert into MovieGenre values(MG_seq.nextval,13,19);
insert into MovieGenre values(MG_seq.nextval,14,1);
insert into MovieGenre values(MG_seq.nextval,15,1);
insert into MovieGenre values(MG_seq.nextval,16,1);
insert into MovieGenre values(MG_seq.nextval,17,1);
insert into MovieGenre values(MG_seq.nextval,17,11);
insert into MovieGenre values(MG_seq.nextval,18,4);
insert into MovieGenre values(MG_seq.nextval,18,13);
insert into MovieGenre values(MG_seq.nextval,19,7);
insert into MovieGenre values(MG_seq.nextval,20,7);
insert into MovieGenre values(MG_seq.nextval,20,13);
insert into MovieGenre values(MG_seq.nextval,21,7);
insert into MovieGenre values(MG_seq.nextval,21,16);
insert into MovieGenre values(MG_seq.nextval,22,1);
insert into MovieGenre values(MG_seq.nextval,23,4);
insert into MovieGenre values(MG_seq.nextval,23,13);
insert into MovieGenre values(MG_seq.nextval,24,7);
insert into MovieGenre values(MG_seq.nextval,24,13);
insert into MovieGenre values(MG_seq.nextval,25,1);
insert into MovieGenre values(MG_seq.nextval,25,11);
insert into MovieGenre values(MG_seq.nextval,26,1);
insert into MovieGenre values(MG_seq.nextval,27,1);
insert into MovieGenre values(MG_seq.nextval,27,11);
insert into MovieGenre values(MG_seq.nextval,28,1);
insert into MovieGenre values(MG_seq.nextval,29,19);
insert into MovieGenre values(MG_seq.nextval,30,19);
insert into MovieGenre values(MG_seq.nextval,31,19);
insert into MovieGenre values(MG_seq.nextval,32,1);
insert into MovieGenre values(MG_seq.nextval,33,4);
insert into MovieGenre values(MG_seq.nextval,34,1);
insert into MovieGenre values(MG_seq.nextval,35,1);
insert into MovieGenre values(MG_seq.nextval,36,15);
insert into MovieGenre values(MG_seq.nextval,36,12);
insert into MovieGenre values(MG_seq.nextval,36,11);
insert into MovieGenre values(MG_seq.nextval,36,6);
insert into MovieGenre values(MG_seq.nextval,36,17);
insert into MovieGenre values(MG_seq.nextval,37,1);
insert into MovieGenre values(MG_seq.nextval,37,2);
insert into MovieGenre values(MG_seq.nextval,37,15);
insert into MovieGenre values(MG_seq.nextval,38,1);
insert into MovieGenre values(MG_seq.nextval,39,6);
insert into MovieGenre values(MG_seq.nextval,39,19);
insert into MovieGenre values(MG_seq.nextval,39,18);
insert into MovieGenre values(MG_seq.nextval,39,7);
insert into MovieGenre values(MG_seq.nextval,40,15);
insert into MovieGenre values(MG_seq.nextval,41,1);
insert into MovieGenre values(MG_seq.nextval,42,1);
insert into MovieGenre values(MG_seq.nextval,43,19);
insert into MovieGenre values(MG_seq.nextval,43,11);
insert into MovieGenre values(MG_seq.nextval,44,1);
insert into MovieGenre values(MG_seq.nextval,45,13);
insert into MovieGenre values(MG_seq.nextval,45,4);
insert into MovieGenre values(MG_seq.nextval,45,7);
insert into MovieGenre values(MG_seq.nextval,46,15);
insert into MovieGenre values(MG_seq.nextval,46,1);
insert into MovieGenre values(MG_seq.nextval,46,5);
insert into MovieGenre values(MG_seq.nextval,47,1);
insert into MovieGenre values(MG_seq.nextval,48,19);
insert into MovieGenre values(MG_seq.nextval,48,6);
insert into MovieGenre values(MG_seq.nextval,48,18);
insert into MovieGenre values(MG_seq.nextval,49,19);
insert into MovieGenre values(MG_seq.nextval,49,6);
insert into MovieGenre values(MG_seq.nextval,50,19);

----------------dataCountry-----------------

drop sequence country_seq;
create sequence country_seq; 

-- ㄱ
insert into country values(country_seq.nextVal, '가봉');
insert into country values(country_seq.nextVal, '그레나다');
insert into country values(country_seq.nextVal, '기아나(프랑스령)');
insert into country values(country_seq.nextVal, '가나');
insert into country values(country_seq.nextVal, '그린란드');
insert into country values(country_seq.nextVal, '기니');
insert into country values(country_seq.nextVal, '과들루프');
insert into country values(country_seq.nextVal, '그리스');
insert into country values(country_seq.nextVal, '과테말라');
insert into country values(country_seq.nextVal, '괌');
insert into country values(country_seq.nextVal, '기니비사우');
insert into country values(country_seq.nextVal, '가이아나');
insert into country values(country_seq.nextVal, '국가불명');

-- ㄴ
insert into country values(country_seq.nextVal, '남극');
insert into country values(country_seq.nextVal, '나미비아');
insert into country values(country_seq.nextVal, '니제르');
insert into country values(country_seq.nextVal, '노퍽섬');
insert into country values(country_seq.nextVal, '나이지리아');
insert into country values(country_seq.nextVal, '니카라과');
insert into country values(country_seq.nextVal, '네덜란드');
insert into country values(country_seq.nextVal, '노르웨이');
insert into country values(country_seq.nextVal, '네팔');
insert into country values(country_seq.nextVal, '뉴질랜드');
insert into country values(country_seq.nextVal, '남아프리카공화국');


-- ㄷ
insert into country values(country_seq.nextVal, '독일');
insert into country values(country_seq.nextVal, '독일(구 동독)');
insert into country values(country_seq.nextVal, '독일(구 서독)');
insert into country values(country_seq.nextVal, '덴마크');
insert into country values(country_seq.nextVal, '도미니카연방');
insert into country values(country_seq.nextVal, '도미니카공화국');
insert into country values(country_seq.nextVal, '대한민국');
insert into country values(country_seq.nextVal, '대만');

-- ㄹ
insert into country values(country_seq.nextVal, '라오스');
insert into country values(country_seq.nextVal, '레바논');
insert into country values(country_seq.nextVal, '라이베리아');
insert into country values(country_seq.nextVal, '레스토');
insert into country values(country_seq.nextVal, '리투아니아');
insert into country values(country_seq.nextVal, '리투아니아(구 소련)');
insert into country values(country_seq.nextVal, '룩셈부르크');
insert into country values(country_seq.nextVal, '라트비아');
insert into country values(country_seq.nextVal, '라트비아(구 소련)');
insert into country values(country_seq.nextVal, '리비아');
insert into country values(country_seq.nextVal, '루마니아');
insert into country values(country_seq.nextVal, '러시아 연방');
insert into country values(country_seq.nextVal, '러시아(구 소련)');
insert into country values(country_seq.nextVal, '르완다');



-- ㅁ
insert into country values(country_seq.nextVal, '모로코');
insert into country values(country_seq.nextVal, '모나코');
insert into country values(country_seq.nextVal, '몰도바');
insert into country values(country_seq.nextVal, '마다가스카르');
insert into country values(country_seq.nextVal, '마셜제도');
insert into country values(country_seq.nextVal, '말리');
insert into country values(country_seq.nextVal, '미얀마');
insert into country values(country_seq.nextVal, '몽골');
insert into country values(country_seq.nextVal, '마카오');
insert into country values(country_seq.nextVal, '마르티니크');
insert into country values(country_seq.nextVal, '모리타니');
insert into country values(country_seq.nextVal, '몰타');
insert into country values(country_seq.nextVal, '몬테네그로');
insert into country values(country_seq.nextVal, '모리셔스');
insert into country values(country_seq.nextVal, '몰디브');
insert into country values(country_seq.nextVal, '말라위');
insert into country values(country_seq.nextVal, '멕시코');
insert into country values(country_seq.nextVal, '말레이시아');
insert into country values(country_seq.nextVal, '모잠비크');
insert into country values(country_seq.nextVal, '미국');
insert into country values(country_seq.nextVal, '메이요트');


-- ㅂ
insert into country values(country_seq.nextVal, '보스니아헤르체고비나');
insert into country values(country_seq.nextVal, '방글라데시');
insert into country values(country_seq.nextVal, '벨기에');
insert into country values(country_seq.nextVal, '부르키나파소');
insert into country values(country_seq.nextVal, '불가리아');
insert into country values(country_seq.nextVal, '바레인');
insert into country values(country_seq.nextVal, '베냉');
insert into country values(country_seq.nextVal, '버뮤다');
insert into country values(country_seq.nextVal, '브루나이');
insert into country values(country_seq.nextVal, '볼리비아');
insert into country values(country_seq.nextVal, '브라질');
insert into country values(country_seq.nextVal, '바하마');
insert into country values(country_seq.nextVal, '부탄');
insert into country values(country_seq.nextVal, '보츠와나');
insert into country values(country_seq.nextVal, '벨라루스');
insert into country values(country_seq.nextVal, '벨라루스(구 소련)');
insert into country values(country_seq.nextVal, '북한');
insert into country values(country_seq.nextVal, '북마케도니아');
insert into country values(country_seq.nextVal, '베네수엘라');
insert into country values(country_seq.nextVal, '버진아일랜드(미국령)');
insert into country values(country_seq.nextVal, '베트남');
insert into country values(country_seq.nextVal, '바누아투');


-- ㅅ
insert into country values(country_seq.nextVal, '스위스');
insert into country values(country_seq.nextVal, '사이프러스');
insert into country values(country_seq.nextVal, '서사하라');
insert into country values(country_seq.nextVal, '스페인');
insert into country values(country_seq.nextVal, '스리랑카');
insert into country values(country_seq.nextVal, '사우디아라비아');
insert into country values(country_seq.nextVal, '솔로몬제도');
insert into country values(country_seq.nextVal, '세르비아');
insert into country values(country_seq.nextVal, '수단');
insert into country values(country_seq.nextVal, '스웨덴');
insert into country values(country_seq.nextVal, '싱가포르');
insert into country values(country_seq.nextVal, '슬로베니아');
insert into country values(country_seq.nextVal, '슬로바키아');
insert into country values(country_seq.nextVal, '시에라리온');
insert into country values(country_seq.nextVal, '세네갈');
insert into country values(country_seq.nextVal, '소말리아');
insert into country values(country_seq.nextVal, '수리남');
insert into country values(country_seq.nextVal, '시리아');
insert into country values(country_seq.nextVal, '스와질란드');
insert into country values(country_seq.nextVal, '세인트빈센트그레나딘');
insert into country values(country_seq.nextVal, '사모아');


-- ㅇ
insert into country values(country_seq.nextVal, '안도라');
insert into country values(country_seq.nextVal, '아랍에미리트');
insert into country values(country_seq.nextVal, '아프가니스탄');
insert into country values(country_seq.nextVal, '알바니아');
insert into country values(country_seq.nextVal, '아르메니아');
insert into country values(country_seq.nextVal, '아르메니아(구 소련)');
insert into country values(country_seq.nextVal, '앤틸리스제도(네덜란드령)');
insert into country values(country_seq.nextVal, '앙골라');
insert into country values(country_seq.nextVal, '아르헨티나');
insert into country values(country_seq.nextVal, '오스트리아');
insert into country values(country_seq.nextVal, '오스트레일리아');
insert into country values(country_seq.nextVal, '아루바');
insert into country values(country_seq.nextVal, '아제르바이잔');
insert into country values(country_seq.nextVal, '알제리');
insert into country values(country_seq.nextVal, '에콰도르');
insert into country values(country_seq.nextVal, '에스토니아');
insert into country values(country_seq.nextVal, '에스토니아(구 소련)');
insert into country values(country_seq.nextVal, '이집트');
insert into country values(country_seq.nextVal, '에티오피아');
insert into country values(country_seq.nextVal, '영국');
insert into country values(country_seq.nextVal, '온두라스');
insert into country values(country_seq.nextVal, '아이티');
insert into country values(country_seq.nextVal, '인도네시아');
insert into country values(country_seq.nextVal, '아일랜드');
insert into country values(country_seq.nextVal, '이스라엘');
insert into country values(country_seq.nextVal, '인도');
insert into country values(country_seq.nextVal, '이라크');
insert into country values(country_seq.nextVal, '이란');
insert into country values(country_seq.nextVal, '아이슬란드');
insert into country values(country_seq.nextVal, '이탈리아');
insert into country values(country_seq.nextVal, '요르단');
insert into country values(country_seq.nextVal, '일본');
insert into country values(country_seq.nextVal, '오만');
insert into country values(country_seq.nextVal, '엘살바도르');
insert into country values(country_seq.nextVal, '우크라이나');
insert into country values(country_seq.nextVal, '우간다');
insert into country values(country_seq.nextVal, '우루과이');
insert into country values(country_seq.nextVal, '우즈베키스탄');
insert into country values(country_seq.nextVal, '예맨');
insert into country values(country_seq.nextVal, '유고슬라비아');



-- ㅈ
insert into country values(country_seq.nextVal, '중앙아프리카공화국');
insert into country values(country_seq.nextVal, '중국');
insert into country values(country_seq.nextVal, '조지아');
insert into country values(country_seq.nextVal, '자메이카');
insert into country values(country_seq.nextVal, '잠비아');
insert into country values(country_seq.nextVal, '짐바브웨');


-- ㅊ
insert into country values(country_seq.nextVal, '칠레');
insert into country values(country_seq.nextVal, '체코');
insert into country values(country_seq.nextVal, '체코(구 체코슬로바키아)');
insert into country values(country_seq.nextVal, '차드');


-- ㅋ
insert into country values(country_seq.nextVal, '캐나다');
insert into country values(country_seq.nextVal, '콩고민주공화국');
insert into country values(country_seq.nextVal, '콩고');
insert into country values(country_seq.nextVal, '코트디부아르');
insert into country values(country_seq.nextVal, '카메룬');
insert into country values(country_seq.nextVal, '콜롬비아');
insert into country values(country_seq.nextVal, '코스타리카');
insert into country values(country_seq.nextVal, '쿠바');
insert into country values(country_seq.nextVal, '카보베르데');
insert into country values(country_seq.nextVal, '키프로스');
insert into country values(country_seq.nextVal, '크로아티아');
insert into country values(country_seq.nextVal, '케냐');
insert into country values(country_seq.nextVal, '키르기스스탄');
insert into country values(country_seq.nextVal, '캄보디아');
insert into country values(country_seq.nextVal, '키리바시');
insert into country values(country_seq.nextVal, '쿠웨이트');
insert into country values(country_seq.nextVal, '카자흐스탄');
insert into country values(country_seq.nextVal, '카자흐스탄(구 소련)');
insert into country values(country_seq.nextVal, '카타르');

-- ㅌ
insert into country values(country_seq.nextVal, '토고');
insert into country values(country_seq.nextVal, '타이');
insert into country values(country_seq.nextVal, '타지키스탄');
insert into country values(country_seq.nextVal, '투르크매니스탄');
insert into country values(country_seq.nextVal, '튀니지');
insert into country values(country_seq.nextVal, '통가');
insert into country values(country_seq.nextVal, '튀르키예');
insert into country values(country_seq.nextVal, '트리나다드트바고');
insert into country values(country_seq.nextVal, '탄자니아');


-- ㅍ
insert into country values(country_seq.nextVal, '핀란드');
insert into country values(country_seq.nextVal, '피지');
insert into country values(country_seq.nextVal, '페로스제도');
insert into country values(country_seq.nextVal, '프랑스');
insert into country values(country_seq.nextVal, '파나마');
insert into country values(country_seq.nextVal, '페루');
insert into country values(country_seq.nextVal, '파푸아뉴기니');
insert into country values(country_seq.nextVal, '필리핀');
insert into country values(country_seq.nextVal, '파키스탄');
insert into country values(country_seq.nextVal, '폴란드');
insert into country values(country_seq.nextVal, '폴란드(구 오스트리아-헝가리제국)');
insert into country values(country_seq.nextVal, '핏케언제도');
insert into country values(country_seq.nextVal, '푸에르토리코');
insert into country values(country_seq.nextVal, '포르투갈');
insert into country values(country_seq.nextVal, '파라과이');
insert into country values(country_seq.nextVal, '팔레스타인');

-- ㅎ
insert into country values(country_seq.nextVal, '홍콩');
insert into country values(country_seq.nextVal, '헝가리');
insert into country values(country_seq.nextVal, '헝가리(구 오스트리아-헝가리제국');
-------------------dataMovieCountry---------------------
drop sequence movieCountry_seq;
create sequence movieCountry_seq;

-- 대한민국 : 31, 일본 : 142, 미국 : 66, 영국 : 130
--1-10
insert into movieCountry values(movieCountry_seq.nextVal, 1, 31); 
insert into movieCountry values(movieCountry_seq.nextVal, 2, 142);
insert into movieCountry values(movieCountry_seq.nextVal, 3, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 4, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 5, 142);
insert into movieCountry values(movieCountry_seq.nextVal, 6, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 7, 142);
insert into movieCountry values(movieCountry_seq.nextVal, 8, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 9, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 10, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 10, 130);


--11-20
insert into movieCountry values(movieCountry_seq.nextVal, 11, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 12, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 13, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 14, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 15, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 16, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 17, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 18, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 19, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 20, 66);

--21-30
insert into movieCountry values(movieCountry_seq.nextVal, 21, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 22, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 23, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 24, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 25, 130);
insert into movieCountry values(movieCountry_seq.nextVal, 25, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 25, 134);
insert into movieCountry values(movieCountry_seq.nextVal, 26, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 27, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 27, 99);
insert into movieCountry values(movieCountry_seq.nextVal, 28, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 29, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 30, 66);


--31-40
insert into movieCountry values(movieCountry_seq.nextVal, 31, 66); 
insert into movieCountry values(movieCountry_seq.nextVal, 32, 192);
insert into movieCountry values(movieCountry_seq.nextVal, 32, 138);
insert into movieCountry values(movieCountry_seq.nextVal, 33, 130);
insert into movieCountry values(movieCountry_seq.nextVal, 34, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 35, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 36, 31); 
insert into movieCountry values(movieCountry_seq.nextVal, 37, 142);
insert into movieCountry values(movieCountry_seq.nextVal, 38, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 39, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 40, 142);

--41-50
insert into movieCountry values(movieCountry_seq.nextVal, 41, 25); 
insert into movieCountry values(movieCountry_seq.nextVal, 42, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 43, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 44, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 45, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 46, 142);
insert into movieCountry values(movieCountry_seq.nextVal, 47, 31);
insert into movieCountry values(movieCountry_seq.nextVal, 48, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 49, 66);
insert into movieCountry values(movieCountry_seq.nextVal, 50, 31);
