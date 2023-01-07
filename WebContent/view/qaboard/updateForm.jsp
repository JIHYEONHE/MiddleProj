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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QnAlist/insert.css">
<title>Q&A 게시글 수정</title>	
</head>
<body>
	<main>
		
		<div class="h1Container">
			<h1>Q&A 수정 </h1>
		</div>	
		<form action="update.do" method="post">
			<input type="hidden" name="qaQnum" value="<%=qa.getQaQnum()%>">
			
			<div class="inputContainer">
				<label class="label" for="name">제목 : </label>
				<input type="text" id="name" name="qaQtitle"
				value="<%=qa.getQaQtitle()%>">
			</div>
			<div class="inputContainer">
				<label for="name">내용 : </label>
				<input type="text" id="name" name="qaQcont"
				value="<%=qa.getQaQcont()%>" >
			</div>
	
			
			<div class="submitContainer">
				<input type="submit" value="게시물수정">
			</div>

			<!-- <table>
				<tr>
					<td>제목 :</td>
					<td><input type="text" name="qaQtitle"
						value="<%=qa.getQaQtitle()%>"></td>
				</tr>
				<tr>
					<td>내용 :</td>
					<td><input type="text" name="qaQcont"
						value="<%=qa.getQaQcont()%>"></td>
				</tr>
			</table>
			<input type="submit" value="게시물수정"> -->
			
			
		</form>
		</main>
</body>
</html>
<%@ include file="../footer.jsp"%>