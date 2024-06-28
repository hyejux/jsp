<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_ok으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_no으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	
	String name = request.getParameter("name");

	int A = Integer.valueOf(request.getParameter("A"));
	int B =  Integer.valueOf(request.getParameter("B"));
	int C =  Integer.valueOf(request.getParameter("C"));

	double avg  = ((A+B+C)/3.0) ;
	 request.setAttribute("avg",avg);
	//send 로 넘어가면 avg 사용 불가 
	// 넘기기 위해서 requst 에 담아서 forward 로 넘겨야한다.
	if (avg >= 60){ %>
	<jsp:forward page="score_ok.jsp" />
		<%}else{%>
	<jsp:forward page="score_no.jsp" />
	<%
		//score_no
	}%>

