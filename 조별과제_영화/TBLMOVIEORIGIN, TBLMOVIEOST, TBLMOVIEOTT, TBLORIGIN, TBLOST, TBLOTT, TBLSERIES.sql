-- TBLMOVIEORIGIN, TBLMOVIEOST, TBLMOVIEOTT, TBLORIGIN, TBLOST, TBLOTT, TBLSERIES

-- TBLMOVIEORIGIN
DROP SEQUENCE movieoriginseq;	
CREATE SEQUENCE movieoriginseq;
INSERT INTO HR.TBLMOVIEORIGIN (MOVIEORIGINSEQ,ORIGINSEQ,SEQ) VALUES
	 (movieoriginseq,'1','22'),
	 (movieoriginseq,'2','33'),
	 (movieoriginseq,'3','34'),
	 (movieoriginseq,'4','50');

	
-- TBLMOVIEOST
DROP SEQUENCE movieostseq;	
CREATE SEQUENCE movieostseq;
INSERT INTO HR.TBLMOVIEOST (MOVIEOSTSEQ,SEQ,OSTSEQ) VALUES
	 (movieostseq,'2','1'),
	 (movieostseq,'3','2'),
	 (movieostseq,'5','3'),
	 (movieostseq,'6','4'),
	 (movieostseq,'8','5'),
	 (movieostseq,'11','6'),
	 (movieostseq,'12','7'),
	 (movieostseq,'13','8'),
	 (movieostseq,'15','9'),
	 (movieostseq,'19','10');
INSERT INTO HR.TBLMOVIEOST (MOVIEOSTSEQ,SEQ,OSTSEQ) VALUES
	 (movieostseq,'21','11'),
	 (movieostseq,'22','12'),
	 (movieostseq,'23','13'),
	 (movieostseq,'24','14'),
	 (movieostseq,'25','15'),
	 (movieostseq,'25','16'),
	 (movieostseq,'26','17'),
	 (movieostseq,'27','18'),
	 (movieostseq,'29','19'),
	 (movieostseq,'30','20');
INSERT INTO HR.TBLMOVIEOST (MOVIEOSTSEQ,SEQ,OSTSEQ) VALUES
	 (movieostseq,'32','21'),
	 (movieostseq,'34','22'),
	 (movieostseq,'38','23'),
	 (movieostseq,'40','24'),
	 (movieostseq,'40','25'),
	 (movieostseq,'40','26'),
	 (movieostseq,'40','27'),
	 (movieostseq,'40','28'),
	 (movieostseq,'40','29'),
	 (movieostseq,'40','30');
INSERT INTO HR.TBLMOVIEOST (MOVIEOSTSEQ,SEQ,OSTSEQ) VALUES
	 (movieostseq,'41','31'),
	 (movieostseq,'42','32'),
	 (movieostseq,'43','33'),
	 (movieostseq,'44','34'),
	 (movieostseq,'47','35'),
	 (movieostseq,'48','36'),
	 (movieostseq,'50','37');


-- TBLMOVIEOTT
DROP SEQUENCE movieottseq;	
CREATE SEQUENCE movieottseq;	
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'3','2'),
	 (movieottseq,'3','3'),
	 (movieottseq,'1','5'),
	 (movieottseq,'4','5'),
	 (movieottseq,'3','5'),
	 (movieottseq,'1','7'),
	 (movieottseq,'2','7'),
	 (movieottseq,'3','7'),
	 (movieottseq,'4','7'),
	 (movieottseq,'3','8');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'1','9'),
	 (movieottseq,'3','9'),
	 (movieottseq,'3','10'),
	 (movieottseq,'1','12'),
	 (movieottseq,'4','15'),
	 (movieottseq,'2','16'),
	 (movieottseq,'3','16'),
	 (movieottseq,'1','17'),
	 (movieottseq,'2','17'),
	 (movieottseq,'3','17');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'4','17'),
	 (movieottseq,'1','18'),
	 (movieottseq,'2','18'),
	 (movieottseq,'3','18'),
	 (movieottseq,'4','18'),
	 (movieottseq,'4','19'),
	 (movieottseq,'1','19'),
	 (movieottseq,'3','19'),
	 (movieottseq,'1','20'),
	 (movieottseq,'1','21');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'2','21'),
	 (movieottseq,'3','21'),
	 (movieottseq,'4','21'),
	 (movieottseq,'3','22'),
	 (movieottseq,'1','23'),
	 (movieottseq,'2','23'),
	 (movieottseq,'3','23'),
	 (movieottseq,'4','23'),
	 (movieottseq,'1','25'),
	 (movieottseq,'3','25');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'3','26'),
	 (movieottseq,'3','29'),
	 (movieottseq,'2','30'),
	 (movieottseq,'3','30'),
	 (movieottseq,'1','31'),
	 (movieottseq,'2','31'),
	 (movieottseq,'3','31'),
	 (movieottseq,'4','31'),
	 (movieottseq,'1','32'),
	 (movieottseq,'3','32');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'1','33'),
	 (movieottseq,'2','33'),
	 (movieottseq,'3','33'),
	 (movieottseq,'4','33'),
	 (movieottseq,'3','34'),
	 (movieottseq,'1','35'),
	 (movieottseq,'2','35'),
	 (movieottseq,'3','35'),
	 (movieottseq,'4','35'),
	 (movieottseq,'1','36');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'2','36'),
	 (movieottseq,'3','36'),
	 (movieottseq,'4','36'),
	 (movieottseq,'4','37'),
	 (movieottseq,'1','38'),
	 (movieottseq,'2','38'),
	 (movieottseq,'3','38'),
	 (movieottseq,'4','38'),
	 (movieottseq,'1','40'),
	 (movieottseq,'2','40');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'3','40'),
	 (movieottseq,'4','40'),
	 (movieottseq,'1','41'),
	 (movieottseq,'1','42'),
	 (movieottseq,'3','42'),
	 (movieottseq,'2','43'),
	 (movieottseq,'4','43'),
	 (movieottseq,'3','44'),
	 (movieottseq,'1','46'),
	 (movieottseq,'2','46');
INSERT INTO HR.TBLMOVIEOTT (MOVIEOTTSEQ,OTTSEQ,SEQ) VALUES
	 (movieottseq,'3','46'),
	 (movieottseq,'2','47'),
	 (movieottseq,'3','47'),
	 (movieottseq,'4','47'),
	 (movieottseq,'3','48'),
	 (movieottseq,'1','49'),
	 (movieottseq,'3','50');

	
-- TBLORIGIN
CREATE SEQUENCE originseq;
DROP SEQUENCE originseq;
INSERT INTO HR.TBLORIGIN (ORIGINSEQ,ORIGINNAME,ORIGINFORM,ORIGINALAUTHOR) VALUES
	 (originseq,'신비한 동물들과 덤블도어의 비밀','도서','J K 롤링, 스티브 클로브스'),
	 (originseq,'경관의 피(블랙 앤 화이트 60)','도서','사사키 조'),
	 (originseq,'오늘 밤, 세계에서 이 사랑이 사라진다 해도','도서','이치조 미사키'),
	 (originseq,'뜨거운 피','도서','김언수');

	
-- TBLOST
CREATE SEQUENCE ostseq;
DROP SEQUENCE ostseq;
INSERT INTO HR.TBLOST (OSTSEQ,OSTNAME) VALUES
	 (ostseq,'탑건 : 매버릭 (Top Gun: Maverick) (영화 OST)'),
	 (ostseq,'Avatar: The Way of Water (Original Motion Picture Soundtrack)'),
	 (ostseq,'공조2: 인터내셔날'),
	 (ostseq,'Doctor Strange in the Multiverse of Madness (Original Motion Picture Soundtrack)'),
	 (ostseq,'올빼미 OST'),
	 (ostseq,'Thor: Love and Thunder (Original Motion Picture Soundtrack)'),
	 (ostseq,'Minions: The Rise Of Gru (Original Motion Picture Soundtrack)'),
	 (ostseq,'Black Panther: Wakanda Forever (Original Score)'),
	 (ostseq,'Spider-Man: No Way Home (Original Motion Picture Soundtrack) 영화 <스파이더맨: 노 웨이 홈> OST'),
	 (ostseq,'영웅');
INSERT INTO HR.TBLOST (OSTSEQ,OSTNAME) VALUES
	 (ostseq,'브로커'),
	 (ostseq,'Fantastic Beasts: The Secrets of Dumbledore (Original Motion Picture Soundtrack)'),
	 (ostseq,'인생은 아름다워 OST'),
	 (ostseq,'The Batman (Original Motion Picture Soundtrack)'),
	 (ostseq,'데시벨 OST'),
	 (ostseq,'항해 (데시벨 OST X 차은우)'),
	 (ostseq,'정직한 후보 2 OST'),
	 (ostseq,'Sing 2 (Original Motion Picture Soundtrack)'),
	 (ostseq,'Black Adam (Original Motion Picture Soundtrack)'),
	 (ostseq,'킹메이커 OST');
INSERT INTO HR.TBLOST (OSTSEQ,OSTNAME) VALUES
	 (ostseq,'Uncharted (Original Motion Picture Soundtrack)'),
	 (ostseq,'오늘 밤, 세계에서 이 사랑이 사라진다 해도 (今夜、世界からこの恋が消えても) Original Soundtrack'),
	 (ostseq,'이상한 나라의 수학자'),
	 (ostseq,'고백 (영화 ''동감'' X 츄 (이달의 소녀))'),
	 (ostseq,'습관 (Bye Bye) (영화 ''동감'' X meenoi (미노이))'),
	 (ostseq,'개똥벌레 (영화 ''동감'' X 이무진)'),
	 (ostseq,'너에게로 가는 길 (영화 ''동감'' X 엔플라잉 (N.Flying))'),
	 (ostseq,'늘 지금처럼 (영화 ''동감'' X VIVIZ (비비지))'),
	 (ostseq,'편지 (영화 ''동감'' X 윤하 (YOUNHA))'),
	 (ostseq,'너를 위해 (영화 ''동감'' X 황치열)');
INSERT INTO HR.TBLOST (OSTSEQ,OSTNAME) VALUES
	 (ostseq,'Morbius (Original Motion Picture Soundtrack)'),
	 (ostseq,'늑대사냥 OST'),
	 (ostseq,'뽀로로 극장판 드래곤캐슬 대모험'' OST'),
	 (ostseq,'특송 OST'),
	 (ostseq,'리멤버 OST'),
	 (ostseq,'The King''s Man (Original Motion Picture Soundtrack)'),
	 (ostseq,'뜨거운 피 OST');


-- TBLOTT
CREATE SEQUENCE ottseq;
DROP SEQUENCE ottseq;
INSERT INTO HR.TBLOTT (OTTSEQ,OTTNAME) VALUES
	 (ottseq,'넷플릭스'),
	 (ottseq,'티빙'),
	 (ottseq,'웨이브'),
	 (ottseq,'왓챠');

	
--	TBLSERIES
CREATE SEQUENCE seriesseq;
DROP SEQUENCE seriesseq;
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 (seriesseq,'범죄도시',TIMESTAMP'2017-10-03 00:00:00.0','강윤성','마동석, 윤계상, 조재윤, 최귀화, 임형준, 진선규, 홍기준, 허동원, 하준','1'),
	 (seriesseq,'범죄도시3',TIMESTAMP'2023-05-31 00:00:00.0','이상용','마동석, 이준혁, 아오키 무네타카, 이범수, 김민재, 이지훈, 김도건, 고규필, 전석호','1'),
	 (seriesseq,'범죄도시4',NULL,'허명행','마동석, 김무열, 이동휘, 박지환, 이범수, 김민재, 이지훈, 이주빈, 김도건','1'),
	 ('4','탑건',TIMESTAMP'1987-12-19 00:00:00.0','토니 스콧','톰 크루즈, 켈리 맥길리스, 발 킬머, 안소니 에드워즈, 톰 스커릿, 마이클 아이언사이드, 존 스톡웰, 배리 터브, 릭 로소비치','2'),
	 ('5','아바타',TIMESTAMP'2009-12-17 00:00:00.0','제임스 카메론','	샘 워싱턴, 조 샐다나, 시고니 위버, 스티븐 랭, 조엘 무어, 미셸 로드리게스, 지오바니 리비시, C.C.H. 파운더, 웨스 스투디','3'),
	 ('6','아바타 3',NULL,'제임스 카메론','	제임스 카메론, 존 랜도, 제임스 카메론','3'),
	 ('7','명량',TIMESTAMP'2014-07-30 00:00:00.0','김한민','	최민식, 류승룡, 조진웅, 김명곤, 진구, 이정현, 권율, 오타니 료헤이, 이승준','4'),
	 ('8','노량: 죽음의 바다',NULL,'김한민','김윤석, 백윤식, 정재영, 허준호, 김주경, 이대희','4'),
	 ('9','공조',TIMESTAMP'2017-01-18 00:00:00.0','김성훈','현빈, 유해진, 김주혁, 장영남, 이동휘, 윤아, 김재철, 공정환, 이해영','5'),
	 ('10','닥터 스트레인지',TIMESTAMP'2016-10-26 00:00:00.0','스콧 데릭슨','	베네딕트 컴버배치, 레이첼 맥아담스, 틸다 스윈튼, 매즈 미켈슨, 치웨텔 에지오포, 베네딕트 웡, 마이클 스털버그, 벤자민 브랫, 스캇 애드킨스','6');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('11','쥬라기 공원',TIMESTAMP'1993-07-17 00:00:00.0','	스티븐 스필버그','	샘 닐, 로라 던, 제프 골드블럼, 사무엘 L. 잭슨, 조셉 마젤로, 리차드 애튼버러, 밥 펙, 마틴 페레로, 아리아나 리차즈','9'),
	 ('12','쥬라기 공원 2 : 잃어버린 세계',TIMESTAMP'1997-06-14 00:00:00.0','스티븐 스필버그','	제프 골드블럼, 줄리안 무어, 피트 포슬스웨이트, 리차드 애튼버러, 빈스 본, 알리스 하워드, 바네사 리 체스터, 피터 스토메어, 하비 제이슨','9'),
	 ('13','쥬라기 공원 3',TIMESTAMP'2001-07-20 00:00:00.0','	조 존스톤','	샘 닐, 윌리엄 H. 머시, 티아 레오니, 알렉산드로 니볼라, 트레버 모간, 마이클 제터, 존 딜, 브루스 A. 영, 로라 던','9'),
	 ('14','쥬라기 월드',TIMESTAMP'2015-06-11 00:00:00.0','콜린 트레보로우','크리스 프랫, 브라이스 달라스 하워드, 타이 심킨스, 닉 로빈슨, 비디 웡, 빈센트 도노프리오, 제이크 존슨, 오마르 사이, 주디 그리어','9'),
	 ('15','쥬라기 월드: 폴른 킹덤',TIMESTAMP'2018-06-06 00:00:00.0','후안 안토니오 바요나','크리스 프랫, 브라이스 달라스 하워드, 라프 스폴, 저스티스 스미스, 다니엘라 피네다, 제임스 크롬웰, 토비 존스, 테드 레빈, 제프 골드블럼','9'),
	 ('16','마녀',TIMESTAMP'2018-06-27 00:00:00.0','박훈정','김다미, 조민수, 박희순, 최우식, 고민시, 최정우, 오미희, 김병옥, 정다은','10'),
	 ('17','토르: 천둥의 신',TIMESTAMP'2011-04-28 00:00:00.0','	케네스 브래너','나탈리 포트만, 안소니 홉킨스, 크리스 헴스워스, 톰 히들스턴, 이드리스 엘바, 캣 데닝스, 르네 루소, 아사노 타다노부, 스텔란 스카스가드','11'),
	 ('18','토르 : 다크 월드',TIMESTAMP'2013-10-30 00:00:00.0','알랜 테일러','	나탈리 포트만, 톰 히들스턴, 안소니 홉킨스, 크리스토퍼 에클리스톤, 크리스 헴스워스, 제이미 알렉산더, 재커리 리바이, 레이 스티븐슨, 아사노 타다노부','11'),
	 ('19','토르 : 라그나로크',TIMESTAMP'2017-10-25 00:00:00.0','타이카 와이티티','톰 히들스턴, 케이트 블란쳇, 크리스 헴스워스, 이드리스 엘바, 제프 골드블럼, 마크 러팔로, 테사 톰슨, 칼 어번, 안소니 홉킨스','11'),
	 ('20','미니언즈',TIMESTAMP'2015-07-29 00:00:00.0','	피에르 코팽, 카일 발다','산드라 블록, 존 햄, 마이클 키튼, 피에르 코팽, 남도형, 박신희, 김혜진, 엄상현','12');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('21','블랙 팬서',TIMESTAMP'2018-02-14 00:00:00.0','	라이언 쿠글러','채드윅 보스만, 마이클 B. 조던, 루피타 뇽오, 다나이 구리라, 마틴 프리먼, 다니엘 칼루유야, 레티티아 라이트, 윈스턴 듀크, 스털링 K. 브라운','13'),
	 ('22','스파이더맨 : 홈커밍',TIMESTAMP'2017-07-05 00:00:00.0','	존 왓츠','	톰 홀랜드, 로버트 다우니 주니어, 마이클 키튼, 마리사 토메이, 존 파브로, 기네스 팰트로, 젠데이아 콜먼, 도널드 글로버, 제이콥 배털런','15'),
	 ('23','스파이더맨: 파 프롬 홈',TIMESTAMP'2019-07-02 00:00:00.0','존 왓츠','	톰 홀랜드, 사무엘 L. 잭슨, 제이크 질렌할, 마리사 토메이, 존 파브로, 젠데이아 콜먼, 제이콥 배털런, 토니 레볼로리, 앵거리 라이스','15'),
	 ('24','해적 : 바다로 간 산적',TIMESTAMP'2014-08-06 00:00:00.0','이석훈','김남길, 손예진, 유해진, 김원해, 박철민, 조달환, 신정근, 설리, 이이경','20'),
	 ('25','신비한 동물사전',TIMESTAMP'2016-11-16 00:00:00.0','	데이빗 예이츠','	에디 레드메인, 캐서린 워터스톤, 콜린 파렐, 댄 포글러, 앨리슨 수돌, 에즈라 밀러, 사만다 모튼, 존 보이트, 카르멘 에조고','22'),
	 ('26','신비한 동물들과 그린델왈드의 범죄',TIMESTAMP'2018-11-14 00:00:00.0','데이빗 예이츠','에디 레드메인, 캐서린 워터스톤, 앨리슨 수돌, 에즈라 밀러, 주드 로, 조니 뎁, 칼럼 터너, 조 크라비츠, 수현','22'),
	 ('27','정직한 후보',TIMESTAMP'2020-02-12 00:00:00.0','장유정','	라미란, 김무열, 나문희, 윤경호, 송영창, 손종학, 장동주, 조수향, 안세호','26'),
	 ('28','씽',TIMESTAMP'2016-12-21 00:00:00.0','가스 제닝스','매튜 맥커너히, 리즈 위더스푼, 스칼렛 요한슨, 태런 에저튼, 토리 켈리, 세스 맥팔레인, 존 C. 라일리, 닉 크롤, 가스 제닝스','27'),
	 ('29','짱구는 못말려 : 액션가면 대 하이구레 왕',NULL,'혼고 미츠루, 하라 케이이치','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에, 타카다 유미','28'),
	 ('30','짱구는 못말려 : 부리부리 왕국의 보물',NULL,'	혼고 미츠루, 하라 케이이치','야지마 아키코, 나라하시 미키, 후지와라 케이지, 타카다 유미, 마시바 마리, 하야시 타마오, 사토 치에, 스즈키 레이코','28');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('31','짱구는 못말려 극장판 : 흑부리 마왕의 야망',NULL,'혼고 미츠루, 하라 케이이치','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 마시바 마리, 사쿠마 레이, 미즈타니 유코, 겐다 텟쇼, 토타니 코지','28'),
	 ('32','짱구는 못말려 : 핸더랜드의 대모험',NULL,'혼고 미츠루, 하라 케이이치','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 타나카 히데유키, 오오츠카 호츄, 후루카와 토시오, 츠지 신파치, 후치자키 유리코','28'),
	 ('33','짱구는 못말려 극장판 : 암흑 마왕 대추적',NULL,'	하라 케이이치, 미즈시마 츠토무','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 고리 다이스케, 시오자와 카네토, 오오타키 신야','28'),
	 ('34','짱구는 못말려 극장판 : 돼지발굽 대작전',NULL,'하라 케이이치, 미즈시마 츠토무','야지마 아키코, 미츠이시 코토노, 겐다 텟쇼, 이시다 타로, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 시오자와 카네토','28'),
	 ('35','짱구는 못말려 : 두근두근 대결전',NULL,'미즈시마 츠토무, 하라 케이이치','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 오가와 신지, 히키타 유미, 타무라 유카리, 오리카사 아이','28'),
	 ('36','짱구는 못말려 극장판 : 폭풍을 부르는 정글',NULL,'하라 케이이치, 미즈시마 츠토무','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 겐다 텟쇼, 하야시 타마오, 마시바 마리, 이치류사이 테이유','28'),
	 ('37','짱구는 못말려 극장판 : 어른제국의 역습',NULL,'	하라 케이이치, 미즈시마 츠토무','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에','28'),
	 ('38','짱구는 못말려 극장판 : 태풍을 부르는 장엄한 전설의 전투',NULL,'하라 케이이치, 미즈시마 츠토무','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에','28'),
	 ('39','짱구는 못말려 극장판 : 태풍을 부르는 영광의 불고기 로드',NULL,'	미즈시마 츠토무','	야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에, 타카다 유미','28'),
	 ('40','짱구는 못말려 극장판 : 폭풍을 부르는 석양의 떡잎마을 방범대',NULL,'	미즈시마 츠토무','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 하야시 타마오, 이치류사이 테이유, 사토 치에, 사이토 아야카, 마시바 마리','28');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('41','짱구는 못말려 극장판 : 부리부리 3분 대작전',NULL,'무토 유지','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 하야시 타마오, 이치류사이 테이유, 사토 치에, 나야 로쿠로, 마시바 마리','28'),
	 ('42','짱구는 못말려 극장판 : 전설을 부르는 춤을 춰라, 아미고!',NULL,'무토 유지','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에, 와타나베 아케노','28'),
	 ('43','짱구는 못말려 극장판 : 태풍을 부르는 노래하는 엉덩이 폭탄',TIMESTAMP'2009-09-24 00:00:00.0','	무토 유지','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유, 사토 치에, 토다 케이코','28'),
	 ('44','짱구는 못말려 극장판 : 엄청난 태풍을 부르는 금창의 용사',NULL,'	혼고 미츠루','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 코지마 요시오, 우스이 요시토, 혼고 미츠루, 우메다 토시유키, 와카쿠사 케이','28'),
	 ('45','짱구는 못말려 극장판 : 포효하라! 떡잎 야생왕국',NULL,'시기노 아키라','야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 하야시 타마오, 이치류사이 테이유, 사토 치에, 고토 유코, 마시바 마리','28'),
	 ('46','짱구는 못말려 극장판 : 초시공! 태풍을 부르는 나의 신부',TIMESTAMP'2011-05-05 00:00:00.0','시기노 아키라','박영남, 강희선, 오세홍, 야지마 아키코, 나라하시 미키, 후지와라 케이지, 김성연, 온영삼, 현경수','28'),
	 ('47','짱구는 못말려 극장판 : 태풍을 부르는 황금스파이 대작전',TIMESTAMP'2012-04-26 00:00:00.0','	마스이 소이치, 타카하시 와타루',NULL,'28'),
	 ('48','짱구는 못말려 극장판 : 태풍을 부르는 나와 우주의 프린세스',TIMESTAMP'2013-04-25 00:00:00.0','	마스이 소이치','박영남, 여민정, 야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 마시바 마리, 하야시 타마오, 이치류사이 테이유','28'),
	 ('49','짱구는 못말려 극장판：엄청 맛있어! B급 음식 서바이벌!',TIMESTAMP'2014-04-03 00:00:00.0','하시모토 마사카즈','	박영남, 오세홍, 강희선, 여민정, 장경희, 정혜옥, 현경수, 이광수, 박고운','28'),
	 ('50','짱구는 못말려 극장판 : 정면승부! 로봇아빠의 역습',TIMESTAMP'2015-04-23 00:00:00.0','타카하시 와타루','	박영남, 김환진, 강희선, 여민정, 장경희, 온영삼, 이경태, 야지마 아키코, 후지와라 케이지','28');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('51','짱구는 못말려 극장판 : 나의 이사 이야기 선인장 대습격',TIMESTAMP'2016-01-07 00:00:00.0','하시모토 마사카즈','박영남, 김환진, 강희선, 여민정, 야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미, 장경희','28'),
	 ('52','짱구는 못말려 극장판 : 폭풍수면! 꿈꾸는 세계 대돌격',TIMESTAMP'2017-01-25 00:00:00.0','	타카하시 와타루','	박영남, 김환진, 강희선, 여민정, 장경희, 야지마 아키코, 나라하시 미키, 후지와라 케이지, 코오로기 사토미','28'),
	 ('53','극장판 짱구는 못말려 : 습격!! 외계인 덩덩이',TIMESTAMP'2017-07-20 00:00:00.0','하시모토 마사카즈','	박영남, 양정화, 김환진, 강희선, 여민정, 정유미, 정혜옥, 이장원, 야지마 아키코','28'),
	 ('54','극장판 짱구는 못말려: 아뵤! 쿵후보이즈 ~라면 대란~',TIMESTAMP'2018-12-19 00:00:00.0','타카하시 와타루','박영남, 강희선, 김환진, 여민정, 정유미, 정혜옥, 이용신, 한채언, 윤여진','28'),
	 ('55','극장판 짱구는 못말려: 신혼여행 허리케인~ 사라진 아빠!',TIMESTAMP'2020-08-20 00:00:00.0','하시모토 마사카즈','박영남, 김환진, 강희선, 여민정, 코바야시 유미코, 나라하시 미키, 모리카와 토시유키, 코오로기 사토미, 오오츠카 호츄','28'),
	 ('56','극장판 짱구는 못말려: 격돌! 낙서왕국과 얼추 네 명의 용사들',TIMESTAMP'2021-09-15 00:00:00.0','쿄고쿠 타카히코','박영남, 김환진, 강희선, 여민정, 정유미, 강새봄, 정혜옥, 시영준, 코바야시 유미코','28'),
	 ('57','극장판 짱구는 못말려: 동물소환 닌자 배꼽수비대',TIMESTAMP'2023-05-04 00:00:00.0','하시모토 마사카즈','	코바야시 유미코, 나라하시 미키, 모리카와 토시유키, 코오로기 사토미, 타카가키 아야히, 하나에 나츠키, 우라야마 진, 유우키 아오이, 아마미야 소라','28'),
	 ('58','신차원! 짱구는 못말려 THE MOVIE 초능력 대결전 ~날아라 수제 김밥~',NULL,'오오네 히토시','코바야시 유미코, 나라하시 미키, 모리카와 토시유키, 코오로기 사토미, 키토 아카리, 마츠자카 토리, 마시바 마리, 우스이 요시토, 오오네 히토시','28'),
	 ('59','샤잠!',TIMESTAMP'2019-04-03 00:00:00.0','	데이비드 F. 샌드버그','재커리 리바이, 애셔 앤젤, 잭 딜런 그레이저, 마크 스트롱, 디몬 하운수, 미쉘 보스, 마르타 밀란스, 메건 굿, 그레이스 펄튼','29'),
	 ('60','극장판 포켓몬스터 : 뮤츠의 역습',TIMESTAMP'2000-12-23 00:00:00.0','유야마 쿠니히코, 마이클 헤이그니','	마츠모토 리카, 오오타니 이쿠에, 이치무라 마사치카, 야마데라 코이치, 이이즈카 마유미, 코오로기 사토미, 하야시바라 메구미, 미키 신이치로','37');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('61','포켓몬스터 2 : 루기아의 탄생',TIMESTAMP'2001-08-11 00:00:00.0','유야마 쿠니히코, 마이클 헤이그니','마츠모토 리카, 오오타니 이쿠에, 이이즈카 마유미, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 히라마츠 아키코, 야마데라 코이치','37'),
	 ('62','포켓몬스터 2 : 포켓몬 2000',NULL,'마이클 헤이그니','	야마데라 코이치, 레이첼 릴리스, 카가 타케시, 이시즈카 운쇼, 오오타니 이쿠에, 이이즈카 마유미, 이누야마 이누코, 미키 신이치로, 베로니카 테일러','37'),
	 ('63','포켓몬스터 3 : 결정탑의 제왕 엔테이',NULL,'유야마 쿠니히코, 마이클 헤이그니','마츠모토 리카, 오오타니 이쿠에, 이이즈카 마유미, 코오로기 사토미, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 야지마 아키코','37'),
	 ('64','포켓몬스터 셀레비 시간을 초월한 만남',NULL,'유야마 쿠니히코, 짐 말론','	마츠모토 리카, 오오타니 이쿠에, 이이즈카 마유미, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 로저 카이, 베로니카 테일러','37'),
	 ('65','극장판 포켓몬스터 : 물의 도시 수호신, 라티아스와 라티모',NULL,'유야마 쿠니히코','마츠모토 리카, 오오타니 이쿠에, 이이즈카 마유미, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 칸다 우노, 타지리 사토시, 소노다 히데키','37'),
	 ('66','극장판 포켓몬스터 AG : 아름다운 소원의 별 지라치',TIMESTAMP'2014-08-13 00:00:00.0','	유야마 쿠니히코','	마츠모토 리카, 오오타니 이쿠에, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 야마데라 코이치, 파파야 스즈키, 스즈키 토미코, 마키세 리호','37'),
	 ('67','포켓몬스터 어드밴스제네레이션 열공의 방문자 테오키스',NULL,'	유야마 쿠니히코','	마츠모토 리카, 오오타니 이쿠에, 이시즈카 운쇼, 우에다 유지, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 야마데라 코이치, 존 카비라','37'),
	 ('68','포켓몬스터 어드밴스제네레이션 뮤와 파동의 용사 루카리오',NULL,'유야마 쿠니히코','	마츠모토 리카, 오오타니 이쿠에, 우에다 유지, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 이시즈카 운쇼, 야마데라 코이치, 오카에 쿠미코','37'),
	 ('69','극장판 포켓몬스터 AG : 포켓몬레인저와 바다의 왕자 마나피',TIMESTAMP'2015-07-22 00:00:00.0','유야마 쿠니히코','엄상현, 이선호, 지미애, 최석필, 마츠모토 리카, 오오타니 이쿠에, 우에다 유지, 하야시바라 메구미, 미키 신이치로','37'),
	 ('70','극장판 포켓몬스터DP - 디아루가 VS 펄기아 VS 다크라이',TIMESTAMP'2018-06-06 00:00:00.0','	유야마 쿠니히코','임채헌, 이선호, 정미숙, 변영희, 마츠모토 리카, 오오타니 이쿠에, 토요구치 메구미, 우에다 유지, 김영선','37');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('71','극장판 포켓몬스터DP : 아르세우스 초극의 시공으로',TIMESTAMP'2009-12-24 00:00:00.0','유야마 쿠니히코','정재헌, 유상우, 이영란, 오인성, 이선호, 정미숙, 송준석, 문남숙, 양석정','37'),
	 ('72','극장판 포켓몬스터DP : 환영의 패왕 조로아크',TIMESTAMP'2010-12-23 00:00:00.0','	유야마 쿠니히코','이선호, 김선혜, 유동균, 이영란, 문남숙, 마츠모토 리카, 오오타니 이쿠에, 우에다 유지, 토요구치 메구미','37'),
	 ('73','극장판 포켓몬스터 베스트위시 : 비크티니와 흑의 영웅 제크로무',TIMESTAMP'2011-12-22 00:00:00.0','유야마 쿠니히코','이선호, 장경희, 남도형, 신용우, 안지환, 김승준, 우정신, 오인성, 마츠모토 리카','37'),
	 ('74','극장판 포켓몬스터 베스트위시 : 비크티니와 백의 영웅 레시라무',TIMESTAMP'2011-12-22 00:00:00.0','	유야마 쿠니히코','이선호, 장경희, 남도형, 신용우, 안지환, 우정신, 오인성, 마츠모토 리카, 오오타니 이쿠에','37'),
	 ('75','극장판 포켓몬스터 베스트위시 : 큐레무 vs 성검사 케르디오',TIMESTAMP'2012-12-19 00:00:00.0','	유야마 쿠니히코','	이선호, 장경희, 마츠모토 리카, 오오타니 이쿠에, 남도형, 이광수, 소연, 김영선, 신용우','37'),
	 ('76','극장판 포켓몬스터 베스트위시 『신의 속도 게노세크트, 뮤츠의 각성』',TIMESTAMP'2014-01-09 00:00:00.0','	유야마 쿠니히코','마츠모토 리카, 오오타니 이쿠에, 미야노 마모루, 유우키 아오이, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 이시즈카 운쇼, 다카시마 레이코','37'),
	 ('77','극장판 포켓몬스터 XY : 파괴의 포켓몬과 디안시',TIMESTAMP'2015-01-14 00:00:00.0','	유야마 쿠니히코','마츠모토 리카, 오오타니 이쿠에, 카지 유키, 이세 마리야, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 마츠모토 마리카, 미타 요시코','37'),
	 ('78','포켓몬 더 무비 XY 후파: 광륜의 초마신',TIMESTAMP'2015-12-23 00:00:00.0','	유야마 쿠니히코','이선호, 여민정, 이광수, 마츠모토 리카, 오오타니 이쿠에, 장민혁, 문남숙, 양정화, 김영선','37'),
	 ('79','포켓몬 더 무비 XY&Z <볼케니온: 기계왕국의 비밀>',TIMESTAMP'2016-12-22 00:00:00.0','유야마 쿠니히코','마츠모토 리카, 오오타니 이쿠에, 마키구치 마유키, 카지 유키, 이세 마리야, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 이치카와 소메고로','37'),
	 ('80','극장판 포켓몬스터 너로 정했다!',TIMESTAMP'2017-12-21 00:00:00.0','유야마 쿠니히코','	마츠모토 리카, 오오타니 이쿠에, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 혼고 카나타, 후루타 아라타, 나카가와 쇼코, 야마데라 코이치','37');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('81','극장판 포켓몬스터 모두의 이야기',TIMESTAMP'2018-12-19 00:00:00.0','야지마 테츠오','마츠모토 리카, 오오타니 이쿠에, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 아시다 마나, 카와에이 리나, 하마다 가쿠, 오오쿠라 코지','37'),
	 ('82','극장판 포켓몬스터 뮤츠의 역습 EVOLUTION',TIMESTAMP'2020-09-30 00:00:00.0','	유야마 쿠니히코, 사카키바라 모토노리','이선호, 오오타니 이쿠에, 홍시호, 김영선, 우정신, 오인성, 황창영, 여민정','37'),
	 ('83','극장판 포켓몬스터: 정글의 아이, 코코',TIMESTAMP'2021-09-15 00:00:00.0','야지마 테츠오','	성완경, 이선호, 강은애, 마츠모토 리카, 오오타니 이쿠에, 하야시바라 메구미, 미키 신이치로, 이누야마 이누코, 카미시라이시 모카','37'),
	 ('84','명탐정 코난 : 시한 장치의 마천루',NULL,'	코다마 켄지, 사토 마사토','	타카야마 미나미, 야마구치 캇페이, 야마자키 와카나, 카미야 아키라, 오가타 켄이치, 이와이 유키코, 오오타니 이쿠에, 차후린','39'),
	 ('85','명탐정 코난 : 14번째 표적',NULL,'코다마 켄지','	타카야마 미나미, 야마자키 와카나, 야마구치 캇페이, 카미야 아키라, 차후린, 시오자와 카네토, 오가타 켄이치, 스즈오키 히로타카, 타카기 와타루','39'),
	 ('86','명탐정 코난 : 세기말의 마술사',NULL,'코다마 켄지','	타카야마 미나미, 야마자키 와카나, 카미야 아키라, 차후린, 오가타 켄이치, 하야시바라 메구미, 야마구치 캇페이, 이와이 유키코, 타카기 와타루','39'),
	 ('87','명탐정 코난 : 눈동자 속의 암살자',NULL,'	사토 마사토, 코다마 켄지','타카야마 미나미, 야마자키 와카나, 카미야 아키라, 하야시바라 메구미, 오가타 켄이치, 차후린, 야마구치 캇페이, 스와 미치히코','39'),
	 ('88','명탐정 코난 : 천국으로의 카운트다운',NULL,'코다마 켄지','	타카야마 미나미, 야마자키 와카나, 카미야 아키라, 이와이 유키코, 타카기 와타루, 오오타니 이쿠에, 하야시바라 메구미, 오가타 켄이치, 차후린','39'),
	 ('89','명탐정 코난 : 베이커가의 망령',TIMESTAMP'2008-05-01 00:00:00.0','코다마 켄지, 하라다 나나','	김선혜, 이현진, 타카야마 미나미, 야마자키 와카나, 이정구, 우정신, 황원, 한인숙','39'),
	 ('90','명탐정 코난 : 미궁의 십자로',NULL,'	코다마 켄지','타카야마 미나미, 야마자키 와카나, 카미야 아키라, 호리카와 료, 미야무라 유코, 오가타 켄이치, 하야시바라 메구미, 야마구치 캇페이, 스즈키 히로코','39');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('91','명탐정 코난 : 은빛 날개의 마술사',TIMESTAMP'2013-01-24 00:00:00.0','야마모토 야스이치로','김선혜, 강수진, 이현진, 이정구, 타카야마 미나미, 야마자키 와카나, 카미야 아키라, 야마구치 캇페이, 차후린','39'),
	 ('92','명탐정 코난 : 수평선상의 음모',TIMESTAMP'2013-08-07 00:00:00.0','야마모토 야스이치로','김선혜, 강수진, 이현진, 이정구, 황원, 우정신, 타카야마 미나미, 야마자키 와카나, 카미야 아키라','39'),
	 ('93','극장판 명탐정 코난 : 탐정들의 진혼가',TIMESTAMP'2014-02-13 00:00:00.0','야마모토 야스이치로','김선혜, 강수진, 이정구, 이현진, 우정신, 황원, 최재호, 정재헌, 신용우','39'),
	 ('94','명탐정 코난 : 감벽의 관',TIMESTAMP'2018-02-14 00:00:00.0','야마모토 야스이치로','김선혜, 강수진, 이현진, 이용신, 이정구, 타카야마 미나미, 야마구치 캇페이, 야마자키 와카나, 카미야 아키라','39'),
	 ('95','명탐정 코난 : 전율의 악보',TIMESTAMP'2019-02-14 00:00:00.0','야마모토 야스이치로','타카야마 미나미, 야마구치 캇페이, 야마자키 와카나, 카미야 아키라, 마츠이 나오코, 이와이 유키코, 오오타니 이쿠에, 타카기 와타루, 하야시바라 메구미','39'),
	 ('96','명탐정 코난 : 칠흑의 추적자',TIMESTAMP'2009-07-29 00:00:00.0','야마모토 야스이치로','김선혜, 강수진, 이현진, 타카야마 미나미, 야마자키 와카나, 카미야 아키라, 차후린, 오가타 켄이치, 이와이 유키코','39'),
	 ('97','명탐정 코난 : 천공의 난파선',TIMESTAMP'2010-07-21 00:00:00.0','야마모토 야스이치로','김선혜, 이현진, 타카야마 미나미, 야마자키 와카나, 강수진, 신용우, 이정구, 황원, 우정신','39'),
	 ('98','명탐정 코난 : 침묵의 15분',TIMESTAMP'2011-08-03 00:00:00.0','야마모토 야스이치로, 시즈노 코분','김선혜, 이현진, 타카야마 미나미, 야마자키 와카나, 우정신, 강수진, 코야마 리키야, 차후린','39'),
	 ('99','명탐정 코난 : 11번째 스트라이커',TIMESTAMP'2012-07-19 00:00:00.0','야마모토 야스이치로, 시즈노 코분','김선혜, 강수진, 이정구, 이현진, 타카야마 미나미, 야마자키 와카나, 장민혁, 황원','39'),
	 ('100','명탐정 코난 : 절해의 탐정 (프라이빗 아이)',NULL,'시즈노 코분','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 시바사키 코우, 차후린, 오가타 켄이치, 이와이 유키코, 타카기 와타루, 오오타니 이쿠에','39');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('101','명탐정 코난 : 이차원의 저격수',TIMESTAMP'2014-08-06 00:00:00.0','시즈노 코분','김선혜, 이정구, 이현진, 유해무, 우정신, 한인숙, 정선혜, 여민정, 이용신','39'),
	 ('102','명탐정 코난 : 화염의 해바라기',TIMESTAMP'2015-08-05 00:00:00.0','시즈노 코분','김선혜, 강수진, 이현진, 이정구, 이용신, 이종구, 황원, 여민정, 한인숙','39'),
	 ('103','명탐정 코난 : 순흑의 악몽',TIMESTAMP'2016-08-03 00:00:00.0','시즈노 코분','김선혜, 강수진, 이정구, 이현진, 황원, 한인숙, 정선혜, 여민정, 우정신','39'),
	 ('104','명탐정 코난: 진홍의 연가',TIMESTAMP'2017-08-02 00:00:00.0','시즈노 코분','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 호리카와 료, 미야무라 유코, 오가타 켄이치, 이와이 유키코, 타카기 와타루, 오오타니 이쿠에','39'),
	 ('105','명탐정 코난 : 제로의 집행인',TIMESTAMP'2018-08-08 00:00:00.0','타치카와 유즈루','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 후루야 토루, 우에토 아야, 하카타 다이키치, 차후린, 오가타 켄이치, 이와이 유키코','39'),
	 ('106','명탐정 코난: 감청의 권',TIMESTAMP'2019-07-24 00:00:00.0','나가오카 치카','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 야마구치 캇페이, 야마자키 이쿠사부로, 카와키타 마유코, 오가타 켄이치, 이와이 유키코, 타카기 와타루','39'),
	 ('107','명탐정 코난: 비색의 탄환',TIMESTAMP'2021-04-16 00:00:00.0','나가오카 치카','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 이케다 슈이치, 하마베 미나미, 오가타 켄이치, 이와이 유키코, 타카기 와타루, 오오타니 이쿠에','39'),
	 ('108','명탐정 코난: 흑철의 어영',TIMESTAMP'2023-07-20 00:00:00.0','타치카와 유즈루','타카야마 미나미, 야마자키 와카나, 코야마 리키야, 하야시바라 메구미, 호리 유키토시, 타치키 후미히코, 코야마 마미, 후루야 토루, 이케다 슈이치','39'),
	 ('109','뽀로로 극장판 슈퍼썰매 대모험',TIMESTAMP'2013-01-23 00:00:00.0','박영균','이선, 이미자, 김환진, 함수정, 홍소영, 조현정, 정미숙, 엄상현, 유동균','43'),
	 ('110','뽀로로 극장판 눈요정 마을 대모험',TIMESTAMP'2014-12-11 00:00:00.0','김현호','이선, 함수정, 홍소영, 이미자, 정미숙, 김환진, 김서영, 문남숙, 온영삼','43');
INSERT INTO HR.TBLSERIES (SERIESSEQ,SERIESENAME,SERIESRELEASE,DIRECTOR,ACTOR,SEQ) VALUES
	 ('111','뽀로로 극장판 컴퓨터 왕국 대모험',TIMESTAMP'2015-12-10 00:00:00.0','박영균','이선, 이미자, 함수정, 홍소영, 정미숙, 김서영, 김환진, 엄상현, 홍범기','43'),
	 ('112','뽀로로 극장판 공룡섬 대모험',TIMESTAMP'2017-12-07 00:00:00.0','김현호, 윤제완','이선, 이미자, 함수정, 홍소영, 정미숙, 김서영, 김환진, 김율','43'),
	 ('113','뽀로로 극장판 보물섬 대모험',TIMESTAMP'2019-04-25 00:00:00.0','김현호, 윤창섭','이선, 이미자, 김현지, 홍소영, 정미숙, 김서영, 김환진, 남도형','43'),
	 ('114','극장판 뽀로로와 친구들: 바이러스를 없애줘!',TIMESTAMP'2022-12-01 00:00:00.0','박영균',NULL,'43'),
	 ('115','킹스맨: 시크릿 에이전트',TIMESTAMP'2015-02-11 00:00:00.0','매튜 본','콜린 퍼스, 태런 에저튼, 사무엘 L. 잭슨, 마이클 케인, 소피아 부텔라, 소피 쿡슨, 마크 스트롱, 마크 해밀, 잭 데이븐포트','48'),
	 ('116','킹스맨: 골든 서클',TIMESTAMP'2017-09-27 00:00:00.0','매튜 본','콜린 퍼스, 줄리안 무어, 태런 에저튼, 마크 스트롱, 할리 베리, 엘튼 존, 채닝 테이텀, 제프 브리지스, 페드로 파스칼','48');

	
-- genres, country DML.sql



-----------------data tblgenres -----------------

INSERT INTO tblgenres VALUES (genreseq.nextVal,'가족');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'공포');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'다큐멘터리');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'드라마');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'로맨스');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'멜로');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'무협');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'뮤지컬');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'미스터리');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'범죄');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'스릴러');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'애니메이션');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'액션');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'어드벤처');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'전쟁');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'코미디');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'판타지');
INSERT INTO tblgenres VALUES (genreseq.nextVal,'SF');

DELETE FROM tblgenres;
COMMIT;
-----------------data tblmoviegenres -----------------
SELECT * FROM tblgenres;
DELETE FROM tblgenres;

INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,1);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,1);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,2);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,3);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,3);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,3);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,11,3);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,4);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,4);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,5);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,5);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,6);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,6);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,6);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,7);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,7);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,11,8);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,9);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,9);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,9);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,10);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,11);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,11);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,11);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,12);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,12);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,12);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,1,12);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,13);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,13);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,13);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,14);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,15);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,15);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,15);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,16);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,5,17);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,6,17);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,17);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,18);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,18);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,18);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,19);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,8,19);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,20);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,20);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,20);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,21);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,22);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,22);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,8,23);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,24);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,24);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,9,24);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,24);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,25);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,26);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,27);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,28);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,28);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,1,28);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,9,28);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,29);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,29);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,29);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,30);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,31);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,11,31);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,32);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,32);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,33);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,33);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,5,34);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,6,34);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,35);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,35);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,35);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,35);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,16,36);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,36);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,37);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,37);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,17,37);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,38);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,39);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,9,39);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,5,40);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,6,40);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,41);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,14,41);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,2,41);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,18,41);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,42);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,43);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,44);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,44);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,45);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,9,46);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,2,46);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,47);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,13,48);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,49);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,10,49);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,12,49);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,9,50);
INSERT INTO TBLMOVIEGENRE VALUES (moviegenreseq.nextVal,4,50);

----------------------------------------------------------------------


-----------------data tblmoviecountry -----------------
SELECT * FROM TBLMOVIECOUNTRY;
--ㄱ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'가나');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'가봉');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'가이아나');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'감비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'기니');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'기니비사우');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'과테말라');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'그레스나다');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'그리스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'그린란드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'국가불명');


--ㄴ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'나미비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'나우루');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'나이지리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'남수단');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'남아프리카공화국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'네덜란드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'네팔');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'노르웨이');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'뉴질랜드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'니제르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'니카라과');

--ㄷ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'대한민국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'덴마크');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'도미니카공화국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'도미니카 연방');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'독일');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'동티모르');


--ㄹ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'라오스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'라이베리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'라트비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'러시아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'레바논');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'레소토');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'루마니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'룩셈부르크');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'르완다');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'리비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'리투아니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'리히텐슈타인');


--ㅁ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'마다가스카르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'마셜제도');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'말라위');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'말레이시아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'말리');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'멕시코');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'모나코');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'모로코');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'모리셔스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'모리타니');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'모잠비크');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'몬테네그로');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'몰도바');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'몰디브');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'몰타');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'몽골');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'미국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'미얀마');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'미크로네시아 연방');


--ㅂ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'바누아투');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'바레인');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'바베이도스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'바하마');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'방글라데시');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'베냉');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'베네수엘라');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'베트남');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'벨기에');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'벨라루스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'벨리즈');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'보스니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'보츠와나');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'볼리비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'부룬디');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'부르키나파소');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'부탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'북마케도니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'북한');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'불가리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'브라질');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'브루나이');


--ㅅ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'사모아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'사우디아라비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'산마리노');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'상투메 프린시페');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세네갈');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세르비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세이셸');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세인트루시아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세인트빈센트');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'세인트키츠');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'소말리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'솔로몬 제도');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'수단');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'수리남');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'스리랑카');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'스웨덴');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'스위스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'스페인');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'슬로바키아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'슬로베니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'시리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'시에라리온');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'싱가포르');


--ㅇ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아랍에미리트');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아르메니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아르헨티나');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아이슬란드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아이티');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아일랜드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아제르바이잔');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'아프가니스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'안도라');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'알바니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'알제리');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'앙골리');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'앤티가 바부다');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'에리트레아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'에스와티니');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'에스토니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'에콰도르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'에티오피아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'엘살바도르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'영국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'예맨');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'오만');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'오스트리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'온두라스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'요르단');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'우간다');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'우루과이');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'우즈베키스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'우크라이나');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'이라크');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'이란');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'이스라엘');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'이집트');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'이탈리아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'인도');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'인도네시아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'일본');


--ㅈ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'자메이카');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'잠비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'적도 기니');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'조지아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'중국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'중앙아프리카공화국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'자부티');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'짐바브웨');


--ㅊ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'차드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'체코');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'칠레');


--ㅋ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'카메룬');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'카보베르데');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'카자흐스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'카타르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'캄보디아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'캐나다');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'케냐');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'코모로');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'코스타리카');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'코트디부아르');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'콜롬비아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'콩고 공화국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'콩고민주공화국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'쿠바');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'쿠웨이트');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'크로아티아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'키르기스스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'키리바시');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'키프로스');


--ㅌ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'타지키스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'탄자니아');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'태국');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'토고');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'통가');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'투르크메니스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'투발루');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'튀니지');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'튀르키예');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'트리니다드 토바고');


--ㅍ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'파나마');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'파라과이');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'파키스탄');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'파푸아뉴기니');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'팔라우');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'페루');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'포르투갈');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'폴란드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'프랑스');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'피지');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'핀란드');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'필리핀');


--ㅎ
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'헝가리');
INSERT INTO TBLMOVIECOUNTRY VALUES (countryseq.nextVal,'호주');



-----------------data tblmoviecountry -----------------


INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,1);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,2);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,3);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,4);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,5);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,6);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,7);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,8);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,9);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,10);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,11);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,12);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,13);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,14);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,15);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,16);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,17);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,18);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,19);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,20);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,21);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,22);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,23);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,24);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,25);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,26);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,27);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,141,28);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,29);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,30);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,31);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,32);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,33);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,141,34);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,141,35);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,36);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,141,37);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,38);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,141,39);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,40);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,41);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,42);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,43);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,44);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,45);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,46);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,47);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,124,48);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,48);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,57,49);
INSERT INTO tblmakingcountry VALUES (makingcountryseq.nextVal,23,50);


-- famousline.sql
SELECT * FROM tblfamousline;
DELETE FROM tblfamousline;

INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '누가 5야?', '1');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '너 납치된 거야.', '1');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '돌아오는 법도 가르쳐야죠', '2');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우리 가족은 하나야.그것이 강점이자 약점이지', '3');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '물의 길은 시작도 끝도 없다.물의 길은 모든걸 잇는다.', '3');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우리에겐 더 압도적인 승리가 필요하다.', '4');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '이번 전쟁은 의와 불의의 싸움이다.', '4');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '다 처먹으려다 전부를 잃는거야.', '5');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '아무리 시대가 바껴도 수사는 발로 뛰는거고 수갑은 형사가 채우는거야.', '5');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '한 번 길을 잃었다고 해서, 영원히 잃은 건 아니야.', '6');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '같은 목표를 위해 잠시 한 배를 탄 것 뿐이야.', '7');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '무엇이 보이십니까?', '8');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '학질이요···', '8');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '때로는 눈 감고 사는게 편할 때도 있습니다.', '8');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우리는 세상을 지배하는 게 아니라 자연에 종속되는 존재이다.', '9');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '오랜만이네?', '10');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '내 길은 내가 선택하고 싶어.', '11');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '가장 작은 자도 무언가를 할 수 있다.', '12');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '보여줘, 우리가 누구인지', '13');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '나락에 떨어져 본 자만이 위대한 지도자가 될 수 있지', '13');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '나는 여기 비행기에 탄 사람들이 전부 죽었으면 좋겠어요.', '14');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '할 수 있는데까진 해봐야죠, 끝까지', '14');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '큰 힘에는 큰 책임이 따르지.', '15');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '보고 싶을 때 볼 수 있는게 그거이 통일이다!', '16');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '내가 그렇게 나쁩니까?', '17');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우는구나, 마침내.', '17');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '밥은 먹고 합시다 시간은 기니까.', '18');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '꼬레아 우라 꼬레아 우라 꼬레아 우라!', '19');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우두머리는 죽음을 두려워해야 돼, 그래야 다같이 살 길을 찾으려고 하거든.', '20');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '태어나줘서 고마워.', '21');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '버려진 게 아니라 구해진거야.', '21');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '위험한 시대에는 위험한 자가 유세하지.', '22');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '덕분에 행복하게 잘 살다 갑니다.', '23');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '땅끝에 오면 끝일 줄 알았는데 끝에 보길도가 있네. 사는 것도 그랬으면 좋겠다. ', '23');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '지금까지 살고 있으면 사이좋은 거야.', '23');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '상황이 그러면 훌륭한 사람도 알 수 없는 게 세상이야.', '24');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '만약 그때로 돌아간대도 같은 선택을 하실 겁니까?', '25');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '긴 실을 더 만들어야 했습니다.', '25');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '너는.. 끝까지 잡아서 죽인다', '25');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우리가 쓰러지면 남은 이들이 못 버팁니다', '25');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '도망을 가서 숨는 건 경험상 현명한 결정이 아냐.', '27');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '걱정, 두려움 때문에 기회를 놓칠 순 없어, 밑져야 본전이잖아!', '27');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '내 힘은 축복이 아닌 저주이자 분노에서 태어났다!', '29');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '지는 사람이 있어야 이기는 게 의미가 있지.', '30');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '나를 믿지 마시고 제 욕심을 믿으십시오.', '30');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '자식을 잃은 부모는 이미 괴물이에요.', '31');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '증언은 증거보다 힘이 없어요.', '31');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '보물은 사라진게 아니라 행방을 모르는 거야, 행방을 모르는 것은 찾으면 돼!', '32');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '니가 다 옳은 것 같지?', '33');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '우리 경찰은 경계에 있다.흑과 백, 어느 쪽도 아닌 경계 위에 서 있어.', '33');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '내일 모든 걸 잊는다 해도 가장 행복한 오늘을 줄게', '34');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '둘이 함께 내일의 너를 속이는 거야', '34');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '형! 외모가 중요한게 아니잖아.', '36');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '정답보다 중요한 건 답을 찾는 과정이다.', '38');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '마음 가는 대로 솔직하게, 진실은 언제나!', '40');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '확신에 차있는 사람의 모습은 이런 거구나.', '40');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '내가 웃고 있구나', '40');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '한 시간만 정상으로 돌아가면 뭘하고 싶어?', '41');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '인생이 원래 이렇게 힘든 거에요?', '44');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '이 정도면 목숨 걸어야 돼', '44');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '자식이 잘못된 길로 가면 바로잡아주는게 부모의 도리야.', '45');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '용서받을 기회는 아버님이 없애신 거에요.', '45');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '죄를 지었으면 벌을 받아 죽음으로써 도망치지 말고..!', '47');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '신사는 그림자 속에 숨지 않지.', '48');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '특권을 타고 났다면 먼저 모범을 보여야 한다.', '48');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '한 번 악당은 평생 악당!', '49');
INSERT INTO tblfamousline (famouslineseq, detail, seq) VALUES (famouslineseq.nextval, '싸움은 망설이는 놈이 지는 기다.', '50');



-- 영화 insert
DROP SEQUENCE seq;
CREATE SEQUENCE seq;
DELETE from tblmovie;
SELECT * FROM tblmovie;
ALTER TABLE tblmovie MODIFY engname varchar(255) NULL;
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES 
(seq.nextVal, '범죄도시2','The Roundup', '2022-05-18', '15세이상관람가', 106, 8.0, 12693415, NULL,'42회 황금촬영상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES 
(seq.nextVal, '탑건: 매버릭','Top Gun: Maverick', '2022-06-22', '12세이상관람가', 130, 9.3, 8197326, NULL,'	31회 MTV 영화 & TV 상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES 
(seq.nextVal, '아바타: 물의 길','Avatar: The Way of Water', '2022-12-14', '12세이상관람가', 192, 7.8, 10805065, NULL,'95회 아카데미시상식, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES 
(seq.nextVal, '한산: 용의 출현','Hansan: Rising Dragon', '2022-07-27', '12세이상관람가', 130, 8.5, 7265209, NULL,'59회 백상예술대상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES 
(seq.nextVal, '공조2: 인터내셔날','Confidential Assignment2: International', '2022-09-07', '15세이상관람가', 129, 7.4, 6982940, 1,'	58회 대종상영화제, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '닥터 스트레인지: 대혼돈의 멀티버스','Doctor Strange in the Multiverse of Madness, 2022', '2022-05-04', '12세이상관람가', 126, 6.7, 5884595, 2,'31회 MTV 영화 & TV 상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '헌트','Hunt', '2022-08-10', '15세이상관람가', 125, 8.8, 4352513, NULL,'59회 백상예술대상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '올빼미','The night owl', '2022-11-23', '15세이상관람가', 118, 8.8, 3329634, NULL,'59회 백상예술대상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '쥬라기 월드: 도미니언','JURASSIC WORLD: DOMINION', '2022-06-01', '12세이상관람가', 147, 6.0, 2837413, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '마녀(魔女) Part2. The Other One','The Witch Part 2. The Other One', '2022-06-15', '15세이상관람가', 137, 5.9, 2806501, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '토르: 러브 앤 썬더','Thor: Love and Thunder', '2022-07-16', '12세이상관람가', 119, 5.0, 2716306, 2, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '미니언즈2','Minions: The Rise of Gru', '2022-07-20', '전체관람가', 87, 6.6, 2269033, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '블랙 팬서: 와칸다 포에버','Black Panther: Wakanda Forever', '2022-11-09', '12세이상관람가', 161, 5.7, 2105988, 1, '95회 아카데미시상식, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '비상선언','Emergency Declaration', '2022-08-03', '12세이상관람가', 140, 6.2, 2058869, NULL, '16회 아시아필름어워즈, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '스파이더맨: 노 웨이 홈','Spider-Man: No Way Home', '2022-10-05', '12세이상관람가', 148, 6.7, 7551990, 2, '30회 MTV 영화 & TV 상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '육사오(6/45)',NULL, '2022-08-24', '12세이상관람가', 113, 8.1, 1981014, 1, '59회 백상예술대상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '헤어질 결심','Decision to Leave', '2022-06-29', '15세이상관람가', 138, 7.7, 1898785, NULL, '	59회 백상예술대상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '외계+인 1부','Alienoid', '2022-07-20', '12세이상관람가', 142, 7.1, 1539364, 1, '42회 황금촬영상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '영웅','Hero', '2022-12-21', '12세이상관람가', 120, 9.0, 3273771, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '해적: 도깨비 깃발','The Pirates : The Last Royal Treasure', '2022-01-26', '12세이상관람가', 125, 5.4, 1339242, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '브로커','Broker', '2022-06-08', '12세이상관람가', 129, 6.0, 1261131, NULL, '16회 아시아필름어워즈, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '신비한 동물들과 덤블도어의 비밀','Fantastic Beasts: The Secrets of Dumbledore', '2022-04-13', '12세이상관람가', 142, 6.1, 1195443, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '인생은 아름다워','Life is Beautiful', '2022-09-28', '12세이상관람가', 122, 8.9, 1172016, NULL, '58회 대종상영화제, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '더 배트맨','The Batman', '2022-03-01', '15세이상관람가', 176, 6.5, 906659, 1, '21회 워싱턴비평가협회상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '데시벨','Decibel', '2022-11-16', '12세이상관람가', 110, 6.5, 901426, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '정직한 후보 2','Honest Candidate 2', '2022-09-28', '12세이상관람가', 107, 3.4, 899899, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '씽2게더','Sing 2', '2022-01-05', '전체관람가', 110, 8.8, 885578, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '극장판 짱구는 못말려: 수수께끼! 꽃피는 천하떡잎학교','Crayon Shin-chan: Shrouded in Mystery! The Flowers of Tenkazu Academy', '2022-09-28', '전체관람가', 104, 8.5, 837647, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '블랙 아담','Black Adam', '2022-10-19', '12세이상관람가', 125, 6.7, 779489, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '킹메이커','Kingmaker', '2022-01-26', '15세이상관람가', 123, 8.2, 785567, NULL, '42회 황금촬영상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '자백','Confession', '2022-10-26', '15세이상관람가', 105, 7.5, 738122, NULL, '42회 판타스포르토국제영화제, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '언차티드','Uncharted', '2022-02-16', '12세이상관람가', 116, 6.3, 730847, 2, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '경관의 피','The Policeman’s Lineage', '2022-01-05', '15세이상관람가', 119, 6.5, 684667, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '오늘 밤, 세계에서 이 사랑이 사라진다 해도','Even if This Love Disappears from the World Tonight', '2022-11-30', '12세이상관람가', 121, 7.0, 1100695, NULL, '46회 일본아카데미상, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '극장판 주술회전 0','Jujutsu Kaisen 0: The Movie', '2022-02-17', '15세이상관람가', 105, 7.4, 664565, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '압꾸정','Men of Plastic', '2022-11-30', '12세이상관람가', 112, 4.6, 608639, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '극장판 포켓몬스터DP: 기라티나와 하늘의 꽃다발 쉐이미',NULL, '2022-06-01', '전체관람가', 96, 8.1, 581223, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '이상한 나라의 수학자','In Our Prime', '2022-03-09', '12세이상관람가', 117, 8.4, 534291, NULL, '21회 피렌체 한국영화제, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '명탐정 코난: 할로윈의 신부','Detective Conan: The Bride of Halloween', '2022-07-13', '12세이상관람가', 110, 8.3, 490869, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '동감','Ditto', '2022-11-16', '12세이상관람가', 114, 5.9, 490145, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '모비우스','Morbius', '2022-03-30', '15세이상관람가', 104, 6.2, 475928, 2, '43회 골든라즈베리시상식, 2023');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '늑대사냥','Project Wolf Hunting', '2022-09-21', '청소년관람불가', 121, 6.1, 458720, NULL, '55회 시체스국제판타스틱영화제, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '뽀로로 극장판 드래곤캐슬 대모험','Pororo Movie_Dragon castle Adventure', '2022-07-28', '전체관람가', 70, 5.7, 450934, NULL, '	26회 부천국제판타스틱영화제, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '특송','Special Delivery', '2022-01-12', '15세이상관람가', 108, 6.9, 444417, NULL, '42회 황금촬영상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '니 부모 얼굴이 보고 싶다','I want to know your parents', '2022-04-27', '15세이상관람가', 111, 7.0, 416524,NULL,NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '놉','Nope', '2022-08-17', '12세이상관람가', 130, 6.0, 416048, NULL, '88회 뉴욕비평가협회상, 2022');
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '리멤버','REMEMBER', '2022-10-26', '15세이상관람가', 128, 9.1, 412836, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '킹스맨: 퍼스트 에이전트','The King''s Man', '2021-12-22', '청소년관람불가', 131, 7.0, 1029365, 1, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '배드 가이즈','The Bad Guys', '2022-05-04', '전체관람가', 100, 8.0, 400329, NULL, NULL);
INSERT INTO tblmovie (seq, name, engname, releasedate, grade, runnningtime, rate, audience, cookie, award) VALUES
(seq.nextVal, '뜨거운 피','Hot Blooded', '2022-03-23', '15세이상관람가', 120, 6.2, 398105, NULL, '58회 백상예술대상, 2022');

COMMIT;

-- 영화사
DROP SEQUENCE studioseq;
CREATE SEQUENCE studioseq;
SELECT * FROM tblstudio;
DELETE FROM tblstudio;
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '빅펀치픽쳐스');	-- 1
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜비에이엔터테인먼트'); -- 2
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)홍필름'); -- 3
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '플러스엠 엔터테인먼트'); -- 4
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜에이비오엔터테인먼트'); -- 5
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '롯데컬처웍스(주)롯데엔터테인먼트'); -- 6
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '월트 디즈니 컴퍼니 코리아'); -- 7
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)빅스톤픽쳐스'); -- 8
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜JK필름'); -- 9
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'CJ ENM'); -- 10
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '영화사 창건'); -- 11
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '아티스트스튜디오(주)'); -- 12
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜사나이픽처스'); -- 13
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜씨제스엔터테인먼트'); -- 14
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)영화사 담담'); -- 15
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)NEW'); -- 16
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '유니버설 픽쳐스'); -- 17
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜영화사 금월'); -- 18
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '일루미네이션 엔터테인먼트'); -- 19
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜매그넘나인'); -- 20
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜쇼박스'); -- 21
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '씨네주(유)'); -- 22
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '소니 픽쳐스'); -- 23
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'TPS COMPANY'); -- 24
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '싸이더스'); -- 25
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '씨나몬㈜홈초이스'); -- 26
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜모호필름'); -- 27
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜케이퍼필름'); -- 28
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '에이콤'); -- 29
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '어뉴'); -- 30
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '오스카10스튜디오'); -- 31
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)영화사 집'); -- 32
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '워너브러더스 코리아㈜'); -- 33
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '더 램프㈜'); -- 34
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '이스트드림 시노펙스(주)'); -- 35
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜기억속의 매미'); -- 36
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)마인드마크'); -- 37
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)수필름'); -- 38
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '씨앗필름'); -- 39
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '리얼라이즈 픽쳐스'); -- 40
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '리양필름'); -- 41
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)에이스메이커무비웍스'); -- 42
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '홀리가든'); -- 43
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '바이포엠스튜디오'); -- 44
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜미디어캐슬'); -- 45
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜대교'); -- 46
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '대원미디어㈜'); -- 47
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜포켓몬코리아'); -- 48
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '조이래빗'); -- 49
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '고고스튜디오'); -- 50
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'CJ CGV'); -- 51
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '콘텐츠지'); -- 52
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'TCO(주)더콘텐츠온'); -- 53
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜영화사 채움'); -- 54
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'OCON STUDIOS'); -- 55
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '엠픽처스'); -- 56
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, 'Library Pictures International'); -- 57
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)더타워픽쳐스'); -- 58
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '폭스 인터내셔널 프러덕션 (코리아)'); -- 59
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)마인드마크'); -- 60
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜영화사 월광'); -- 61
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '드림웍스'); -- 62
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '고래픽처스'); -- 63
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '㈜스튜디오 디에이치엘'); -- 64
INSERT INTO tblstudio (studioseq, studioname) VALUES (studioseq.nextVal, '(주)키다리스튜디오'); -- 65


-- 제작사
DROP SEQUENCE makerseq;
CREATE SEQUENCE makerseq;
DELETE FROM tblmaker;
SELECT * FROM tblmaker;
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 1, 1, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 2, 1, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 3, 1, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 4, 1, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 5, 1, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 5, 1, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 2, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 2, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 3, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 3, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 8, 4, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 4, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 4, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 9, 5, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 5, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 5, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 5, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 11, 5, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 6, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 6, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 12, 7, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 13, 7, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 4, 7, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 4, 7, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 14, 8, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 15, 8, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 8, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 8, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 9, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 9, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 18, 10, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 10, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 10, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 11, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 11, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 19, 12, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 12, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 12, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 13, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 13, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 20, 14, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 14, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 14, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 14, 14, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 22, 14, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 15, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 15, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 24, 16, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 25, 16, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 26, 16, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 25, 16, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 27, 17, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 17, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 17, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 28, 18, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 18, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 18, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 9, 19, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 19, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 19, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 19, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 29, 19, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 30, 20, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 31, 20, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 20, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 20, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 32, 21, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 21, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 21, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 22, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 22, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 34, 23, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 23, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 23, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 24, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 24, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 35, 25, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 36, 25, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 37, 25, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 38, 26, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 3, 26, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 26, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 27, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 27, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 28, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 28, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 29, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 33, 29, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 39, 30, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 4, 30, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 4, 30, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 40, 31, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 31, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 6, 31, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 32, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 32, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 41, 33, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 42, 33, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 42, 33, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 43, 34, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 44, 34, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 45, 34, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 44, 34, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 46, 35, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 47, 35, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 46, 35, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 1, 36, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 2, 36, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 3, 36, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 36, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 36, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 37, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 48, 37, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 49, 38, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 38, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 21, 38, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 39, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 10, 39, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 50, 40, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 51, 40, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 44, 40, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 41, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 23, 41, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 52, 42, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 53, 42, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 53, 42, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 54, 42, '공동제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 51, 42, '공동배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 55, 43, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 43, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 56, 44, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 44, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 16, 44, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 57, 44, '공동제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 58, 45, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 59, 45, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 60, 45, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 59, 45, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 46, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 46, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 61, 47, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 42, 47, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 42, 47, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 48, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 7, 48, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 62, 49, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 49, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 17, 49, '수입');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 63, 50, '제작');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 64, 50, '배급');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 65, 50, '제공');
INSERT INTO tblmaker (makerseq, studioseq, seq, makerpart) VALUES (makerseq.nextVal, 65, 50, '공동배급');


COMMIT;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	