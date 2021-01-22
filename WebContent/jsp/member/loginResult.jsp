<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/menu.jsp" />
<div align="center">
<h1>여기는 로그인 결과를 보여주는 페이지</h1>
<h2>
아이디: ${param.id } <br/> 
패스워드: ${param.pw} <br/>
메세지: ${param.id }님 ${msg }
</h2>
</div>
</body>
</html>