<%@page import="dto.KadaiAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<tr>
			<th class="table">id</th>
			<th>名前</th>
			<th>年齢</th>
			<th>性別</th>
			<th>電話番号</th>
			<th>メール</th>
		</tr>
	<%
	request.setCharacterEncoding("UTF-8");
	List<KadaiAccount> list = (ArrayList<KadaiAccount>)request.getAttribute("listall");
	for(KadaiAccount s : list) {
	%>
		<tr>
			<td class="table"><%=s.getId() %></td>
			<td><%=s.getName()%></td>
			<td><%=s.getAge() %></td>
			<td><%if(s.getJender()==0){
				%>男<%
			}else{
				%>女<%
				}%>
			</td>
			<td><%=s.getTel() %></td>
			<td><%=s.getMail() %></td>
		</tr>
	<%} %>
	</table>
</body>
</html>