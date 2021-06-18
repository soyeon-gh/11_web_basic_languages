/*

	# 조인(JOIN) 
    
		- 조인은 두 개 이상의 테이블을 결합하는 연산이다.
		- 각 테이블은 각자에 맞는 데이터를 저장하고 있는데, 서로 다른 테이블에서 데이터를 가져오려면 조인 연산을 해야 한다.
		- 대표적인 조인은 INNER , LEFT(LEFT OUTER), RIGHT(RIGHT OUTER) 조인이 있다.

*/

# 예시 1) 사원들의 사원번호 , 근무번호 , 근무 부서 이름을 가져온다.

SELECT
		dept_emp.emp_no,
        departments.dept_no,
        departments.dept_name
FROM
		departments,
        dept_emp
WHERE
		departments.dept_no = dept_emp.dept_no;
        
# 1-2) 별칭 사용 가능

SELECT
		E.emp_no,
        D.dept_no,
        D.dept_name
FROM
		departments as D,
        dept_emp as E
WHERE
		D.dept_no = E.dept_no;

# AS는 생략 가능, 보통 생략

# 1-3) INNER JOIN사용

SELECT
		# 자바의 변수와 매칭하는 것 외에 관리적 차원으로도 AS를 사용한다.
        # DE.EMP_NO 	AS EMP_NO, 
		# D.DEPT_NO 	AS DEPT_NO,
		# D.DEPT_NAME 	AS DEPT_NAME
        
		# AS 써서 자바에 맞는 변수를 맞춰줌 
		# DE.EMP_NO 	AS empNo, ( key ) 화면에서 ${empNo}
		# D.DEPT_NO 	AS deptNo,
		# D.DEPT_NAME 	AS deptName
        
		DE.EMP_NO,
        D.DEPT_NO,
        D.DEPT_NAME
FROM
		departments D
		#INNER JOIN DEPT_EMP DE
		#		ON DE.EMP_NO = D.EMP_NO; # ON = WHERE
                JOIN DEPT_EMP DE
					ON DE.EMP_NO = D.EMP_NO; # ON = WHERE
		# INNER 는 생략 가능
        
        
# 예시 2) 직원의 사원번호 , 이름(first,last) , 및 업무를 조회하기.
#CTRL + SHIFT + u
SELECT
		E.EMP_NO 		AS EMP_NO,
        E.FIRST_NAME 	AS FIRST_NAME,
        E.LAST_NAME 	AS LAST_NAME,
        T.TITLE 		AS TITLE
FROM
		EMPLOYEES E
	   INNER JOIN TITLES T
			   ON E.EMP_NO = T.EMP_NO; 
		
    
    
# 예시 3) 사원번호 , 사원이름(first_name,last_name) , 부서번호 , 부서이름을 조회하기.

SELECT
		E.EMP_NO 		AS EMP_NO,
        E.FIRST_NAME 	AS FIRST_NAME,
        E.LAST_NAME 	AS LAST_NAME,
        D.DEPT_NO 		AS DEPT_NO,
        D.DEPT_NAME 	AS DEPT_NAME
FROM
		EMPLOYEES E
	   INNER JOIN DEPT_EMP DE
			   ON E.EMP_NO = DE.EMP_NO
       INNER JOIN DEPARTMENTS D
			   ON DE.DEPT_NO = D.DEPT_NO;     
        # ND 랑 같음 OR아님
               
# INNER JOIN , LEFT JOIN , RIGHT JOIN 테스트를 위한 데이터 셋업



# 예시 2) 직원의 사원번호 , 이름(first,last) , 및 업무를 조회하기.

    
    
# 예시 3) 사원번호 , 사원이름(first_name,last_name) , 부서번호 , 부서이름을 조회하기.


# INNER JOIN , LEFT JOIN , RIGHT JOIN 테스트를 위한 데이터 셋업
CREATE TABLE GIRL_GROUP ( 
	_ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(32) NOT NULL, 
    DEBUT DATE NOT NULL, 
    HIT_SONG_ID INT 
); 

CREATE TABLE SONG ( 
	_ID INT PRIMARY KEY AUTO_INCREMENT, 
    TITLE VARCHAR(32) NOT NULL, 
    LYRICS VARCHAR(32) 
); 

INSERT INTO song (_id, title, lyrics) VALUES (101, 'Tell Me', 'tell me tell me tetetete tel me'); 
INSERT INTO song (title, lyrics) VALUES ('Gee', 'GEE GEE GEE GEE GEE BABY BABY'); 
INSERT INTO song (title, lyrics) VALUES ('미스터', '이름이 뭐야 미스터'); 
INSERT INTO song (title, lyrics) VALUES ('Abracadabra', '이러다 미쳐 내가 여리여리'); 
INSERT INTO song (title, lyrics) VALUES ('8282', 'Give me a call Baby baby'); 
INSERT INTO song (title, lyrics) VALUES ('기대해', '기대해'); 
INSERT INTO song (title, lyrics) VALUES ('I Dont car', '다른 여자들의 다리를');
INSERT INTO song (title, lyrics) VALUES ('Bad Girl Good Girl', '앞에선 한 마디 말도'); 
INSERT INTO song (title, lyrics) VALUES ('피노키오', '뉴예삐오'); 
INSERT INTO song (title, lyrics) VALUES ('별빛달빛', '너는 내 별빛 내 마음의 별빛'); 
INSERT INTO song (title, lyrics) VALUES ('A', 'A 워오우 워오우워 우우우'); 
INSERT INTO song (title, lyrics) VALUES ('나혼자', '나 혼자 밥을 먹고 나 혼자 영화 보고'); 
INSERT INTO song (title, lyrics) VALUES ('LUV', '설레이나요 '); 
INSERT INTO song (title, lyrics) VALUES ('짧은치마', '짧은 치마를 입고 내가 길을 걸으면'); 
INSERT INTO song (title, lyrics) VALUES ('위아래', '위 아래 위위 아래'); 
INSERT INTO song (title, lyrics) VALUES ('Dumb Dumb' , '너 땜에 하루종일'); 

INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('원더걸스', '2007-09-12', 101); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('소녀시대', '2009-06-03', 102); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('카라', '2009-07-30', 103); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('브라운아이드걸스', '2008-01-17', 104); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('다비치', '2009-02-27', 105); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('2NE1', '2009-07-08', 107); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('f(x)', '2011-04-20', 109); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('시크릿', '2011-01-06', 110); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('레인보우', '2010-08-12', 111); 
INSERT INTO girl_group (name, debut) VALUES ('에프터 스쿨', '2009-11-25'); 
INSERT INTO girl_group (name, debut) VALUES ('포미닛', '2009-08-28');

# 확인) SONG 전체 테이블 조회

    
# 확인) GIRL_GROUP 전체 테이블 조회


# 예시 1) INNER JOIN : ID와 HIT_SONG_ID가 같은 row만 조회.


# 예시 2) LEFT JOIN : GIRL_GROUP의 데이터는 모두 조회되고 ID와 HIT_SONG_ID가 같은 row를 조회.

          
# 예시 3) RIGHT JOIN : SONG의 데이터는 모두 조회되고 ID와 HIT_SONG_ID가 같은 row를 조회



