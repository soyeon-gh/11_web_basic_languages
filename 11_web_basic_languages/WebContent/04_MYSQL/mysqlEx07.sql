/*
	
    # 숫자 관련함수 

		1) ABS		: 절대값을 가져온다.
		2) CEIL		: 소수점을 올린값을 가져온다.
		3) FLOOR	: 소수점을 버린수를 가져온다.
		4) ROUND	: 소수점을 반올림한 값을 가져온다. (자릿수를 지정가능하다.)
		5) TRUNCATE : 소수점을 버린 값을 가져온다. 	   (자릿수를 지정가능하다.)
		6) POW		: x의 y승을 가져온다.
		7) MOD		: 나머지값을 가져온다.
		8) GREATEST : 최대값을 가져온다.
		9) LEAST    : 최소값을 가져온다.

*/

SELECT 
		ABS(100), 
		ABS(-100),
		CEIL(10.1), 
		CEIL(10.4), 
		CEIL(10.8), 
		FLOOR(10.1), 
		FLOOR(10.4), 
		FLOOR(10.8),
		ROUND(10.1),             # 자릿수를 생략하면 소숫점이 5이상일때 반올림한다.
		ROUND(10.4), 
		ROUND(10.8),
		ROUND(166.555 , 0),       # 자릿수가 0이면 소숫점에서 반올림한다.
		ROUND(166.555 , 1),       # 자릿수가 양수이면 해당자리에서 반올림한다.
		ROUND(166.555 , -1),      # -1인 경우 소숫점 이하를 버리고 정수의 뒤에서부터 지정된 자릿수까지 반올림한다.
		TRUNCATE(166.555 , 0),    # 0소수점 이하 자리수를 버린다.
		TRUNCATE(166.555 , 1),	  # 1소수점 이하 자리수를 버린다. 
		TRUNCATE(166.555 , -1),   # -1인 경우 소숫점 이하를 버리고 정수의 뒤에서부터 지정된 자릿수까지 0으로 처리한다.
		POW(10 , 2),
		MOD(10, 3),
		GREATEST(10,3,4,5,3,6),
		LEAST(10,-3,4,2,6,3,2);


# 예시 1) 사원들의 사원번호 , 급여를 조회한다.
# (조건) 급여는 10% 인상되었을때  올림값 , 버림값 , 반올림값을 모두 확인한다.

SELECT 
		EMP_NO , 
		SALARY * 1.1 , 
		CEIL(SALARY * 1.1) , 
		FLOOR(SALARY * 1.1) , 
		ROUND(SALARY * 1.1 , 1)
FROM 
		SALARIES;





