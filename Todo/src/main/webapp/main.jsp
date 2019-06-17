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

<h1>나의 해야할 일들 </h1>
<% String path = request.getContextPath(); %>
<div class="addnewbtn"><a href="<%=path%>/todoform">새로운 TODO 등록</a></div>
<div class="wrapper">

<div class="todo">
	<div class="title">TODO</div>
		<div class="titlelist">
			<%
				for(int i=0; i<todocount; i++){
			%>
			<div class="cblock"> 
			
				<div class="blwrapper">
					<div class="bltitle">
					<%= TodoResult[i][4] %> 
					</div>
					<div class="blcontent">
					등록날짜: <% String tdate=TodoResult[i][2].substring(0, 10); 
					%> <%=tdate %>, <%=TodoResult[i][1]%>, 우선순위<%=TodoResult[i][3]%>
					</div>
				</div>	
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
			<div class="cblock"> 
			
				<div class="blwrapper">
					<div class="bltitle">
					<%= TodoResult[i][4] %> 
					</div>
					<div class="blcontent">
					등록날짜: <% String tdate=TodoResult[i][2].substring(0, 10); 
					%> <%=tdate %>, <%=TodoResult[i][1]%>, 우선순위<%=TodoResult[i][3]%>
					</div>
				</div>	
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