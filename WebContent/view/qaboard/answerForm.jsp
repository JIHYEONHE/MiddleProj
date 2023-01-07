<%@page import="java.util.List"%>
<%@page import="qaboard.QaBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QaBoardVO qa = (QaBoardVO) request.getAttribute("qa");
%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/QnAlist/answer.css">

<title>댓글 달기</title>
</head>
<body>
	<main>
		<div class="h1Container">
			<h1>Q&A 댓글 관리</h1>
		</div>
		<form action="answer.do" method="post">
			<input type="hidden" name="qaQnum" value="<%=qa.getQaQnum()%>">

			<table>
				<tr>
					<td>제목 :</td>
					<td><%= qa.getQaQtitle() %></td>

				</tr>
				<tr>
					<td>내용 :</td>
					<td><%= qa.getQaQcont() %></td>
				</tr>
			</table>


			<%if(qa.getQaAcont()==null){ %>
			<div class="inputContainer">
				<label for="name">댓글 : </label> <input type="text" name="qaAcont"
					placeholder="댓글을 작성하세요">
			</div>
			<%}else{%>
			<div class="inputContainer">
				<label for="name">댓글 : </label> <input type="text" name="qaAcont"
					value="<%=qa.getQaAcont()%>">
			</div>
			<%} %>

			<!-- <tr>
				<td>댓글 :</td>
				<td><input type="text" name="qaAcont"
					value="<%=qa.getQaAcont()%>"></td>
			</tr> -->



			<div class="submitContainer">
				<input type="submit" value="댓글달기">
			</div>

		</form>
	</main>
</body>
</html>
<%@ include file="../footer.jsp"%>