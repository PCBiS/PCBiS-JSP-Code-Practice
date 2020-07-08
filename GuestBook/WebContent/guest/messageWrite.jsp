<%@page import="guestbook.service.WriteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="requestMessage" class="guestbook.model.Message" scope="request"/>
<jsp:setProperty property="*" name="requestMessage"/>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	// property의 requestMessage 변수를 받아서 result에 반환한다.
	int result = writeService.writeMessage(requestMessage);
	// 리턴받은 result 값을 writeResult 에 set하고 view 페이지로 넘긴다.
	request.setAttribute("writeResult", result);
%>
<jsp:forward page="./messageWriteView.jsp"/>