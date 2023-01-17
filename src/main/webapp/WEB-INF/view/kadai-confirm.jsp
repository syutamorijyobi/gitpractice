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
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
		KadaiAccount account = (KadaiAccount)session.getAttribute("input_data");
	%>
	名前：<%=account.getName() %><br>
	年齢：<%=account.getAge() %><br>
	性別：<%if(account.getJender()==0){
		%>男<%
	}else{%>女<%
		} %><br>
	電話番号：<%=account.getTel() %><br>
	メール：<%=account.getMail() %><br>
	パスワード：********<br>
	<a href="KadaiExecute01Servlet">OK</a><br>
	<a href="KadaiForm01Servlet">戻る</a>
</body>
</html>