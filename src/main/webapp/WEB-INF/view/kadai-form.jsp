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
			KadaiAccount ac = (KadaiAccount)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h1>新規会員登録</h1>
		<form action="KadaiComfirm01Servlet" method="post">
			名前：<input type="text" name="name" value="<%=ac.getName()%>"><br>
			年齢：<input type="number" name="age"value="<%=ac.getAge() %>"><br>
			性別：<input type="radio" name="jender" value="0">男<input type="radio"name="jender"value="1">女<br>
			電話番号：<input type="text"name="tel"value="<%=ac.getTel() %>"><br>
			メール：<input type="email" name="mail" value="<%=ac.getMail()%>"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h1>新規会員登録</h1>
	<form action="KadaiComfirm01Servlet" method="post">
		名前：<input type="text" name="name"><br>
		年齢：<input type="number" name="age"><br>
		性別：<input type="radio" name="jender" value="0">男<input type="radio"name="jender"value="1">女<br>
		電話番号：<input type="text"name="tel"><br>
		メール：<input type="email" name="mail"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>