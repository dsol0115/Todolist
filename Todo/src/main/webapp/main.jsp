<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
	String TodoResult = (String)request.getAttribute("TodoResult");
	int todocount=(int)request.getAttribute("todocount");
	String DoingResult = (String)request.getAttribute("DoingResult");
	int doingcount=(int)request.getAttribute("doingcount");
	String DoneResult = (String)request.getAttribute("DoneResult");
	int donecount=(int)request.getAttribute("donecount");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="./main.js"></script>

<title>Insert title here</title>
</head>
<body>

<h1>나의 해야할 일들 </h1>
<div class="addnewbtn">새로운 TODO 등록</div>
<div class="wrapper">

<div class="todo">
	<div class="title">TODO</div>
		<div class="titlelist">
			<%
				for(int i=1; i<=todocount; i++){
			%>
			<div class="todo<%=i %>"> 
				<%=TodoResult %>
			</div>
			<%
			}
			%>
		</div>
</div>
<div class="doing">
	<div class="title">DOING</div>
	<%=DoingResult %>
</div>
<div class="done">
	<div class="title">DONE</div>
	<%=DoneResult %>
</div>

</div>

</body>
</html>