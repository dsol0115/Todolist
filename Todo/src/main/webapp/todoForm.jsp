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

<h1>할일 등록</h1>
<h3>어떤 일인가요?</h3>
<INPUT TYPE="text" NAME="title" SIZE="50" maxlength=24>
<br><br>
<h3>누가 할일인가요?</h3>
<INPUT TYPE="text" NAME="name" SIZE="30" maxlength=10>
<br><br>
<h3>우선순위를 선택하세요</h3>
<input type="radio" name="sequence" value="1순위">
1순위
<input type="radio" name="sequence" value="2순위">
2순위
<input type="radio" name="sequence" value="3순위">
3순위
</body>
</html>