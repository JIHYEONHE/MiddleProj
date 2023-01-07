<%@page import="java.util.List"%>
<%@page import="comm.AtchFileVO"%>
<%@page import="infoboBoard.InfoBoardVO"%>
<%@ page import="dic.DicVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	InfoBoardVO ibv = (InfoBoardVO) request.getAttribute("ibv");

	List<AtchFileVO> atchFileList = 
			(List<AtchFileVO>)request.getAttribute("atchFileList");
%>    
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QnAlist/qadetail.css">
<title>정보 게시판</title>
</head>
<body>
	<main>
		<div class="h1Container">
		 <h1>정보게시판 상세페이지 </h1>
	 </div>
	   <table border="1px">
			<tr>
				<td width=80px>제목 </td>
				<td width=400px><%=ibv.getInfoboTitle() %></td>
			</tr>
			<tr>
				<td width=80px>작성일 </td>
				<td width=400px><%=ibv.getInfoboDate() %></td>
			</tr>
			<tr>
				<td width=80px>작성자 </td>
				<td width=400px><%=ibv.getDicId() %></td>
			</tr>
			<tr height=200px>
				<td width=80px>내용 </td>
				<td width=400px><%=ibv.getInfoboCon() %><br>
				</td>
			</tr>
			<tr>
				<td>첨부파일 </td>
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
			
		</table>
		<div class="btn">
					<a href="list.do">[목록]</a>
					<a href="update.do?infoboNum=<%=ibv.getInfoboNum() %>">[글 수정]</a>
					<a href="delete.do?infoboNum=<%=ibv.getInfoboNum() %>">[글 삭제]</a>				
		</div>
       
	</form>
</body>
</html>
<%@ include file="../footer.jsp"%>