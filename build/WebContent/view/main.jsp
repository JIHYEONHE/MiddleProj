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
	console.log("check", $.ajax);
</script>
<style>
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
</style>
<title>ILikeMovie</title>
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
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">WELCOME
						&nbsp;TO&nbsp; SALE &nbsp; WORLD</h1>
					<hr class="divider my-4" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light mb-5">You can see
						information about various kinds of SALeEVENT. Leave your opinion
						on the Sale for many people to see!</p>
				</div>
			</div>
		</div>
	</header>
	<br>
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
							src="https://img.etoday.co.kr/pto_db/2019/08/600/20190826103313_1359257_654_784.jpg"
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
			<ul>
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
	<section class="page-section" id="movielist">
		<div class="container mt-0">
			<hr>
			<div class="row" >
				<%
					int sapoSize = sapList.size();
				if (sapoSize == 0) {
				%>
					<h3 id="txtcontent">등록된 게시물이 없습니다.<h3>
			</div>
				<%
					} else if (sapoSize > 0) {
						for (int i = 0; i < sapoSize; i++) {
				%>
				<div class="col-md-4 mb-5 mt-0">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="/DicaMom/sapo/filedown.do?fileId=<%=sapList.get(i).getAtchFileId()%>&fileSn=<%=sapList.get(i).getFileSn()%>">
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								<%=sapList.get(i).getSapoBrnm()%>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=sapList.get(i).getSapoUpdaeEnd()%></br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<%=sapList.get(i).getSapoCarte()%></br>

								<hr />
									<p style="font-family: 'gmarket'">
										[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
										사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
										있습니다.
									</p>
								</div>
								<div class="card-footer">
<!-- 									<a class="btn btn-outline-dark ml-5" -->
						<%-- 										href="<%= sapList.get(i).getSapoLink() %>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More --%>
								<!-- 										Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> -->
								
							</div> 
							</div>
						</div>
				 	<%
				 		}
				 	}
				 	%> 
				<!-- <div class="col-md-4 mb-5 mt-0">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">							
							<img class="embed-responsive-item"
								src="http://img4.tmon.kr/cdn4/deals/2022/08/09/12614294074/12614294074_catlist_3col_v2_42266_1660032184production.jpg"
								alt="">
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								[버거킹]베스트 메뉴&신메뉴
								<p>최대 48% 할인 프리미엄 버거</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.09.24</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								식품</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="http://www.tmon.co.kr/deal/13282435538?utm_source=couponmoa&utm_medium=affiliate&utm_term=7693_%EC%BF%A0%ED%8F%B0%EB%AA%A8%EC%95%84&utm_content=&utm_campaign=%EC%BF%A0%ED%8F%B0%EB%AA%A8%EC%95%84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="http://th1.tmon.kr/thumbs/image/164/36b/86f/2d3aeb89e_320x320_95_FIT.jpg"></img>
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								허닭 닭가슴살
								<p>오븐바 1팩 990원 외 소시지 스테이크 곤약볶음 최대20% 할인</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.09.21</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								식품</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="http://www.tmon.co.kr/deal/8833342266?utm_source=couponmoa&utm_medium=affiliate&utm_term=7693_%EC%BF%A0%ED%8F%B0%EB%AA%A8%EC%95%84&utm_content=&utm_campaign=%EC%BF%A0%ED%8F%B0%EB%AA%A8%EC%95%84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="https://view01.wemep.co.kr/wmp-deal/9/692/628046929/628046929.jpg"></img>
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								동원 참치
								<p>동원살코기참치 100g 135g 150g 10캔 고추 10 최대 30%할인</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.10.01</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								식품</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="https://front.wemakeprice.com/deal/628046929?utm_source=couponmoa&utm_medium=META_af&utm_campaign=r_om">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="https://view01.wemep.co.kr/wmp-product/6/407/2086944076/pm_wvnsfhtldvfx.png"></img>
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								전자담배 쥬스박스
								<p>할인가 모음 전자담배 액상 완성형 입호흡</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.10.01</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								전자기기</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="https://front.wemakeprice.com/product/2086944076?utm_source=couponmoa&utm_medium=META_af&utm_campaign=r_om">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="http://cdn.011st.com/11dims/resize/200x200/quality/75/11src/dl/v2/4/8/9/9/1/7/yLYvN/4852489917_141838807_05.jpg"></img>
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								던킨 먼치킨
								<p>기프트콘 20% 할인 4000원</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.9.28</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								식품</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="https://www.11st.co.kr/products/4852489917?code=1549&utm_term=&utm_campaign=%C4%ED%C6%F9%C2%F7%C6%AE%3E%BC%EE%C5%B7%B5%F4api+%C0%A5&utm_source=%C4%ED%C6%F9%C2%F7%C6%AE_PC_AP&utm_medium=Affiliate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="http://cdn.011st.com/11dims/resize/200x200/quality/75/11src/dl/v2/7/3/9/4/6/6/gfPsy/4880739466_141822577_05.jpg"></img>
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								베스킨라빈스
								<p>이달의 맛 포함 파인트 22% 할인</p>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022.9.30</br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;라이프,
								빙과</br>
							<hr />
							<p style="font-family: 'gmarket'">
								[이용안내]<br> 본 상품권은 매장 방문 시 사용 가능합니다.(딜리버리, 킹오더, 콜센터, 단체 주문 시
								사용 불가) 방문 시 1인 1매 1회 사용 가능 합니다(중복 및 재사용 불가) 매장 사정에 따라 조기 품절될 수
								있습니다.
							</p>
						</div>
						<div class="card-footer">
							<a class="btn btn-outline-dark ml-5"
								href="https://www.11st.co.kr/products/4880739466?code=1549&utm_term=&utm_campaign=%C4%ED%C6%F9%C2%F7%C6%AE%3E%BC%EE%C5%B7%B5%F4api+%C0%A5&utm_source=%C4%ED%C6%F9%C2%F7%C6%AE_PC_AP&utm_medium=Affiliate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More
								Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</div>

					</div>
				</div> -->
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

// 	$(".aa").on("click", "li", function() {

// 		$("input[name=keyword]").val($(this).text().trim());

// 		$("#frm").submit();

// 	});
	$(".aa").on("click", "li", function() {
	

	}

</script>
<!-- <form id="frm" action=/DicaMom/MainController method="post"> -->
<!-- 	<input type=hidden name="keyword"> -->

<!-- </form> -->
</body>

</html>
<%@ include file="./footer.jsp"%>