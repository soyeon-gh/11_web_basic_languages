
# 제약 조건 
/*
 * 
 * 	- NOT NULL : NULL 금지
 *  - UNIQUE : 중복값입력 금지(NULL은가능)
 *  - PRIMARY KEY(PK) : NOT NULL + UNIQUE
 * 	  					테이블에 유일하게 구분되는 키
 *						PRIMARY KEY는 유일한 값이기 때문에 중복된 값을 가질 수 없다.
 *						테이블당 하나만 정의 가능하다.
 *						주 식별자, 주키 등으로 불린다.
 *
 *  - FOREIGN KEY(FK) : 한 테이블과 참조되는 다른 테이블 간의 연결되는 Primary Key Column을 Foreign Key라 합니다.				 
 *				  		FOREIGN KEY 는 참조관계의 기본 키와 같은 속성을 가진다.
 *						외부키, 참조키, 외부 식별자 등으로 불린다.
 * */
 
CREATE TABLE MEMBER(
	NUM INT NOT NULL PRIMARY KEY,			
    NAME VARCHAR(20) NOT NULL,
    SCORE INT
);

INSERT INTO MEMBER(SCORE) VALUES(100); 					# ERROR : NOT NULL 칼럼의 데이터가 NULL
INSERT INTO MEMBER(NAME,SCORE) VALUES('제임스고슬링',100); 	# ERROR : NOT NULL 칼럼의 데이터가 NULL
INSERT INTO MEMBER VALUES(1000, '제임스 고슬링',100);
INSERT INTO MEMBER VALUES(1000, '버너스 리',100); 		# ERROR : PRIMARY KEY가 중복되어 있다.
INSERT INTO MEMBER VALUES(1001, '버너스 리',100); 

SELECT * FROM MEMBER;
DROP TABLE MEMBER;

CREATE TABLE MEMBER(
	NUM INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(20) NOT NULL
);

INSERT MEMBER(NAME) VALUES('MYSQL');
INSERT MEMBER(NAME) VALUES('POSTRESQL');
INSERT MEMBER(NAME) VALUES('MSSQL');
INSERT MEMBER(NAME) VALUES('ORACLE');

SELECT * FROM MEMBER;
DROP TABLE MEMBER;












