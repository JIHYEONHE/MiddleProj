<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 할인정보 게시물 등록</title>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QnAlist/insert.css">
</head>
<body>
	<main>
		<div class="h1Container">
			<h1>신규 할인정보 게시물 등록 </h1>
		</div>	
	<form action="insert.do" method="post" enctype="multipart/form-data">
		
		<div class="inputContainer">
				<label class="label" for="name">코드 : </label>
				<input type="text" id="name" name="sapoCode" placeholder="할인 게시물 코드" required>
		</div>
		<div class="inputContainer">
				<label class="label" for="name">브랜드명 : </label>
				<input type="text" id="name" name="sapoBrnm" placeholder="브랜드명" required>
		</div>
		<div class="inputContainer">
				<label class="label" for="name">카테고리 : </label>
				<select name="sapoCarte">
						<!-- 디지털 레포츠 라이프 우먼즈 맨즈 맘즈 로컬-->
						<option value="">==선택==</option>
						<option value="디지털">디지털</option>
						<option value="레포츠" >레포츠</option>
						<option value="라이프">라이프</option>
						<option value="우먼즈">우먼즈</option>
						<option value="멘즈">멘즈</option>
						<option value="맘즈">맘즈</option>
						<option value="로컬">로컬</option>
				</select>
		</div>
		<div class="inputContainer">
				<label class="label" for="name"> 시작일  : </label>
				<input type="text" name="sapoUpdae" id="sdate" readonly="readonly">
		</div>
		<div class="inputContainer">
				<label class="label" for="name"> 종료일  : </label>
				<input type="text" name="sapoUpdaeEnd" id="edate" readonly="readonly">
		</div>
		<div class="inputContainer">
				<label class="label" for="name">내용 : </label>
				<textarea id="description" name="sapoCon" placeholder="내용을 작성하세요" required></textarea>
		</div>
		<div class="inputContainer">
				<label class="label" for="name">링크 : </label>
				<input type="text" id="name" name="sapoLink" placeholder="링크 형식에 맞게 입력해주세요   ex)www.naver.com" required>
		</div>
		<div class="inputContainer">
				<label class="label" for="file">첨부파일 : </label>
				<input type="file" name="atchFile" multiple="multiple">
		</div>
		
		<div class="submitContainer">
				<input type="submit" value="게시물등록" style="color:#fff; border-color:#6c757d; background-color:#6c757d; border-radius: 0.75rem; ">
		</div>
	
	</form>
   </main>	
</body>

<script type="text/javascript">
$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});

$(function() {
    $('#sdate').datepicker();
    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#edate").datepicker( "option", "minDate", selectedDate );
    });

    $('#edate').datepicker();
    $('#edate').datepicker("option", "minDate", $("#sdate").val());
    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#sdate").datepicker( "option", "maxDate", selectedDate );
    });
});
</script>
</html>