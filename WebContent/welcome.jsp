<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!"; %>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3"><%= greeting %></h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3><%= tagline %></h3>
			<script>
				setTimeout('location.reload()',3000);
			</script>
			<%--
			# 다른 방법1: <% %> 안에 setIntHeader("Refresh",3);
			# 다른방법2:
			<form>
			<input type="button" value="페이지 새로 고침" onClick="window.location.reload()">
			</form>
			# 다른방법3:
			<script>
			setTimeout('location.reload(),3000);
			</script> --%>
			<%
				
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour % 12 == 0){
					am_pm = "PM";
				}else {
					am_pm = "AM";
					hour = hour - 12;
				}
				String CT = hour + ":" +minute+":"+second+" "+am_pm;
				out.println("현재 접속 시각: "+CT+"\n");
			%>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>