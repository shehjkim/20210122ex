<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function Passcheck() {
		var form = document.frm;
		var pw = form.pw.value;
		var pwc = form.pwc.value;
		
		
		if(pw == pwc) {
			form.submit();
		}else{
			alert("패스워드가 일치하지 않습니다. ");
			form.pw.value=null;
			form.pw.value=null;
			form.pw.focus();
		}
	}
</script>
<style>
	th {
		background-color: beige;
	}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h1>회 원 가 입</h1>
		</div>
		<form id="frm" name="frm" action="../../MemberResult" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">이 름</th>
						<td><input type="text" id="name" name="name" size="30"></td>
					</tr>
					<tr>
						<th width="100">아 이 디</th>
						<td><input type="text" id="id" name="id" size="30"></td>
					</tr>
					<tr>
						<th width="100">패스워드</th>
						<td><input type="password" id="pw" name="pw" size="30"></td>
					</tr>
					<tr>
						<th width="100">패스워드확인</th>
						<td><input type="password" id="pwc" name="pwc" size="30"></td>
					</tr>
					<tr>
						<th width="100">성별</th>
						<td><input type="radio" id="gender" name="gender" size="30" value="male"> 남자 
							<input type="radio" id="gender" name="gender" size="30" value="female"> 여자</td>
					</tr>
					<tr>
						<th width="100">취미</th>
						<td><input type="checkbox" id="hobbys" name="hobbys" size="20" value="등산">등산 
							<input type="checkbox" id="hobbys" name="hobbys" size="20" value="낚시">낚시 
							<input type="checkbox" id="hobbys" name="hobbys" size="20" value="스포츠">스포츠
							<input type="checkbox" id="hobbys" name="hobbys" size="20" value="돌보기">돌보기</td>
					</tr>
					<tr>
						<th width="100">전화번호</th>
						<td><input type="text" id="tel" name="tel" size="30"></td>
					</tr>
				</table>
			</div>
			<p>
			<div>
				<button type="button" onclick="Passcheck()">회원가입</button>&nbsp;&nbsp;&nbsp; 
				<button type="reset">취소하기</button>
			</div>
		</form>
		<h3>
			<a href="../../index.jsp">홈 가기</a>
		</h3>
	</div>
</body>
</html>