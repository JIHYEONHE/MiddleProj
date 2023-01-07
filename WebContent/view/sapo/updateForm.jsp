<%@page import="comm.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@page import="sapo.SapoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SapoVO mv = (SapoVO) request.getAttribute("mv");

List<AtchFileVO> atchFileList = (List<AtchFileVO>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인게시물 수정</title>
</head>
<body>
	<form action="update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="sapoCode" value="<%=mv.getSapoCode()%>">
		<input type="hidden" name="fileId" value="<%=mv.getAtchFileId()%>">
		<table>
			<tr>
				<td>게시물 코드:</td>
				<td><%=mv.getSapoCode()%></td>
			</tr>
			<tr>
				<td>브랜드명 :</td>
				<td><input type="text" name="sapoBrnm"
					value="<%=mv.getSapoBrnm()%>"></td>
			</tr>
			<tr>
				<td>카테고리 :</td>
				<td><input type="text" name="sapoCarte"
					value="<%=mv.getSapoCarte()%>"></td>
			</tr>
			<tr>
				<td>할인 기간 :</td>
				<td><input type="text" name="sapoUpdae"
					value="<%=mv.getSapoUpdae()%>"></td>
			</tr>
				<tr>
				<td>링크 : </td>
				<td><input type="text" name="sapoLink" value="<%=mv.getSapoLink() %>"></td>
			</tr>

			<tr>
				<th>첨부파일 :</th>
				<td>
					<%
						if (atchFileList != null) {
						for (AtchFileVO fileVO : atchFileList) {
					%>
					<div>
						<a
							href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getAtchFileId()%>&fileSn=<%=fileVO.getFileSn()%>"><%=fileVO.getOrignlFileNm()%></a>
					</div> <%
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
		<input type="submit" value="게시물 수정">
	</form>
</body>
</html>