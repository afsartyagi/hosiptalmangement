<%@ include file="navbar.jsp"%>
<html>
<body>
<table border='1' class='tar'>
<tr style='background-color:Orange;color:white;'>
<th colspan='6'>Customer list</th>
</tr>
<tr >
<th align='left'>cid</th>
<th align='left'>firstname</th>
<th align='left'>lastname</th>
<th align='left'>city</th>
<th align='left'>phoneNo</th>
<th align='left'>Email</th>
</tr>
<%
Statement st=(Statement)application.getAttribute("st");
ResultSet rst=st.executeQuery("select * from jspn2");
while(rst.next())
{
	%>
	<tr class='tr'><td><%=rst.getString(1) %></td>
	<td class='td'><%=rst.getString(2) %></td>
	<td class='td'><%=rst.getString(3) %></td> 
	<td class='td'><%=rst.getString(4) %></td> 
	<td class='td'><%=rst.getString(5) %></td> 
	<td class='td'><%=rst.getString(6) %></td></tr>
	<% 

}
%>
</table>
</body>
</html>