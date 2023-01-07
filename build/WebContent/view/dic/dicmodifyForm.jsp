<%@page import="dic.DicVO"%>
<%@page import="dic.DicDaoImpl"%>
<%@page import="dic.DicDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
		<%
		String id = (String)session.getAttribute("ID");
		DicDao dicdao = DicDaoImpl.getInstance();
		DicVO vo = dicdao.getdicInfo(id);
		%>
		<%@ include file="../header.jsp" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
	rel="stylesheet" type="text/css">
		<title>회원 정보  수정</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	<ul>
        <li><a class="home" href="#">HOME</a></li><br>
        <li><a href="<%=request.getContextPath()%>/view/dic/dicmodifyForm.jsp">회원정보 설정</a></li><br>
        <li><a href="#">즐겨찾기</a></li><br>
        <li><a href="#">나의 게시물</a></li><br>
        <li><a href="#">나의  Q&A</a></li><br>
        <li><a href="#">나의  포인트</a></li>
      </ul>
	<main>
		<form action="<%=request.getContextPath() %>/DicUpdateController.do" method="post">
			<table>
				<tr>
					<td>I D :</td>
					<td><input id="dicId" type="text" name="dicId" value="<%=vo.getDicId() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>현재 패스워드 :</td>
					<td><input type="text" id="dicPw" name="dicPw" value="" onblur="f_chk()" required>
					<div id="disp"></div>
					</td>
				</tr>
				<tr>
					<td>변경 패스워드 :</td>
					<td><input type="text" id="dicmodifyps" name="dicmodifyps" value=""  required></td>
				</tr>
				<tr>
					<td>변경 패스워드 확인 :</td>
					<td><input type="text" id="dicmodifyreps" name="dicmodifyreps" value="" onblur="f_pschk()" required><br>
					<div id="idpschk"></div>
					</td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="dicName" value="<%=vo.getDicName() %>" required></td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td><input type="text" name="dicBir" value="<%=vo.getDicBir() %>" required></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td><input type="text" name="dicAddr" value="<%=vo.getDicAddr() %>" required></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td><input type="text" name="dicPh" value="<%=vo.getDicPh() %>" required></td>
				</tr>
				<tr>
					<td>이메일 :</td>
					<td><input type="text" name="dicMail" value="<%=vo.getDicMail() %>" required></td>
				</tr>
				<tr>
					<td>닉네임 :</td>
					<td><input type="text" name="dicNic" value="<%=vo.getDicNic() %>" required></td>
				</tr>
			</table>
				<input id="check" type="submit" value="수정완료" onsubmit="f_check()">
		</form>
		</main>
		
		
		
		

		<script>
		let $dicId = $("#dicId").val();
		
		var idpschk;
		
	 	function f_chk(){
	 		
			console.log($dicId);
		$.ajax({
			  url: "<%=request.getContextPath()%>/DicModifyController.do", // 요청이 전송될 URL 주소
			  type: 'POST', // http 요청 방식 (default: ‘GET’)
			  data: { "dicId" : $dicId,
					  "dicPw" : $("#dicPw").val()			
			  		}, // 요청 시 포함되어질 데이터
			  dataType: 'text', // 응답 데이터 형식 (명시하지 않을 경우 자동으로 추측)
			  success: function(p_arg) {
				if(p_arg == "OK"){
					$("#disp").html("비밀번호 일치").css("color","green");
					idpschk = true;
				}},
			  error: function (request, status, error) {
					idpschk = false;
					$("#disp").html("아이디 비밀번호를 확인하세요.").css("color","red");
			        console.log("code: " + request.status)
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
			    // 응답을 받지 못하였다거나 정상적인 응답이지만 데이터 형식을 확인할 수 없기 때문에
			    // error 콜백이 호출될 수 있습니다.
			    // 예를 들어, dataType을 지정해서 응답 받을 데이터 형식을 지정하였지만,
			    // 서버에서는 다른 데이터형식으로 응답하면  error 콜백이 호출되게 됩니다.
			    }})}
	 	console.log(idpschk);
	 	
	 	function f_pschk(){
	 	var $dicps = $("#dicmodifyps").val();
	 	var $dicmodifyreps = $("#dicmodifyreps").val();
	 	
	 	if($dicps == $dicmodifyreps){
	 		$("idpschk").html("비밀번호 일치")
	 	}else{
	 		$("idpschk").html("비밀번호를 확인해주세요")
	 		
	 	}
	 	}
	 	

		</script>
	</body>

	</html>
	<%@ include file="../footer.jsp" %>