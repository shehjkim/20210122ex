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
<h1>회원가입 정보를 보여줍니다.</h1>
<h2>
	아이디: ${param.id }<br /> 
	패스워드: ${param.pw}<br /> 
	성별: ${param.gender}<br /> 
	취미: ${paramValues.hobbys[0]},
		 ${paramValues.hobbys[1]},
			${paramValues.hobbys[2]},
			${paramValues.hobbys[3]}
			${paramValues.hobbys[4]}<br /> 
	전화번호: ${param.tel}<br />
	</h2>
</div>
</body>
</html>