--1. traffic_accident. 각 교통 수단 별(지하철, 철도, 항공기, 선박, 자동차) 발생한 총 교통 사고 발생 수, 총 사망자 수, 사건 당 평균 사망자 수를 가져오시오.
SELECT *
FROM traffic_accident;
        
        

--2. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.
SELECT *
FROM tblzoo;

SELECT family, round(avg(leg))
FROM tblzoo
GROUP BY family;

    
--3. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.
SELECT 
	family,
	count(decode(breath, 'lung', 1)) AS 폐호흡,
	count(decode(breath, 'gill', 1)) AS 아가미호흡
FROM tblzoo
WHERE thermo = 'variable'
GROUP BY family;
        

--4. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.
SELECT sizeof, family, count(*)
FROM tblzoo
GROUP BY sizeof, family
ORDER BY sizeof, family;
        
        
        


        
SELECT *
FROM tbladdressbook;

--12. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오.
SELECT DISTINCT email, count(*)
FROM tbladdressbook
GROUP BY email
HAVING count(*)>=2;
    
    
--15. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.
SELECT substr(name, 1, 1) AS 성,
	count(*)
FROM tbladdressbook
GROUP BY substr(name, 1, 1)
HAVING count(*)>=100;
            

--17. tblAddressBook. 이메일이 스네이크 명명법으로 만들어진 사람들 중에서 여자이며, 20대이며, 키가 150~160cm 사이며, 고향이 서울 또는 인천인 사람들만 가져오시오.
SELECT *
FROM tbladdressbook
WHERE (instr(email, '_') > 0) 
	AND (gender = 'f') 
	AND (age BETWEEN 20 AND 29) 
	AND (height BETWEEN 150 AND 160) 
	AND (hometown IN ('서울','인천'));


--20. tblAddressBook. '건물주'와 '건물주자제분'들의 거주지가 서울과 지방의 비율이 어떻게 되느냐?

SELECT *
FROM tbladdressbook
WHERE job = '건물주자제분';

SELECT 
	job,
	hometown,
	count(*)
FROM tbladdressbook
GROUP BY job,hometown
HAVING job IN ('건물주','건물주자제분');


