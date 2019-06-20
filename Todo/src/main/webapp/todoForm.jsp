<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="todoForm.css" type="text/css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<% String path = request.getContextPath(); %>
<h1>할일 등록</h1>
<form id="frm" method="post" action="<%=path%>/todoadd" onsubmit="return submitcheck();">
<div class="titlep">
	<h3>어떤 일인가요?</h3>
	<INPUT TYPE="text" id="gettitle" NAME="title" SIZE="50" maxlength=24 value="swift 공부하기(24자까지)">
</div>
<div class="namep">
	<h3>누가 할일인가요?</h3>
	<INPUT TYPE="text" id="getname" NAME="name" SIZE="30" maxlength=10 value="홍길동">
</div>
<div class="sequencep">
	<h3>우선순위를 선택하세요</h3>
	
	<input type="radio" id="gets" name="sequence" value=1>
	1순위
	<input type="radio" id="gets" name="sequence" value=2>
	2순위
	<input type="radio" id="gets" name="sequence" value=3>
	3순위
</div>

<div class="prevbtn"> <a href="<%=path%>/todo">< 이전 </a></div>
<input type="submit" id="submit" value="submit">
<div id="erase">내용지우기</div>
</form>
<script type="text/javascript" src="./todoform.js"></script>
</body>

</html>