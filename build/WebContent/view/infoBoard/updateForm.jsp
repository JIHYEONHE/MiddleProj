<%@page import="comm.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@page import="infoboBoard.InfoBoardVO"%>
<%@page import="dic.DicVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	InfoBoardVO ibv = (InfoBoardVO) request.getAttribute("ibv");

	List<AtchFileVO> atchFileList = 
			(List<AtchFileVO>) request.getAttribute("atchFileList");
%>    
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<main>
		<div class="h1Container">
			<h1>게시물 수정 </h1>
		</div>	

	<form action="update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="infoboNum" value="<%=ibv.getInfoboNum() %>">
	<input type="hidden" name="fileId" value="<%=ibv.getAtchFileId() %>">	
	
	<!-- <div class="inputContainer">
		<label class="label" for="name">제목 : </label>
		<input type="text" id="name" name="infoboTitle"
		value="<%=ibv.getInfoboTitle()%>">
	</div>
	
	<div class="inputContainer">
		<label for="name">내용 : </label>
		<input type="text" id="name" name="infoboCon"
		value="<%=ibv.getInfoboCon()%>" >
	</div>
	
	<div class="inputContainer">
		<label for="name">기존 첨부파일 : </label>
		<input type="file" id="name" name="atchFile" multiple="multiple"
		value="<%=ibv.getInfoboCon()%>" >
	</div>
	
	<div class="inputContainer">
		<label for="name">첨부파일 : </label>
		<input type="file" id="name" name="atchFile" multiple="multiple"
		value="<%=ibv.getInfoboCon()%>" >
	</div> -->
		


	<table>
			<tr>
				<td>글 번호 :</td>
				<td><%=ibv.getInfoboNum() %></td>
			</tr>
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="infoboTitle" value="" required></td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td>작성자 :</td> -->
<!-- 				<td><input type="text" name="dicId" value="vo.dicId"></td> -->
<!-- 			</tr> -->
			<tr>
				<td>내용 :</td>
				<td><textarea rows="30" cols="50" name="infoboCon" required>
<%-- 				<%=ibv.getInfoboCon() %> --%>
				</textarea></td>
			</tr>
			<tr>
				<td>기존 첨부파일 :</td>
				<td>
					<%
						if (atchFileList != null) {
							for (AtchFileVO fileVO : atchFileList) {
					%>
						<div><a href="<%=request.getContextPath() %>/filedown.do?fileId=<%=fileVO.getAtchFileId()%>&fileSn=<%=fileVO.getFileSn() %>"><%=fileVO.getOrignlFileNm() %></a></div>
					<%			
							}
						}
					%>
				</td>
			</tr>
			<tr>
				<td>첨부파일1 :</td>
				<td><input type="file" name="atchFile" multiple="multiple"></td>
			</tr>	
		</table>

		<div class="submitContainer">
			<input type="submit" value="게시물수정">
		</div>

	</form>
</main>
</body>
</html>
<%@ include file="../footer.jsp"%>