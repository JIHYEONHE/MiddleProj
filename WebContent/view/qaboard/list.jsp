<%@ include file="../header.jsp" %>
<%@page import="qaboard.QaBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   List<QaBoardVO> qaList = (List<QaBoardVO>) request.getAttribute("qaList");

   String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
   session.removeAttribute("msg"); //꺼내온 메세지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
   rel="stylesheet" type="text/css">
<!-- <link href="css/QnAlist/QnAlist.css" rel="stylesheet" /> -->
<link href="css/QnAlist/Styles.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles2.css">
<style>
a {
display:inline-block;
text-align:center;
}

/* .page{ */
/*   text-align: center;  // div 사이즈 영역 안에서의 center */
/*   width: 50%; */
/*   } */

/* .pagination { */
/*   list-style: none; */
/*   display: inline-block; */
/*   padding: 0; */
/*   margin-top: 20px; */
/*   } */

/* .pagination li { */
/*   display: inline; */
/*   text-align: center; */
/*   } */

/* // 숫자들에 대한 스타일 지정 */
/* .pagination a { */
/*   float: left; */
/*   display: block; */
/*   font-size: 14px; */
/*   text-decoration: none; */
/*   padding: 5px 12px; */
/*   color: #96a0ad; */
/*   line-height: 1.5; */
/*   top:1000px; */
/*   } */


/* .first:hover, .last:hover, .left:hover, .right:hover{ */
/*   color: #2e9cdf;} */

/* .pagination a.active { */
/*   cursor: default; */
/*   color: #ffffff; */
/*   	} */

/* .pagination a:active { */
/*   outline: none; */
/*   } */

/* .modal .num { */
/*   margin-left: 3px; */
/*   padding: 0; */
/*   width: 30px; */
/*   height: 30px; */
/*   line-height: 30px; */
/*   -moz-border-radius: 100%; */
/*   -webkit-border-radius: 100%; */
/*   border-radius: 100%;} */

/* .modal .num:hover { */
/*   background-color: #2e9cdf; */
/*   color: #ffffff;} */

/* .modal .num.active, .modal .num:active { */
/*   background-color: #2e9cdf; */
/*   cursor: pointer;} */

/* .arrow-left { */
/*   width: 0; */
/*   height: 0; */
/*   border-top: 10px solid transparent; */
/*   border-bottom: 10px solid transparent; */
/*   border-right:10px solid blue; } */

</style>

<title>QA 게시판 목록</title>
<script>
   function createQnA() {
      window.location.href = "insert.do";
   }
</script>
</head>
<body>

   <main>
      <h1>Q&A Board</h1>
      <section>
         <table>
            <thead>
               <th class="listNumber">글번호</th>
               <th class="listTitle">제목</th>
               <th class="listWriter">작성자</th>
               <th class="listDate">작성일</th>
            </thead>
            <tbody>
               <%
               int qaSize = qaList.size();
               int pageSize = 5;
               String pageNum = request.getParameter("pageNum");
               if (pageNum == null) {
                  pageNum = "1";
               }

               int currentPage = Integer.parseInt(pageNum);
               int startRow = (currentPage - 1) * pageSize;
               int endRow = startRow + (pageSize);
               if (endRow >= qaSize) {
                  endRow = qaSize;
               }
               %>

               <%
                  if (qaSize > 0) {
                  for (int i = startRow; i < endRow; i++) {
               %>

               <tr>
                  <td><%=qaList.get(i).getQaQnum()%></td>
                  <td><a
                     href="detail.do?qaQnum=<%=qaList.get(i).getQaQnum()%>"><%=qaList.get(i).getQaQtitle()%></a></td>
                  <td><%=qaList.get(i).getDicId()%></td>   
                  <td><%=qaList.get(i).getQaQdate().substring(0, 10)%></td>
               </tr>
               <%
                  }
               } else {
               %>
               <tr>
                  <td colspan="5">게시판정보가 없습니다.</td>
               </tr>
               <%
                  }
               %>
            </tbody>
         </table>
         <div class="buttonContainer">
            <button class="createQnA" onclick="createQnA()" style="color:#fff; border-color:#6c757d; background-color:#6c757d; border-radius: 0.75rem; ">게시물 등록</button>
         </div>
         <%
            if (qaSize > 0) {
            int pageCount = qaSize / pageSize + (qaSize % pageSize == 0 ? 0 : 1);

            int pageBlock = 10;

            int startPage = ((int) ((currentPage - 1) / pageBlock)) * pageBlock + 1;

            int endPage = startPage + pageBlock - 1;

            if (endPage > qaSize - 1) {
               endPage = qaSize - 1;
            }
         %>
         
         <div class="page">
	
			<ul class="pagination modal">
	            <li> <% if(startPage > pageBlock) { %>
	            	<a class="arrow left" href="list.do?pageNum=<%=startPage - pageBlock%>"> << </a>
	            	<%} %>
	
	            <li> <%   for(int i = 1; i <= pageCount; i++) { %>
	            	<a class="active num" href="list.do?pageNum=<%=i%>"><%=i%></a>
	            	<%} %>
	
		        <li> <% if(endPage < pageCount) { %>
	            	<a class="arrow right" href="list.do?pageNum=<%=startPage + pageBlock%>"> >> </a>
	            	<%} %>
			</ul>
         </div>
            <%
               }
            %>
      </section>
   </main>
   <%
      if (msg.equals("성공")) {
   %>
   <%
      }
   %>
<script>
   var createBut = document.querySelector(".buttonContainer");
   
   if("<%= session.getAttribute("ID") %>" != "null"){ // 로그인 했을때

      if("<%= session.getAttribute("ID") %>" == "admin"){// admin 관리자 일때

         createBut.style.display = "none";
       }
   } else if("<%= session.getAttribute("ID") %>" == "null") { // 로그인 안했을때
      createBut.style.display = "none";
   }
</script>
</body>
</html>
<%@ include file="../footer.jsp"%>