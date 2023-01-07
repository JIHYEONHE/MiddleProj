<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 중복 검사</title>
</head>
<body>

<script>
var parent = opener.window.document.getElementById("dicNic");
if('<%=request.getAttribute("nicname")%>'== '<%=request.getAttribute("dbnicName")%>'){
	alert('<%=request.getAttribute("nicname")%>' + "는 사용 불가능한 닉네임 입니다.")
	opener.window.document.getElementById("dicNic").value = '';
	window.close();
}else if("<%=request.getAttribute("nicname")%>" != ""){
	alert(opener.window.document.getElementById("dicNic").value + "는 사용 가능한 아이디 입니다.")
	window.close();
}


</script>
</body>
</html>