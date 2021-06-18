/*

	# 서브 쿼리

	- 서브 쿼리(Subquery)란 하나의 SQL문 안에 포함되어 있는 또 다른 SQL문을 의미한다.
    - 서브쿼리는 메인쿼리가 서브쿼리를 포함하는 종속적인 관계이다.
    - 조인쿼리와 서브쿼리 방식을 상황에 맞게 사용하는 것이 중요하다.
	- 위치에 따라 사용되는 서브쿼리 예시
		
        SELECT
			서브쿼리(SELECT ~ FROM ~)
		FROM
			서브쿼리(SELECT ~ FROM ~)
		WHERE
			서브쿼리(SELECT ~ FROM ~)


*/



# 예시 1) D001 부서의 사원들의 사원번호와 FIRST_NAME 을 가져온다.
# 1-1) JOIN 사용

SELECT
		E.EMP_NO		AS EMP_NO,
        E.FIRST_NAME	AS FIRST_NAME,
        DE.DEPT_NO
FROM
		EMPLOYEES E
	   INNER JOIN DEPT_EMP DE
	           ON E.EMP_NO = DE.EMP_NO
			  AND DE.DEPT_NO = 'D001';
              

# 1-2) 서브쿼리 사용



SELECT
		EMP_NO,
        FIRST_NAME
FROM
		EMPLOYEES
WHERE
		EMP_NO IN (	SELECT
							EMP_NO
					FROM
							DEPT_EMP
					WHERE
							DEPT_NO = 'D001');

# 예시 2) 1960년 이후에 태어난 사원들이 근무하고 사원들의 사원번호, 근무부서 번호를 가져온다.

# 2-1) JOIN 사용

SELECT
		E.EMP_NO 	AS EMP_NO,
        DE.DEPT_NO	AS DEPT_NO
FROM
		DEPT_EMP DE
	  INNER JOIN EMPLOYEES E
              ON E.EMP_NO = DE.EMP_NO
			 AND E.BIRTH_DATE >= '1960-01-01';


# 2-2) 서브쿼리 사용


        
SELECT
		EMP_NO,
        DEPT_NO
FROM
		DEPT_EMP
WHERE
		EMP_NO IN ( SELECT
							EMP_NO
					FROM
							EMPLOYEES
					WHERE
							BIRTH_DATE >= '1960-01-01');
                            
# 예시 3) D001 부서의 급여의 평균보다 많이 받았던 사원들의 사원번호, 이름(first ,last) , 급여액 , 급여날짜을 가져온다.
SELECT 
		AVG(SALARY) 
FROM 
		SALARIES S 
	  INNER JOIN DEPT_EMP DE 
			  ON S.EMP_NO = DE.EMP_NO 
WHERE 
		DE.DEPT_NO ='D001';

SELECT 
		S.EMP_NO 		AS EMP_NO, 
	    E.FIRST_NAME	AS FIRST_NAME,
	    E.LAST_NAME		AS LAST_NAME,
		S.SALARY		AS SALARY, 
	    S.FROM_DATE	    AS FROM_DATE
FROM 
		SALARIES S
	  INNER JOIN EMPLOYEES E
			  ON S.EMP_NO = E.EMP_NO
WHERE 
		S.SALARY > (SELECT 
						AVG(SALARY)
					FROM
						SALARIES S
					  INNER JOIN DEPT_EMP DE 
							  ON S.EMP_NO = DE.EMP_NO
					WHERE
						DE.DEPT_NO ='D001');