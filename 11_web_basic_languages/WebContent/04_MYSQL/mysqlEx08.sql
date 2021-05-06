
/*
	# 문자열 함수 	
		
		1) CONCAT  : 문자열을 연결한 값을 가져온다.
		2) INSERT  : 문자열을 삽입한 값을 가져온다. 
		3) REPLACE : 문자열을 대체한다.
		4) INSTR   : 문자열의 시작위치를 가져온다. 
					 문자열이 2개 이상 있을 경우 처음 위치만 반환한다. 
					 문자열이 없을 경우 0을 반환한다.
*/

SELECT 
		CONCAT('qwer1234' , '@' , 'gmail.com'),				# ( 문자열 , 문자열 )
		INSERT('qwer1234gmail.com' , 9 , 0 ,'@'),			# ( 문자열 , 시작위치[1부터 숫자를 센다.] , 삭제할 원본문자열 갯수 , 치환문자열 ) 
		INSERT('qwer1234gmail.com' , 9 , 5 ,'@'),		
		REPLACE('qwer1234@gmail.com' , 'gmail' , 'naver'),  # ( 문자열 , 교체될 문자열 , 교체할 문자열 )
		INSTR('qwer1234@gmail.com' , '@gmail.com'),			# (문자열 , 조회할문자열)
		INSTR('qwer1234@gmail.com' , '@naver.com'); 		# 없으면 0


/*
		5) LEFT 	 : 왼쪽에서 갯수만큼 자른 문자열을 가져온다.
		6) RIGHT 	 : 오른쪽에서 갯수만큼 자른 문자열을 가져온다.
		7) MID   	 : 원하는 위치의 문자열을 원하는 갯수만큼 자른 문자열을 가져온다.
		8) SUBSTRING : 원하는 위치의 문자열을 원하는 갯수만큼 자른 문자열을 가져온다.
*/

SELECT 
		LEFT('770312-1234567' , 6),		     # (문자열, 왼쪽부터 자를 갯수)
		RIGHT('770312-1234567' , 7),	     # (문자열, 오른쪽부터 자를 갯수)
		MID('770312-1234567' , 3),           # (문자열 , 자르기 시작할 위치)
		SUBSTRING('770312-1234567' , 3),     # (문자열 , 자르기 시작할 위치)
		MID('770312-1234567' , 3 , 2),	     # (문자열 , 자르기 시작할 위치 , 자를 갯수)	 
		SUBSTRING('770312-1234567' , 3 , 2); # (문자열 , 자르기 시작할 위치 , 자를 갯수)	 



/*
		9) LTRIM   : 왼쪽 공백을 없앤다.
		10) RTRIM  : 오른쪽 공백을 없앤다.
		11) TRIM   : 양쪽 공백을 없앤다.
*/

SELECT 
		CONCAT('[', '       ABC        ' , ']'),
		CONCAT('[', LTRIM('       ABC        ') , ']'),
		CONCAT('[', RTRIM('       ABC        ') , ']'),
		CONCAT('[', TRIM('       ABC        ') , ']');

/*

		12) LCASE , LOWER : 대문자를 소문자로 변환하여 가져온다.
		13) UCASE , UPPER : 소문자를 대문자로 변환하여 가져온다.

*/


SELECT 
		LCASE('acDDefg'), 
		LOWER('acDDefg'),
		UCASE('acDDefg'),
		UPPER('acDDefg');



# 예시1 ) 사원의 이름을 가져온다. 성과 이름을 하나의 문자열로 가져온다.
SELECT 
		EMP_NO , 
	    CONCAT(FIRST_NAME , ' ', LAST_NAME) AS FULL_NAME
FROM 
		EMPLOYEES;


