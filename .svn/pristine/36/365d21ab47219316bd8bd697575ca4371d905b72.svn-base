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
</head>
<body>
	<form action="insert.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>할인게시물 코드 : </td>
				<td><input type="text" name="sapoCode" value="" required></td>
			</tr>
			<tr>
				<td>브랜드명 : </td>
				<td><input type="text" name="sapoBrnm" value="" required></td>
			</tr>
			<tr>
				<td>카테고리 : </td>
				<td>
					
				<td><input type="text" name="sapoCarte" value="" required></td>
				</td>
			</tr>
			<tr>
				<td>할인기간 : </td>
				<td>시작일 <input type="text" name="sapoUpdae" id="sdate" readonly="readonly"> ~ 종료일 <input type="text" name="sapoUpdaeEnd" id="edate" readonly="readonly">
			</tr>
			<tr>
				<td>링크 : </td>
				<td><textarea rows="3" cols="20" name="sapoLink" required></textarea></td>
			</tr>
			<tr>
				<td>첨부파일1 : </td>
				<td><input type="file" name="atchFile" multiple="multiple"></td>
			</tr>
			
			
		</table>
		<input type="submit" value="게시물등록">
		
		
	</form>
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