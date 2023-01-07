<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
.nav {
	/* 	position:fixed; */
	height: 70px;
	display: flex;
	max-width: 1000px;
	margin: auto;
}

.nav2 {
	display: flex;
	/* 	justify-content: space-between; */
	width: 900px;
}

.nav .logo {
	width: 200px;
	left: 50px;
}

.search {
	/* 	left: position: relative; */
	/* 	width: 800px; */
	
}

input {
	width: 100%;
	border: 1px solid #bbb;
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
}

img {
	position: absolute;
	/*   width: 17px; */
	/*   top: 10px; */
	/* right: 12px; */
	/*   margin: 0; */
}
.nav_but{
	display: none;
	position: absolute;
	left: 1500px;
	color: black;
}
.nav_but2{
	display: none;
	position: absolute;
	left: 1500px;
	color: black;
}

.nav_but3{
	display: none;
	position: absolute;
	left: 1500px;
	color: black;
}
</style>
<title>dicamom</title>
</head>
<script>
window.onload = function(){
	
	console.log("<%= session.getAttribute("ID") %>");
	var but = document.querySelector(".nav_but");
	var but2 = document.querySelector(".nav_but2");
	var but3 = document.querySelector(".nav_but3");
		
		if("<%= session.getAttribute("ID") %>" != "null"){ // 로그인 했을때
			if("<%= session.getAttribute("ID") %>" == "admin"){// aa 관리자 일때
			but.style.display = "none";
			but2.style.display = "none";
			but3.style.display = "block";
			} 
			
			else{ 		// 로그인 했는데 일반 회원일때
			but.style.display = "block";
			but2.style.display = "none";
			but3.style.display = "none";
			}
		}else if("<%= session.getAttribute("ID") %>" == "null") { // 로그인 안했을때
			but.style.display = "none";
			but2.style.display = "block";
			but3.style.display = "none";
		}
}

</script>
<body>
	<div class="nav">
		<div class="nav2">
			<div class="logo">
				<a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/img/dicamom로고.jpg" alt="그림"
					style="left: 60px"></a>
			</div>
			<!-- 검색 기능 부분 -->
			<form class="form-inline my-2 my-lg-0" action=/DicaMom/SearchController method="post">
				<input id="searchInput" name="keyword" class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<div class="nav_but">
			<%= session.getAttribute("ID") %>님 환영합니다.|<a href="<%=request.getContextPath()%>/LogoutController.do">LOGOUT|</a> <a href="<%= request.getContextPath()%>/mypage/list.do"">MYPAGE
			</a> <a href="<%=request.getContextPath()%>/qaboard/list.do">Q&A|</a> <a href="<%= request.getContextPath()%>/api.jsp">매장찾기|</a><a href="<%=request.getContextPath()%>/infoBoard/list.do">정보게시판</a>
		</div>
		<div class="nav_but2">
			<a href="<%=request.getContextPath()%>/view/dic/insertForm.jsp">SING UP |</a><a href="<%=request.getContextPath()%>/view/dic/loginForm.jsp">LOGIN |</a> <a href="<%= request.getContextPath()%>/mypage/list.do">MYPAGE
			</a> <a href="<%=request.getContextPath()%>/qaboard/list.do">Q&A|</a> <a href="<%= request.getContextPath()%>/api.jsp">매장찾기|</a><a href="<%=request.getContextPath()%>/infoBoard/list.do">정보게시판</a>
		</div>
		<div class="nav_but3">
			관리자님 환영합니다. <a href="<%=request.getContextPath()%>/LogoutController.do">LOGOUT</a>|</a>  <a href="<%= request.getContextPath()%>/mypage/list.do"">MYPAGE
			</a> <a href="<%=request.getContextPath()%>/qaboard/list.do">Q&A|</a> <a href="<%= request.getContextPath()%>/sapo/insert.do">게시물 등록|</a><a href="<%=request.getContextPath()%>/infoBoard/list.do">정보게시판</a>
		</div>
	</div>
	
<script>
// //   var keyword = document.querySelector(".form-control mr-sm-2");
// //   alert("안녕하세요");
// //   alert(search);
// //   console.log(search);
  	
  	
// 	$("input[name=keyword]").val(document.querySelector("#searchInput").value);
// 	console.log(document.querySelector("#searchInput").value);
// 	$("#frm").submit();
</script>
<!-- <form id="frm" action=/DicaMom/SearchController method="post"> -->
<!-- 	<input type=hidden name="keyword"> -->
<!-- </form> -->
	
	
</body>
</html>