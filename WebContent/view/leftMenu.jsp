<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <ul class="ul1">
       <li><a class="home" href="#">HOME</a></li><br>
       <li><a href="<%=request.getContextPath()%>/view/dic/dicmodifyForm.jsp">회원정보 설정</a></li><br>
       <li><a href="<%=request.getContextPath()%>/mypage/list.do">나의 정보게시판</a></li><br>
       <li><a href="<%=request.getContextPath()%>/mypage/qalist.do">나의  Q&A</a></li><br>
     </ul>
     
     <ul class="ul2">       
       <li><a href="<%=request.getContextPath()%>/view/mypage/Manager.jsp">HOME</a></li><br>
       <li><a href="<%=request.getContextPath()%>/dic/list.do">회원정보 조회</a></li><br>
       <li><a href="<%=request.getContextPath()%>/sapo/Mastlist.do">메인 게시물</a></li><br>
     </ul>
<script>
	
	var ul1 = document.querySelector(".ul1");
	var ul2 = document.querySelector(".ul2");
		
		if("<%= session.getAttribute("ID") %>" == "admin") {  // 관리자 일때
		ul1.style.display = "none";
		ul2.style.display = "block";
		} 
		else { 		// 로그인 했는데 일반 회원일때
		ul1.style.display = "block";
		ul2.style.display = "none";
		}

</script>     
</body>
</html>