/*

	# 테이블 조회 정렬 ORDER BY 

		- 오름차순 정렬 ASC와 내림차순 정렬 DESC 2가지가 있다.
        - 조건식이 있을 경우 WHERE절 밑에 작성한다.
		- DESC를 명시하지 않으면 ASC로 작동한다.
    

*/

# 예시 1) 사원의 번호와 급여를 조회하기. (급여가 높은 순서부터)
SELECT 
		EMP_NO , 
		SALARY
FROM 
		SALARIES
ORDER BY 
		SALARY DESC;
    
    
    
# 예시 2) 사원의 번호와 급여를 조회하기. (급여가 낮은순서부터)
SELECT 
		EMP_NO , 
		SALARY
FROM 
		SALARIES
ORDER BY 
		SALARY ASC;
        
        
        
# 예시 3) 사원의 번호와 이름(first,last)을 조회하기. ( First , last 모두 알파벳 순서 ) 
SELECT 
		EMP_NO , 
		FIRST_NAME,
    	LAST_NAME
FROM 
		EMPLOYEES
ORDER BY 
		FIRST_NAME,
    	LAST_NAME;



# 예시 4) 사원의 번호와 이름(first,last)을 조회하기. ( First는 알파벳 순서 , last는 알파벳 역순서 ) 
SELECT 
		EMP_NO , 
		FIRST_NAME,
    	LAST_NAME
FROM 
		EMPLOYEES
ORDER BY 
		FIRST_NAME ASC,
    	LAST_NAME DESC;
    
    




# 문제 1) 사원 번호와 입사일을 조회하기 (입사일이 빠른 사람 기준)


# 문제 2) 사원의 번호와 이름을 조회하기. (알파벳 순서 기준)  / 조건) first_name이 k 로 시작하는 사원들.


# 문제 3) 사원 번호와 입사일을 조회하기. (입사일이 늦은 기준)  / 조건) 1990년에 입사한 사원들.










# 문제 1) 사원 번호와 입사일을 조회하기 (입사일이 빠른 사람 기준)

SELECT 
		EMP_NO , 
		HIRE_DATE
FROM 
		EMPLOYEES
ORDER BY 
		HIRE_DATE DESC;



# 문제 2) 사원의 번호와 이름을 조회하기. (알파벳 순서 기준)  / 조건) first_name이 k 로 시작하는 사원들.

SELECT 
	    EMP_NO, 
	    FIRST_NAME,
	    LAST_NAME
FROM
    	EMPLOYEES
WHERE
    	FIRST_NAME LIKE 'k%'
ORDER BY 
		LAST_NAME;



# 문제 3) 사원 번호와 입사일을 조회하기. (입사일이 늦은 기준)  / 조건) 1990년에 입사한 사원들.

SELECT 
		EMP_NO , 
		HIRE_DATE
FROM 
		EMPLOYEES
WHERE 
		HIRE_DATE BETWEEN '1990-01-01' AND '1990-12-31'
ORDER BY 
		HIRE_DATE DESC;