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

<title>Insert title here</title>
</head>
<body>
<% String path = request.getContextPath(); %>


<form id="todofrm" name="todofrm" method="post" action="<%=path%>/todotype" >
	
<h1>나의 해야할 일들 </h1>
<div class="addnewbtn"><a href="<%=path%>/todoform">새로운 TODO 등록</a></div>
<div class="wrapper">
<input type="hidden" id="htype" name="h_type" value="">
<input type="hidden" id="hid" name="h_id" value="">

<div class="todo">
	<div class="title">TODO</div>
		<div class="titlelist">
			<%
				for(int i=todocount-1; i>=0; i--){
			%>
			<div class="cblock"> 
			
				<div class="blwrapper">
					<div class="bltitle">
					<%= TodoResult[i][4] %> 
					</div>
					<div class="blcontent">
					등록날짜: <% String tdate=TodoResult[i][2].substring(0, 10); 
					%> <%=tdate %>, <%=TodoResult[i][1]%>, 우선순위 <%=TodoResult[i][3]%>
					<div class="btn"> 
					 <input type="button" value="→" onclick="clickEvent('doing',<%=TodoResult[i][0]%>);">
					</div>
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
				for(int i=doingcount-1; i>=0; i--){
			%>
			<div class="cblock"> 
			
				<div class="blwrapper">
					<div class="bltitle">
					<%= DoingResult[i][4] %> 
					</div>
					<div class="blcontent">
					등록날짜: <% String tdate2=DoingResult[i][2].substring(0, 10); 
					%> <%=tdate2 %>, <%=DoingResult[i][1]%>, 우선순위 <%=DoingResult[i][3]%>
					<div class="btn">
					 <input type="button"  value="→" onclick= "clickEvent('done',<%=DoingResult[i][0]%>); ">
					</div>
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
				for(int i=donecount-1; i>=0; i--){
			%>
			<div class="cblock"> 
			
				<div class="blwrapper">
					<div class="bltitle">
					<%= DoneResult[i][4] %> 
					</div>
					<div class="blcontent">
					등록날짜: <% String tdate3=DoneResult[i][2].substring(0, 10); 
					%> <%=tdate3 %>, <%=DoneResult[i][1]%>, 우선순위 <%=DoneResult[i][3]%>
					</div>
				</div>	
			</div>
			<%
			}
			%>
		</div>
</div>

</div>
 </form>

<script type="text/javascript">

function clickEvent(type, id){
	document.getElementById("htype").setAttribute("value", type);
	document.getElementById("hid").setAttribute("value", id);
	
	if(document.getElementById("htype").value==type && document.getElementById("hid").value==id){
		console.log(document.getElementById("htype").value);
		console.log(document.getElementById("hid").value);
		document.getElementById("todofrm").submit();
		
	}
	
}




</script>
</body>

</html>