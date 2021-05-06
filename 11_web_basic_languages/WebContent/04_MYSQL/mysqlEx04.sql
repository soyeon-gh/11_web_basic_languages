
/*
	
	# 비교 연산자

		>   : 크다.
		<   : 작다.
		>=  : 크거나 같다.
		<=  : 작거나 같다. 
		=   : 같다.    		(! 자바의 == 연산자와 다르다.)
		<>  : 다르다.  		(! 자바와 != 연산자와 다르다.)


	# WHERE
    
		-  자바의 조건식과 같이 WHERE 뒤에 조건식에 해당하는 데이터만 조회할 수 있다.

*/

# 예시 1) d005 부서 매니저의 사원번호 , 부서번호 조회하기.
SELECT
		EMP_NO,
        DEPT_NO
FROM
		DEPT_MANAGER
WHERE
		DEPT_NO = "D005";

	
# 예시 2) 1986년 이후에 입사한 사원들의 정보.
SELECT
		*
FROM
		EMPLOYEES
WHERE
		HIRE_DATE >= "1986-01-01";


/*

	# 논리연산자 ( and , or , not )
	
		- 자바와 같다.

*/

# 예시 1 ) d001부서의 매니저 중에  1990년 이후부터 입사했던 매니저의 사원번호 , 부서번호 , 입사날짜 조회하기.
SELECT
		EMP_NO,
        DEPT_NO,
        FROM_DATE
FROM
		DEPT_MANAGER
WHERE
		DEPT_NO = "D001" AND FROM_DATE >= "1990-01-01";
   
   
# 예시 2) d001부서 혹은 d002부서 매니저의 사원번호 , 부서번호를 조회하기.
SELECT
		EMP_NO,
		DEPT_NO
FROM
		DEPT_MANAGER
WHERE    
		DEPT_NO = "D001" OR DEPT_NO = "D002";


# 예시 3) d001 부서가 아닌 매니저의 사원번호 , 부서번호를 조회하기.
SELECT
		EMP_NO,
        DEPT_NO
FROM
		DEPT_MANAGER
WHERE
		NOT DEPT_NO = "D001";




/*		
	
    # between 
    
		- 2개의 범위 사이의 값을 조회할 때 사용한다. ( 시작값과 종료값 포함 ) 
        
        [ 형식 ]
		
			컬럼 BETWEEN 시작값 AND 종료값  
        
    
    # in 
	
		- 특정 값이 있으면 포함된 값을 조회한다.
		
		[ 형식 ]
        
			IN (값1,값2,값N)
    
*/

# 예시 1) 급여가 60000 이상 70000 이하인 사원의 사원번호 , 급여를 조회하기.
SELECT
		EMP_NO,
		SALARY
FROM
		SALARIES
WHERE
		SALARY BETWEEN 60000 AND 70000;


# 예시 2) d001부서와 d002부서 매니저의 사원번호 , 부서번호를 조회하기.
SELECT
		EMP_NO,
        DEPT_NO
FROM 
		DEPT_MANAGER
WHERE
		DEPT_NO IN ("D001" , "D002");

/*

	# like 
    
		- 패턴 매칭기법으로 패턴에 매칭된 데이터만 조회한다. 
    
    
*/

# 예시 1) 이름의 첫글자가 A로 시작하는 사원의 사원번호 , 이름을 조회하기.
SELECT
		EMP_NO,
		FIRST_NAME,
		LAST_NAME
FROM
		EMPLOYEES
WHERE
		FIRST_NAME LIKE 'A%';


# 예시 2) 이름의 마지막 글자가 s로 끝나는 사원의 사원번호 , 이름을 조회하기.
SELECT
		EMP_NO,
		FIRST_NAME,
		LAST_NAME
FROM
		EMPLOYEES
WHERE
		FIRST_NAME LIKE '%S';
  

# 예시 3) 이름에 'o' 가 포함되 있는 사원의 사원번호 , 이름을 조회하기.
SELECT
		EMP_NO,
		FIRST_NAME,
		LAST_NAME
FROM
		EMPLOYEES
WHERE
		FIRST_NAME LIKE '%O%';


# 예시 4) 이름의 두번째 글자가 i 인 사원의 사원번호 , 이름을 조회하기.
SELECT
		EMP_NO,
		FIRST_NAME
FROM
		EMPLOYEES
WHERE
		FIRST_NAME LIKE '_i%';


# 예시 5) 이름이 5글자인 사원들의 사원번호 , 이름을 조회하기.
SELECT
		EMP_NO,
		FIRST_NAME
FROM
		EMPLOYEES
WHERE
		FIRST_NAME LIKE '_____';