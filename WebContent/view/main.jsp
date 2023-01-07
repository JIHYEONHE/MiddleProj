<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="sapo.SapoVO"%>
<%@ page import="comm.AtchFileVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<%
	List<SapoVO> sapList = (List<SapoVO>) request.getAttribute("sapList");
%>
<html>

<head>
<meta charset="UTF-8">
<title>dicamom 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
<style>
.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.nav3 {
	display: flex;
	height: 395px;
	z-index: 1;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}

li {
	position: relative;
	display: flex;
	list-style: none;
	list-style-type: none;
	float: left;
	text-align: center;
	width: 113px;
	height: 80px;
	margin: 10px;
}

.aa {
	display: flex;
	align-items: center;
}

.text {
	position: absolute;
	z-index: 1;
	left: 10px;
	top: 100%;
	width: 48px;
}

.all {
	margin-left: 20%;
}

.dic {
	justify-content: space-between;
}

#txtcontent {
	width: fit-content;
	margin: auto;
}

.buttonContainer {
	display: none;
}

.createButton {
	position: relative;
	top: 100px;
	left: 1400px;
	color: #fff;
	border-color: #6c757d;
	background-color: #6c757d;
	border-radius: 0.75rem;
}
</style>

<!-- 아이콘-->
<link rel="icon" type="image/x-icon" href="./img/dicamom로고.jpg" />
<!-- Core theme CSS (includes Bootstrap)-->
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- Third party plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles2.css" rel="stylesheet" />
<link href="css/font.css" rel="stylesheet" />

<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>

<body>
	<!-- 	<header class="masthead"> -->
	<!-- 		<div class="container h-100"> -->
	<!-- 			<div -->
	<!-- 				class="row h-100 align-items-center justify-content-center text-center"> -->
	<!-- 				<div class="col-lg-10 align-self-end"> -->
	<!-- 					<h1 class="text-uppercase text-white font-weight-bold">WELCOME -->
	<!-- 						&nbsp;TO&nbsp; SALE &nbsp; WORLD</h1> -->
	<!-- 					<hr class="divider my-4" /> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-lg-8 align-self-baseline"> -->
	<!-- 					<p class="text-white-75 font-weight-light mb-5">You can see -->
	<!-- 						information about various kinds of SALeEVENT. Leave your opinion -->
	<!-- 						on the Sale for many people to see!</p> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	</header>
	<%@ include file="./header.jsp"%>

	<form method="post" class="container mb-5" style="max-width: 900px;">
		<br> <br>
		<h2 style="font-family: 'font'">할인 차트</h2>
		<p style="font-family: 'gmarket'">생생함이 담긴 할인소식, 다양한 할인 이벤트를 만나보세요.</p>
	</form>

	<form method="post" class="container mb-0" style="max-width: 1100px;">
		<div class="container mt-3">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ul>
				<!-- The slideshow -->
				<div class="carousel-inner" style="height: 800px;">
					<div class="carousel-item active" style="height: 800px;">
						<img src="https://t1.daumcdn.net/cfile/tistory/2303194C5899446304"
							alt="Los Angeles" width="1000" height="800">
					</div>
					<div class="carousel-item" style="height: 800px;">
						<img
							src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MjRfNTUg%2FMDAxNjMyNDgyMjczOTQ3.YnwJ7hDV4puD0iCWEnAUHdEPS36OKqokMXV-a5dbqwwg.CkWOsEioQgQqxEgSUI33LcqorgtFhHppLoaRV0S1tSwg.JPEG.su_fitness%2F%25C1%25A6%25B8%25F1%25C0%25BB_%25C0%25D4%25B7%25C2%25C7%25D8%25C1%25D6%25BC%25BC%25BF%25E4_-001.jpg&type=sc960_832"
							alt="Chicago" width="1000" height="800">
					</div>
					<div class="carousel-item" style="height: 800px;">
						<img
							src="http://image.newsis.com/2016/08/04/NISI20160804_0011988046_web.jpg"
							alt="New York" width="1000" height="800">
					</div>

				</div>
				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#myCarousel"
					data-slide="prev"> <span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#myCarousel"
					data-slide="next"> <span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
	</form>
	<!-- 		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<!-- 		<script src="js/scripts.js"></script> -->

	<div class="all">
		<div class="aa">
			<ul id="id_cat">
				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204053.web.jpg">
					<span class="text">전체</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204001.web.jpg">
					<span class="text">디지털</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204013.web.jpg">
					<span class="text">레포츠</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204028.web.jpg">
					<span class="text">라이프</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204019.web.jpg">
					<span class="text">우먼즈</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204034.web.jpg">
					<span class="text">멘즈</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204040.web.jpg">
					<span class="text">맘즈</span></li>

				<li><img
					src="http://images.coocha.co.kr//best_tab/2016/01/07//20160107204047.web.jpg">
					<span class="text">로컬</span></li>
			</ul>
		</div>

	</div>
	<div class="buttonContainer">
		<button class="createButton"
			onclick="location.href='<%=request.getContextPath()%>/sapo/insert.do'; "style="">게시물 등록
		</button>
	</div>
	<section class="page-section" id="movielist">
		<div class="container mt-0">
			<hr>
			<div class="row">
				<%
					int sapoSize = sapList.size();
				if (sapoSize == 0) {
				%>
				<h3 id="txtcontent">
					등록된 게시물이 없습니다.
				<h3>
			</div>
			<%
				} else if (sapoSize > 0) {
			for (int i = 0; i < sapoSize; i++) {
			%>
			<div class="col-md-4 mb-5 mt-0">
				<div class="card h-100">
					<div class="embed-responsive embed-responsive-16by9">
						<img class="embed-responsive-item"
							src="<%=request.getContextPath()%>/sapo/filedown.do?fileId=<%=sapList.get(i).getAtchFileId()%>&fileSn=<%=sapList.get(i).getFileSn()%>">
					</div>
					<div class="card-body">
						<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
							<%=sapList.get(i).getSapoBrnm()%>
						</h5>
						<p class="card-text">
							종료 날짜
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=sapList.get(i).getSapoUpdaeEnd()%></br>
							카테고리 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<%=sapList.get(i).getSapoCarte()%></br>
						<hr />
						<p style="font-family: 'card-con'">
							<%=sapList.get(i).getSapoCon()%>
						</p>
					</div>
					<div class="card-footer">
						<a class="btn btn-outline-dark ml-5"
							href="https://<%=sapList.get(i).getSapoLink()%>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
							Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

					</div>
				</div>
			</div>
			<%
				}
			}
			%>

		</div>
		</div>
	</section>
	<script>
	//객체 생성부분
	// 	$(".aa").on("click", "li", function (){
	// 		var ajax;
	// 		ajax.onreadystatechange = function() {
	// 		    if (ajax.readyState == 4 && ajax.status == 200) {
	// 				var keyword = $(this).text().trim();
	// 		    }
	// 		}
	// 		ajax.open("post", "/DicaMom/res/mappers/sapo.xml", true);
	// 		ajax.send();
	// 	});
	//}

	// 	$(function() {
	// 		$("#requestBtn").on("click", function() {

	// 		})
	// 	})

	// 	$(".aa").on("click", "li", function() {
	// 		console.log("ppp",$.ajax);
	// 		$.ajax({
	// 			url : "MainController",
	// 			data : {
	// 				keyword : $(this).text().trim()
	// 			},
	// 			method : "POST",
	// 			dataType : "text"
	// 		})
	// 	});

	var buttonContainer = document.querySelector(".buttonContainer");
  
		if("<%=session.getAttribute("ID")%>" == "admin") {// admin 관리자 일때
			buttonContainer.style.display = "block";
		}

	$(".aa").on("click", "li", function() {
		//var $cat = $("input[name=keyword]").val($(this).text().trim());
		// 		if ($(this).text().trim() == "전체") {
		// 			keyword = null;
		// 		}
		$("input[name=keyword]").val($(this).text().trim());
		
		console.log($(this).text().trim());
				
		$("#frm").submit();
	});
	</script>
	<form id="frm" action=/DicaMom/MainController method="post">
		<input type=hidden name="keyword">
	</form>
</body>

</html>
<%@ include file="./footer.jsp"%>