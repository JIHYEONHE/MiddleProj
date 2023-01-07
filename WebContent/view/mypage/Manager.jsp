<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/QnAlist/qadetail.css">
<title>관리자 마이페이지</title>
<style>
         ul {
  list-style-type: none;
  padding: 0px;
  margin: 0px;
  width: 200px;
  background: #2192b4;
  height: 550px;
  overflow: auto;
  position: fixed;
  text-align: center;
}

li a {
  text-decoration: none;
  padding: 10px;
  display: block;
  color: #000;
  font-weight: bold;
}

li a:hover {
  background: rgb(49, 40, 40);
  color: #fff;
}

li a.home {
  background : #333;
  color: #fff;
}

.cd1 {
  margin-left: 10px;
  text-align: center;
}

    </style>
</head>
<body>
<%@ include file = "../leftMenu.jsp" %>
<main>
<h1>관리자 마이페이지 입니다! 관리자님 안녕하세요 🧑🏻‍💻</h1>
</main>
</body>
</html>
<%@ include file = "../footer.jsp" %>