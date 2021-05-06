/* 

	# SQL (Structured Query Language)
	
		- SQL(Structured Query Language)은 관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위해 설계된 특수 목적의 프로그래밍 언어이다. 
		
        - 관계형 데이터베이스 관리 시스템에서 자료의 검색과 관리, 데이터베이스 스키마 생성과 수정, 데이터베이스 객체 접근 조정 관리를 위해 고안되었다. 
		
        - 많은 수의 데이터베이스 관련 프로그램들이 SQL을 표준으로 채택하고 있다.
		
        - 데이터베이스 언어 SQL 문법의 종류는 다음 세 가지로 구별된다.
        
			1) 데이터 정의 언어 (DDL : Data Definition Language)   Ex) Create , Drop , Alter 
			2) 데이터 조작 언어 (DML : Data Manipulation Language) Ex) Select , Insert , Update , Delete 
			3) 데이터 제어 언어 (DCL : Data Control Language)	   Ex) Commit , Rollback, 



		1. 데이터 베이스 생성 , 사용 및 삭제 

			[ 데이터 베이스 생성 형식 ]
			- CREATE DATABASE DB_NAME;
				
                EX) CREATE DATABASE TEST_DB;
			
            
            
			[ 데이터 베이스 사용 형식 ]
			- USE DB_NAME;
				
                EX) USE TEST_DB;



			[ 데이터 베이스 삭제 형식 ]
			- DROP DATABASE DB_NAME;
				
                EX) DROP DATABASE TEST_DB;



		2. 테이블 생성과 삭제 
		
			[ 테이블 생성 형식 ]
			- CREATE TABLE TABLE_NAME(FIELD1 TYPE, FIELD2 TYPE , .....);

			   EX)
			   CREATE TABLE TABLE_NAME (
					NO INT,
					NAME VARCHAR (15),
					PHONE VARCHAR (15)
			   );
			
			[ 테이블 삭제 형식 ]
			- DROP TABLE TABLE_NAME;



		3. 레코드(데이터)의 추가

			[ 레코드 추가 형식 ]
		   - INSERT INTO TABLE_NAME(FIELD1,FIELD2,....) VALUES('VAL1','VAL2',....);
		   
           EX) 
				INSERT INTO MEMBER ('1','JAMES','111-111');
				INSERT INTO MEMBER(NO,NAME,PHONE) VALUES('1','JAMES','111-111');
				INSERT INTO MEMBER(NAME) VALUES('JOHN');
						
				
                
		4. 레코드 출력

			[ 레코드 출력 형식 ]
		   - SELECT  FIELD1, FIELD2, ...  FROM TABLE_NAME [WHERE 조건절]

		   EX)
			   1)
			   SELECT  
						* 
			   FROM 
						MEMBER;
			   
               2)
               SELECT 
						NO,
                        NAME 
				FROM 
						MEMBER;
				
		
        
        5. 레코드 필드 업데이트 

			[ 레코드 수정 형식 ]
		   - UPDATE TABLE SET FIELD_NAME='NEW_VALUE' WHERE FIELD_CONDITION='DATA';
		  
          EX) 
				UPDATE 
						MEMBER 
				SET 
						NAME='JACKSON', 
                        ADDRESS='서울시 마포구' 
				WHERE 
						NO=3;
				
                
			   
		6) 레코드 삭제

		   [ 레코드 삭제 형식 ]
		   - DELETE FROM TABLE WHERE NO=2;
           
			EX) 
				DELETE FROM 
							MEMBER 
				WHERE 
							NO=1;


		 +@) 단축키 
         
         1) 실행 : 마우스 블록 + CTRL + ENTER
         2) 대문자 전환 : CTRL + SHFIT + U
         3) 쿼리 정렬 : CTRL + B
         
*/

# 예시 1) 데이터 베이스 생성 ( 새로고침으로 확인 )
CREATE DATABASE TEST_DB;

# 예시 2) 데이터 베이스 사용
USE TEST_DB;

# 예시 3) 테이블 생성
CREATE TABLE MEMBER(
	NUM INT,    		 # 숫자 : INT
    NAME VARCHAR(10),	 # 문자열 : VARCHAR(최대개수)
    HEIGHT DOUBLE,		 # 실수 : DOUBLE
    WEIGHT DOUBLE,
    GENDER CHAR,		 # 문자 : CHAR
	MEMO VARCHAR(50)	
);

# 예시 4) 테이블 설명
DESC MEMBER;

# 예시 5) 데이터 추가 쿼리
INSERT INTO 
		MEMBER(NUM,NAME,HEIGHT,WEIGHT,GENDER,MEMO)
VALUES
		(1,'김철수',180.3,80.3,'m','남자사람');
	
INSERT INTO 
		MEMBER   # 전체 컬럼을 추가할경우 컬럼명을 생략할 수 있다.
VALUES
		(2,'이영희',170.3,60.3,'f','여자사람');

INSERT INTO
		MEMBER(NUM,NAME)
VALUES
		(3,'제임스고슬링');


# 예시 6) 데이터 조회 쿼리
SELECT
		*		# 모든 컬럼 조회
FROM
		MEMBER;

SELECT
		NAME,
		HEIGHT,
		WEIGHT
FROM
		MEMBER;

# 예시 7) 데이터 수정 쿼리
# issue) edit > preferences > SQL editor > safte update 체크박스 해지
# sql에서 update와 delete를 막아 놓았다.

UPDATE 
		MEMBER
SET
		HEIGHT = (HEIGHT + 1) ,
        WEIGHT = 90.2
WHERE
		NUM = 1;

# 예시 8) 데이터 삭제 쿼리
DELETE FROM
		MEMBER
WHERE
		NUM = 1;


# 예시 9) 데이터 전체 삭제
DELETE FROM
		MEMBER;


# 예시 10) 테이블 삭제
DROP TABLE MEMBER;


# 예시 11) 데이터 베이스 삭제
DROP DATABASE TEST_DB;



/*

	중요 ) 
    # commit : 트렌젝션을 데이터베이스에 반영한다.
		
        - 반드시 커밋 명령어를 실행 해야 트렌젝션(변경)이 database에 적용 된다.
        - commit명령어를 사용하지 않으면 , 현재 연결상태에서만 변경사항이 보이는 것이고 재접속을 할 경우 변경했던 내용이 반영이 되어있지 않다.
		- 기본적으로 autocommit설정이 되어있는데 중요한 서버(운영)에는 autocommit 설정을 걸지 않는다.
		- autocommit 여부를 항상 확인해야된다. (에디터 마다 다름) 
          mysqlworkbench : edit> sql execution > new connections us auto commit mode)

    # rollback : 이전 커밋시점으로 회귀한다.

*/







