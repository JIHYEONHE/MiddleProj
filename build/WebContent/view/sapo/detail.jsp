<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@ page import="sapo.SapoVO"%>
<%@ page import="comm.AtchFileVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   SapoVO mv = (SapoVO) request.getAttribute("mv");
   List<AtchFileVO> atchFileList =
         (List<AtchFileVO>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인정보 게시물 </title>
</head>
<body>
   <table border="1">
      <tr>
         <th>브랜드명 :</th>
         <td><%= mv.getSapoBrnm() %></td>
      </tr>
      <tr>
         <th>카테고리 :</th>
         <td><%= mv.getSapoCarte() %></td>
      </tr>
      <tr>
         <th>할인 날짜 :</th>
         <td><%= mv.getSapoUpdae() %></td>
      </tr>
      <tr>
         <th>링크 :</th>
         <td><%= mv.getSapoLink() %></td>
      </tr>
      <tr>
         <th>첨부파일 :</th>
         <td>
            <%
               if(atchFileList != null) {
                  for(AtchFileVO fileVO : atchFileList) {
            %>
       <div><a href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getAtchFileId() %>&fileSn=<%=fileVO.getFileSn()%>"><%=fileVO.getOrignlFileNm() %></a></div>
            <%   
                  }
               }
            %>
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <a href="list.do">[목록]</a>
            <a href="update.do?sapoCode=<%= mv.getSapoCode() %>">[게시물 수정]</a>
            <a href="delete.do?sapoCode=<%= mv.getSapoCode() %>">[게시물 삭제]</a>
         </td>
   </table>
</body>
</html>