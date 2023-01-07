<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dicboard/login.css">
<title> 로 그 인</title>
</head>
<body>
<main>
        <header>
            <h2>Login</h2>
        </header>

	<form action="<%=request.getContextPath()%>/login.do" method="post">



			<div class="input-box">
				<label class="label" for="name">I D :</label> <input type="text"
					id="LgdicId" name="LgdicId" placeholder="아이디" required>
			</div>
			<div class="input-box">
				<label class="label" for="name">패스워드 :</label> <input type="text"
					id="LgdicPs" name="LgdicPs" placeholder="비밀번호" required>
			</div>
			<div id="forgot">
			<a href="findId.jsp">아이디 찾기</a>
			<a href="list.do">비밀번호 찾기</a>
			</div>
			<div class="input-box">
			<input type="submit" value="로그인">
			</div>
		<!--  
		<table>
		<tr>
			<td>I D :</td>
			<td><input type="text" name="LgdicId" value=""></td>
		</tr>
		<tr>
			<td>패스워드:</td>
			<td><input type="text" name="LgdicPs" value=""></td>
		</tr>
		<input type="submit" value="로그인" >
	</table>  -->
	
	
	</form>
	</main>
</body>
</html>