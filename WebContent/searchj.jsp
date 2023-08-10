
<html>
<body>
<%
String Cid=request.getParameter("cid");
PreparedStatement ps = (PreparedStatement) application.getAttribute("spt");
ps.setString(1,Cid);
ResultSet rst=ps.executeQuery();
if(rst.next()){
	%>
	<%@ include file="navbar.jsp"%>
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr><th align="left">Cid</th><td><%=Cid %></td></tr>
	<tr><th align="left">FirstName</th><td><%=rst.getString(2) %></td></tr>
	<tr><th align="left">LastName</th><td><%=rst.getString(3) %></td></tr>
	<tr><th align="left">City</th><td><%=rst.getString(4) %></td></tr>
	<tr><th  align="left">PhoneNo</th><td><%=rst.getString(5) %></td></tr>
	<tr><th align="left">Email</th><td><%=rst.getString(6) %></td></tr>
	</table>
	<%
}
 else{
      %>
      <jsp:include page="searchh.jsp"/>
      <div class='dv'> 
       <label class='lah' style='color:red'>Record id<%=Cid %> not found </label>
       </div>
       <%
 }

%>

</body>
</html>