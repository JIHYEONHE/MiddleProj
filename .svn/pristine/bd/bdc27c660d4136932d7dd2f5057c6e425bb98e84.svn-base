<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dicboard/login.css">
<title>아이디 찾기</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<main>
	<header>
		<h2>아이디 찾기</h2>
	</header>
	
	<form id="jhForm" action="<%=request.getContextPath()%>/findId.do" method="post" >
		<div class="input-box">
			<label class="label" for="name">이름 :</label> 
			<input type="text" id="dicName" name="dicName" placeholder="이름">
		</div>
		<div class="input-box">
			<label class="label" for="name">전화번호 :</label> 
			<input type="text" id="dicPh" name="dicPh" placeholder="전화번호">
		</div>
		
	    <div id="forgot">
			<a href="loginForm.jsp">로그인으로 돌아가기</a>
			<a href="findPw.jsp">비밀번호 찾기</a>
		</div>
		<div class="input-box">
			<input type="submit"  onclick="f_submit();" value="아이디 찾기"> 
		</div>
	</form>
	<script>
	
	function f_submit() {
		
		event.preventDefault(); // 폼 전송 막기
		let dataM = $("#jhForm").serialize(); // dicName=?&dicPh=?
		
		$.ajax({
			method:"post",
			url:"<%=request.getContextPath()%>/findId.do",
			data:dataM,
			dataType:"text", // 주의 보내는 데이타 타입 아님, 받는 데이터타입
			success:function(result){
				if(result=="NO"){
					swal('실패', "해당하는 정보가 없습니다. 다시확인해주세요.", 'warning');
				}else if(result!="NO"){
					swal('성공', "찾으시는 아이디는 " + result + "입니다", 'success');
				}
			},  
			error: function (request, status, error) {
	                 console.log("code: " + request.status)
	                 console.log("message: " + request.responseText)
	                 console.log("error: " + error);
		   }			
		})
		
	}
	
	//전화번호 입력시 자동 -(하이픈) 생성
	$(document).on("keyup", "#dicPh", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
		});


	</script>
</main>
</body>
</html>