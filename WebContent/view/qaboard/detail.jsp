<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="qaboard.QaBoardVO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QaBoardVO qa = (QaBoardVO) request.getAttribute("qa");
%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/QnAlist/qadetail.css">
<title>QA 게시물</title>
</head>

<body>
	<main>
		<div class="h1Container">
			<h1>Q&A 상세페이지</h1>
		</div>
		<form action="detail.do" method="post">
			<table border="1">
				<tr>
					<th>제목 :</th>
					<td><%=qa.getQaQtitle()%></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><%=qa.getQaQcont()%></td>
				</tr>
				<tr>
					<th>답변:</th>
					<td>
						<%
							if (qa.getQaAcont() == null) {
						%>답변이 없습니다<%
							} else {
						%><%=qa.getQaAcont()%> <%
 	}
 %>
					</td>
				</tr>

				<%
					if (qa.getQaAcont() != null) {
				%>
				<tr>
					<th>답변 일자:</th>
					<td><%=qa.getQaAdate().substring(0, 10)%> <%
 	}
 %></td>
				</tr>

			</table>

			<div class="btn">
				<a href="list.do" style="color:black; font-family: cursive; font-size: 26px">List</a> 
				<a class="btn1"	href="update.do?qaQnum=<%=qa.getQaQnum()%>">[게시물 수정]</a> 
				<a class="btn2" href="delete.do?qaQnum=<%=qa.getQaQnum()%>">[게시물삭제]</a>
				<a class="admin" href="answer.do?qaQnum=<%=qa.getQaQnum()%>">[댓글관리]</a>
			</div>

		</form>
	</main>
<script>
	var adm = document.querySelector(".admin");
	
	if("<%= session.getAttribute("ID") %>" != "admin"){
		adm.style.display = "none";
	}
	var btn1 = document.querySelector(".btn1");
	var btn2 = document.querySelector(".btn2");

	if("<%= session.getAttribute("ID") %>" != "<%=qa.getDicId() %>") { // 로그인 했을때
			btn1.style.display = "none";
			btn2.style.display = "none";
	}
</script>
</body>
</html>
<%@ include file="../footer.jsp"%>