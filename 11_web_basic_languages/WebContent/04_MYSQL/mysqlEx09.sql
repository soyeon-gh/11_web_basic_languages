

/*
  
	# 날짜 관련 함수
    
		1)  NOW() , SYSDATE() , CURRENT_TIMESTAMP() : 날짜와 시간관련 정보를 가져온다.
		2)  CURRENT_DATE() ,  CURDATE() 			: 날짜관련 정보를 가져온다.
		3)  CURRENT_TIME(), CURTIME()   			: 시간관련 정보를 가져온다.
        
        
	# 날짜 형식 포멧하기
    
        - 포맷으로 지정한 형식으로 변환된 날짜 및 시간 값을 가져온다.

*/

SELECT 
		NOW(),              
		SYSDATE(),
		CURRENT_TIMESTAMP(),
		CURRENT_DATE(), 
		CURDATE(),
		CURRENT_TIME(), 
		CURTIME();



SELECT 
		NOW() , 
		DATE_FORMAT(NOW() , '%Y년 %m월 %d일 ,%H시 %i분 %S초'),  # DATE_FORMAT(날짜함수 , 포맷형식);
	    DATE_FORMAT(NOW() , '%Y-%m-%d'),
	    DATE_FORMAT(NOW() , '%Y년%m월-%d일');


