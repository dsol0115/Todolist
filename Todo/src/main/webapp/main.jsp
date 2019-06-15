<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
	String TodoResult[][] = (String[][])request.getAttribute("TodoResult");
	int todocount=(int)request.getAttribute("todocount");
	String DoingResult[][] = (String[][])request.getAttribute("DoingResult");
	int doingcount=(int)request.getAttribute("doingcount");
	String DoneResult[][] = (String[][])request.getAttribute("DoneResult");
	int donecount=(int)request.getAttribute("donecount");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="main.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="./main.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- ----망할 아래 a태그 안됨 -->
<h1>나의 해야할 일들 </h1>
<div class="addnewbtn"><a href="~/Todo/src/main/java/kr/or/connect/todo/api/TodoFormServlet.java">새로운 TODO 등록</a></div>
<div class="wrapper">

<div class="todo">
	<div class="title">TODO</div>
		<div class="titlelist">
			<%
				for(int i=0; i<todocount; i++){
			%>
			<div class="todo<%=i %>"> 
				<%for(int j=0; j<6;j++) {
				%>	
				<%=TodoResult[i][j] %>
				<br>
				<% 
					}
				%>
			</div>
			<%
			}
			%>
		</div>
</div>
<div class="doing">
	<div class="title">DOING</div>
	<div class="titlelist">
			<%
				for(int i=0; i<doingcount; i++){
			%>
			<div class="doing<%=i %>"> 
				<%for(int j=0; j<6;j++) {
				%>	
				<%=DoingResult[i][j] %>
				<br>
				<% 
					}
				%>
			</div>
			<%
			}
			%>
		</div>
</div>
<div class="done">
	<div class="title">DONE</div>
	<div class="titlelist">
			<%
				for(int i=0; i<donecount; i++){
			%>
			<div class="done<%=i %>"> 
				<%for(int j=0; j<6;j++) {
				%>	
				<%=DoneResult[i][j] %>
				<br>
				<% 
					}
				%>
			</div>
			<%
			}
			%>
		</div>
</div>

</div>

</body>
</html>