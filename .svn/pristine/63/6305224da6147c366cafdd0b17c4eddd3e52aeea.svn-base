<%@ page import="dic.DicVO" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	List<DicVO> dicList = 
			(List<DicVO>)request.getAttribute("dicList");
    
    System.out.println(dicList);
    System.out.println(dicList.size());
	String msg = session.getAttribute("msg") == null?
			""	: (String) session.getAttribute("msg");
	session.removeAttribute("msg");  // 꺼내온 메세지 속성값 삭제하기
%>    
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles2.css">
<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
	rel="stylesheet" type="text/css">
<link href="css/QnAlist/Styles.css" rel="stylesheet" />
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale"="1">


<title>회원 조회</title>
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
		<h1>회원 정보 조회</h1>

<nav class="navbar navbar-default">
<!-- 	<div class="navbar-header"> -->
<!-- 		<button type="button" class="navbar-toggle collapsed" -->
<!-- 			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" -->
<!-- 			aria-expanded="false"> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 			<span class="icon-bar"></span> -->
<!-- 		</button> -->
<!-- 	</div> -->
</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">아이디</th>
						<th style="background-color: #eeeeee; text-align: center;">이름</th>
						<th style="background-color: #eeeeee; text-align: center;">주소</th>
						<th style="background-color: #eeeeee; text-align: center;">상세주소</th>
						<th style="background-color: #eeeeee; text-align: center;">생년월일</th>
						<th style="background-color: #eeeeee; text-align: center;">전화번호</th>
						<th style="background-color: #eeeeee; text-align: center;">가입날짜</th>
						<th style="background-color: #eeeeee; text-align: center;">이메일</th>
						<th style="background-color: #eeeeee; text-align: center;">닉네임</th>
					</tr>
				</thead>
				<tbody>
					<%
					int dicSize = dicList.size();
					int pageSize = 5;
					String pageNum = request.getParameter("pageNum");
					if (pageNum == null) {
						pageNum = "1";
					}

					int currentPage = Integer.parseInt(pageNum);
					int startRow = (currentPage - 1) * pageSize;
					int endRow = startRow + (pageSize);
					if (endRow >= dicSize) {
						endRow = dicSize;
					}
					
					%>

					<%
						if (dicSize > 0) {
						for (int i = startRow; i < endRow; i++) {
					%>
					<tr>
						<td><%= dicList.get(i).getDicId() %></td>
						<td><%= dicList.get(i).getDicName() %></td>
						<td><%= dicList.get(i).getDicAddr() %></td>
						<td><%= dicList.get(i).getDicAddr2() %></td>
						<td><%= dicList.get(i).getDicBir() %></td>
						<td><%= dicList.get(i).getDicPh() %></td>
						<td><%= dicList.get(i).getDicJoindt().substring(0, 8) %></td>
						<td><%= dicList.get(i).getDicMail() %></td>
						<td><%= dicList.get(i).getDicNic() %></td>
					</tr>
					<%
					 }
					 
				 } else {
				%>
					<tr>
						<th colspan="6">가입한 회원이 없습니다.</th>
					</tr>
					<%
				}
				%>
				</tbody>
			</table>
				
			<%
				if (dicSize > 0) {
				int pageCount = dicSize / pageSize + (dicSize % pageSize == 0 ? 0 : 1);

				int pageBlock = 10;

				int startPage = ((int) ((currentPage - 1) / pageBlock)) * pageBlock + 1;

				int endPage = startPage + pageBlock - 1;

				if (endPage > dicSize) {
					endPage = dicSize;
				}
			%>
			<div id="page_control">


				<% if(startPage > pageBlock) { %>
				<a href="<%=request.getContextPath()%>/dic/list.do?pageNum=<%=startPage - pageBlock%>">Prev</a>
				<%} %>

				<%	for(int i = 1; i <= pageCount; i++) { %>
				<a href="<%=request.getContextPath()%>/dic/list.do?pageNum=<%=i%>"><%=i%></a>
				<%} %>

				<% if(endPage < pageCount) { %>
				<a href="<%=request.getContextPath()%>/dic/list.do?pageNum=<%=startPage + pageBlock%>">Next</a>
				<%} %>

			</div>
				<%
					}
				%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	</main>
</body>
</html>
<%@ include file="../footer.jsp"%>