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
<h1>���� ���</h1>
<div class="titlep">
	<h3>� ���ΰ���?</h3>
	<INPUT TYPE="text" id="gettitle" NAME="title" SIZE="50" maxlength=24 value="swift �����ϱ�(24�ڱ���)">
</div>
<div class="namep">
	<h3>���� �����ΰ���?</h3>
	<INPUT TYPE="text" id="getname" NAME="name" SIZE="30" maxlength=10 value="ȫ�浿">
</div>
<div class="sequencep">
	<h3>�켱������ �����ϼ���</h3>
	<input type="radio" id="gets1" name="sequence" >
	1����
	<input type="radio" id="gets2" name="sequence" >
	2����
	<input type="radio" id="gets3" name="sequence" >
	3����
</div>
<div class="prevbtn"> <a href="<%=path%>/todo">< ���� </a></div>
<div class="submit">����</a></div>
<div class="erase">���������</div>
</body>
<script type="text/javascript" src="./todoform.js"></script>
</html>