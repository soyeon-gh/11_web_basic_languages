# 문제 1) 각사원들의 사원번호 , 이름(first,last) , 부서 번호를 조회하기. (EMPLOYEES , DEPT_EMP 테이블 조인)

SELECT 
		E.EMP_NO 		AS EMP_NO, 
		E.FIRST_NAME 	AS FIRST_NAME, 
	    E.LAST_NAME		AS LAST_NAME,
		DE.DEPT_NO	    AS DEPT_NO
FROM 
		EMPLOYEES E 
	   INNER JOIN DEPT_EMP DE
			   ON E.EMP_NO = DE.EMP_NO;



# 문제 2) 사원들의 사원번호 , 이름 , 근무 부서 이름을 조회하기. (DEPARTMENTS , DEPT_EMP , DEPARTMENTS 테이블 조인)

SELECT 
		E.EMP_NO     AS EMP_NO, 
		E.FIRST_NAME AS FIRST_NAME, 
		E.LAST_NAME  AS LAST_NAME, 
		D.DEPT_NAME  AS DEPT_NAME
FROM 
		DEPARTMENTS D 
		 INNER JOIN DEPT_EMP DE
				 ON D.DEPT_NO = DE.DEPT_NO
		 INNER JOIN EMPLOYEES E
				 ON DE.EMP_NO = E.EMP_NO;
        
      
      
# 문제 3) 부서별로 그룹화하고 부서이름 , 부서번호 , 직원수를 조회하고 직원수가 많은 곳부터 조회하기. (DEPT_EMP , DEPARTMENTS 테이블 조인)

SELECT 
		D.DEPT_NAME AS DEPT_NAME, 
	    D.DEPT_NO	AS DEPT_NO,
	    COUNT(*)	AS COUNT
FROM 
		DEPT_EMP DE
		INNER JOIN DEPARTMENTS D 
				ON D.DEPT_NO=DE.DEPT_NO
GROUP BY 
		D.DEPT_NAME
ORDER BY
		COUNT DESC;



# 문제 4) 부서별로 그룹화하고 부서별안에 성별을 그룹화하여 직원 수를 조회하기. (DEPT_EMP , DEPARTMENTS , EMPLOYEES 테이블 조인)

SELECT 
		D.DEPT_NAME AS DEPT_NAME, 
		E.GENDER	AS GENDER, 
		COUNT(*)	AS COUNT
FROM 
		DEPT_EMP DE
	  INNER JOIN DEPARTMENTS D 
			  ON D.DEPT_NO=DE.DEPT_NO
	  INNER JOIN EMPLOYEES E 
			  ON E.EMP_NO=DE.EMP_NO
 GROUP BY 
		D.DEPT_NAME, 
		E.GENDER;

     