<%@page import="java.io.File"%>
<%@ page import="sapo.SapoVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<SapoVO> sapList = (List<SapoVO>) request.getAttribute("sapList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg"); // 꺼내온 메세지 속성값 삭제하기
%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/styles2.css">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale"="1">
<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
	rel="stylesheet" type="text/css">
<link href="css/QnAlist/Styles.css" rel="stylesheet" />
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
		<title>할인 목록</title>
		<h1>할인 게시물 관리</h1>
		
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<!-- 			<button type="button" class="navbar-toggle collapsed" -->
				<!-- 				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" -->
				<!-- 				aria-expanded="false"> -->
				<!-- 				<span class="icon-bar"></span> <span class="icon-bar"></span> <span -->
				<!-- 					class="icon-bar"></span> -->
				<!-- 			</button> -->

			</div>
		</nav>
		<div class="container">
			<div class="row">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">게시물코드</th>
							<th style="background-color: #eeeeee; text-align: center;">브랜드명</th>
							<th style="background-color: #eeeeee; text-align: center;">카테고리</th>
							<th style="background-color: #eeeeee; text-align: center;">시작기간</th>
							<th style="background-color: #eeeeee; text-align: center;">종료기간</th>
							<th style="background-color: #eeeeee; text-align: center;">링크</th>
							<th style="background-color: #eeeeee; text-align: center;"></th>
						</tr>
					</thead>
					<tbody>
						<%
							int sapoSize = sapList.size();
						int pageSize = 5;
						String pageNum = request.getParameter("pageNum");
						if (pageNum == null) {
							pageNum = "1";
						}

						int currentPage = Integer.parseInt(pageNum);
						int startRow = (currentPage - 1) * pageSize;
						int endRow = startRow + (pageSize);
						if (endRow >= sapoSize) {
							endRow = sapoSize;
						}
						%>

						<%
							if (sapoSize > 0) {
							for (int i = startRow; i < endRow; i++) {
						%>
						<tr>
							<td><%=sapList.get(i).getSapoCode()%></td>
							<td><%=sapList.get(i).getSapoBrnm()%></td>
							<td><%=sapList.get(i).getSapoCarte()%></td>
							<td><%=sapList.get(i).getSapoUpdae().substring(0, 10)%></td>
							<td><%=sapList.get(i).getSapoUpdaeEnd().substring(0, 10)%></td>
							<td><%=sapList.get(i).getSapoLink().substring(0, 25)%></td>
							<td><input type="button" value="삭제" id="delete"
								name="sapoDel" onclick=f_del("<%=sapList.get(i).getSapoCode()%>")></td>
						</tr>
						<%
							}

						} else {
						%>
						<tr>
							<th colspan="6">게시물이 없습니다.</th>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

				<%
					if (sapoSize > 0) {
					int pageCount = sapoSize / pageSize + (sapoSize % pageSize == 0 ? 0 : 1);

					int pageBlock = 10;

					int startPage = ((int) ((currentPage - 1) / pageBlock)) * pageBlock + 1;

					int endPage = startPage + pageBlock - 1;

					if (endPage > sapoSize - 1) {
						endPage = sapoSize - 1;
					}
				%>
				<div id="page_control">

					<%
						if (startPage > pageBlock) {
					%>
					<a href="<%=request.getContextPath()%>/sapo/Mastlist.do?pageNum=<%=startPage - pageBlock%>">Prev</a>
					<%
						}
					%>

					<%
						for (int i = 1; i <= pageCount; i++) {
					%>
					<a href="<%=request.getContextPath()%>/sapo/Mastlist.do?pageNum=<%=i%>"><%=i%></a>
					<%
						}
					%>

					<%
						if (endPage < pageCount) {
					%>
					<a href="<%=request.getContextPath()%>/sapo/Mastlist.do?pageNum=<%=startPage + pageBlock%>">Next</a>
					<%
						}
					%>


					<%
						}
					%>
				</div>

				<script>

    function f_del(sapoCode) {
    	
    	if(!confirm("정말로 삭제할꺼임?")) {
			return false;
		}

        let dataM = $("#delete").serialize(); 
		$.ajax ({
			method:"get",
			url:"<%=request.getContextPath()%>/sapo/delete.do",
			data: {
				
				"sapoCode" : sapoCode
			
			},
			dataType:"text", // 주의 보내는 데이타 타입 아님, 받는 데이터타입
			success:function(result){
				console.log("넘어온 값:",result);
				if(result == "fail"){
					return;  // 종료 빼먹으면 안되용
				}
				
				alert("삭제되었습니다");
				location.href="<%=request.getContextPath()%>/sapo/Mastlist.do ";
				
			},  
			error: function (request, status, error) {
	                 console.log("code: " + request.status)
	                 console.log("message: " + request.responseText)
	                 console.log("error: " + error);
		   }			
		})
    }	
</script>
</body>
</html>