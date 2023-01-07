<%@page import="java.io.File"%>
<%@ page import="sapo.SapoVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    List<SapoVO> sapList = 
         (List<SapoVO>)request.getAttribute("sapList");

   String msg = session.getAttribute("msg") == null?
         ""   : (String) session.getAttribute("msg");
   session.removeAttribute("msg");  // 꺼내온 메세지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인 목록</title>
</head>
<body>
		
		<%
 int sapoSize = sapList.size(); 
 if(sapoSize > 0) {
    for (int i = 0; i < sapoSize; i++) { 
%>
	<table border="1">
			<tr><td>첨부파일</td></tr>
			<tr><td><%= sapList.get(i).getAtchFileId() %></td></tr>
			<tr><td><img src="/img/<%= sapList.get(i).getStreFileNm() %>"/></td></tr>
			<tr><td>브랜드명</td></tr>
			<tr><td><%= sapList.get(i).getSapoBrnm() %></td></tr>
			<tr><td>할인 기간</td></tr>
			<tr><td><%= sapList.get(i).getSapoUpdae() %></td></tr>
			<tr><td><%= sapList.get(i).getSapoUpdaeEnd() %></td></tr>
			<tr><td><a href='//<%=sapList.get(i).getSapoLink()%>'>[보러가기]</a></td></tr>
		
		<%
    }
    
 } else {
%>
		<tr>
			<th colspan="5">할인정보가 없습니다.</th>
		</tr>
		<%
}
%>
		<tr>
			<td colspan="5"><a href="insert.do">[할인게시물 등록]</a>
		</tr>
	</table>
	<%
   if(msg.equals("성공")) {
%>
	<script>
      alert("정상적으로 처리되었습니다.");
   </script>

	<%
   }
%>
</body>
</html>