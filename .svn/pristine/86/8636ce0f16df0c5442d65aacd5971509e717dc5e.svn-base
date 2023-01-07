<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="search.SearchVO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<%
    List<SearchVO> searchList = 
         (List<SearchVO>)request.getAttribute("searchList");

%>

<html>

<head>
<meta charset="UTF-8">
<title>dicamom 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon" href="./img/dicamom로고.jpg" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css"
	rel="stylesheet" />
<link href="css/styles2.css" rel="stylesheet" />
<link href="css/font.css" rel="stylesheet" />
<script type="text/javascript">
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
.row {
    display: flex;
    justify-content: flex-start;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
</style>
<title>검색조회</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<%@ include file="../header.jsp"%>
    
<!-- 	<form method="post" class="container mb-5" style="max-width: 900px;"> -->
<!-- 		<br> <br> -->
<!-- 		<h2 style="font-family: 'font'">할인 차트</h2> -->
<!-- 		<p style="font-family: 'gmarket'">생생함이 담긴 할인소식, 다양한 할인 이벤트를 만나보세요.</p> -->
<!-- 	</form> -->
	
<!-- 		 <form method="post" class="container mb-0" style="max-width: 1100px;"> -->
<!--             <div class="container mt-3"> -->
<!--               <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
<!--                   Indicators -->
<!--                   <ul class="carousel-indicators"> -->
<!--                       <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
<!--                       <li data-target="#myCarousel" data-slide-to="1"></li> -->
<!--                       <li data-target="#myCarousel" data-slide-to="2"></li> -->
<!--                   </ul> -->
<!--                   The slideshow -->
<!--                   <div class="carousel-inner" style="height: 800px;"> -->
<!--                       <div class="carousel-item active" style="height: 800px;"> -->
<!--                           <img src="https://t1.daumcdn.net/cfile/tistory/2303194C5899446304" alt="Los Angeles" width="1000" height="800"> -->
<!--                       </div> -->
<!--                       <div class="carousel-item" style="height: 800px;"> -->
<!--                           <img src="https://img.etoday.co.kr/pto_db/2019/08/600/20190826103313_1359257_654_784.jpg" alt="Chicago" width="1000" height="800"> -->
<!--                       </div> -->
<!--                       <div class="carousel-item" style="height: 800px;"> -->
<!--                           <img src="http://image.newsis.com/2016/08/04/NISI20160804_0011988046_web.jpg" alt="New York" width="1000" height="800"> -->
<!--                       </div> -->
<!--                   </div> -->
<!--                   Left and right controls -->
<!--                   <a class="carousel-control-prev" href="#myCarousel" data-slide="prev"> -->
<!--                       <span class="carousel-control-prev-icon"></span> -->
<!--                   </a> -->
<!--                   <a class="carousel-control-next" href="#myCarousel" data-slide="next">  -->
<!--                       <span class="carousel-control-next-icon"></span> -->
<!--                  </a> -->
<!--               </div> -->
<!--           </div> -->
<!--          </form> -->

	<section class="page-section" id="movielist">
		<div class="container mt-0">
			<hr>
			<div class="row">
			
				<%
				int searchSize = searchList.size();
				System.out.println("=========================");
				System.out.println("searchList:" + searchList);
				System.out.println("=========================");
				if (searchSize == 0) {
				%>
					<h2 id="txtcontent">찾으시는 검색물이 없습니다.<h3>
			</div>
				<%
					} else if (searchSize > 0) {
						for (int i = 0; i < searchSize; i++) {
				%>

				<div class="col-md-4 mb-5 mt-0">
					<div class="card h-100">
						<div class="embed-responsive embed-responsive-16by9">
							<img class="embed-responsive-item"
								src="/DicaMom/sapo/filedown.do?fileId=<%=searchList.get(i).getAtchFileId() %>&fileSn=<%=searchList.get(i).getFileSn() %>" id="content-img">
								
						</div>
						<div class="card-body">
							<h5 class="card-title" style="font-family: 'SEBANG_Gothic_Bold'">
								<%=searchList.get(i).getSapoBrnm()%>
							</h5>
							<p class="card-text">
								종료 날짜
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=searchList.get(i).getSapoUpdaeEnd()%></br>
								카테고리
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<%=searchList.get(i).getSapoCarte()%></br>
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

			</div>
		</div>
	</section>
</body>

</html>
<%@ include file="../footer.jsp"%>