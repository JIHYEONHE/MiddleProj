<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dicboard/login.css">
<title>비밀번호 찾기</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<main>
	<header>
		<h2>비밀번호 찾기</h2>
	</header>
	
	<form id="jhForm" action="<%=request.getContextPath()%>/findPw.do" method="post">
		<div class="input-box">
			<label class="label" for="name">아이디 :</label> 
			<input type="text" id="dicId" name="dicId" placeholder="아이디"> 
		</div>
		<div class="input-box">
			<label class="label" for="name">이메일 :</label> 
			<input type="text" id="dicMail" name="dicMail" placeholder="이메일">
		</div>
		 <div id="forgot">
			<a href="loginForm.jsp">로그인으로 돌아가기</a>
			<a href="findId.jsp">아이디 찾기</a>
		</div>
		<div class="input-box">
			<input type="button" onclick="f_submit();" value="임시비밀번호 전송"> 
		</div>
	</form>
	<script>
	
	function f_submit(){
		   
	   event.preventDefault(); // 폼 전송 막기
	   let dataM = $("#jhForm").serialize(); // dicName=?&dicPh=?

	   $.ajax({
	      type:"get",
	      url:"<%=request.getContextPath()%>/findPw.do",
	      data:dataM,
	      dataType:"text",
	      success:function(result){
				if(result=="NO"){
					swal('실패', "해당하는 정보가 없습니다. 다시확인해주세요.", 'warning');
				}else if(result=="OK"){
					swal('성공:)', "비밀번호가 발송되었습니다. 이메일을 확인해주세요.", 'success');
				}
			},  
			error: function (request, status, error) {
	                 console.log("code: " + request.status)
	                 console.log("message: " + request.responseText)
	                 console.log("error: " + error);
		   }	
	   })
	}
	
	</script>
</main>
</body>
</html>