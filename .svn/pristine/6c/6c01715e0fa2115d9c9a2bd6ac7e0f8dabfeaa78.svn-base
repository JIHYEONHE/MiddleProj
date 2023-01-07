<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dic.DicVO"%>

	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>I D 중복검사</title>
	</head>

	<body>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<div> I D 중복확인</div><br>
		<input type="text" value=""><br><br><br>


		<input type="button" value="사용하기" onclick="f_close()">
		<input type="button" value="취소" onclick="f_close()">

		
	<script>
		var chilid = document.querySelector("input[type=text]");
		
		if(<%=request.getAttribute("chknum")%> == 0){
			alert(opener.window.document.getElementById("dicId").value + "는 사용 가능한 아이디 입니다.")
			chilid.value = opener.window.document.getElementById("dicId").value;
			window.close();
		}else if(<%=request.getAttribute("chknum")%> == 1){
			alert(opener.window.document.getElementById("dicId").value + "는 사용 불가능한 아이디 입니다. 다시 입력하세요")
			 opener.window.document.getElementById("dicId").value = chilid.value ;
			window.close();
		}
	</script>			
	</body>

	</html>