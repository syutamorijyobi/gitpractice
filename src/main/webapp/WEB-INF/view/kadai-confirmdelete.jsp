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
	<p>下記の内容で削除します。よろしいですか？</p>
	<%
		String mail = (String)session.getAttribute("delet_data");
	%>
	メール：<%=mail %><br>
	<a href="KadaiDelet01Servlet">OK</a><br>
	<a href="KadaiDeletForm01Servlet">戻る</a>
</body>
</html>