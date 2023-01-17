<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.KadaiAccount" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			String mail = (String)session.getAttribute("delet_data");
	%>
		<p style="color:red">削除に失敗しました。</p>
		<h1>会員削除</h1>
		<form action="KadaiConfirmDelet01Servlet" method="post">
		メール：<input type="email" name="mail" value="<%=mail%>"><br>
			<input type="submit" value="削除">
		</form>
	<%
		} else {
	%>
	<h1>会員削除</h1>
	<form action="KadaiConfirmDelet01Servlet" method="post">
		メール：<input type="email" name="mail"><br>
		<input type="submit" value="削除">
	</form>
	<%
		}
	%>
</body>
</html>