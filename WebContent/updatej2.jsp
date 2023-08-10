
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
	<form action="usave.jsp" method="post">
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr><th align="left">Cid</th>
	<td><input type='hidden'  value='<%=Cid%>' name='Cid'><%=Cid%></td></tr>
	<tr><th align="left">FirstName</th>
	<td><input type='text'  value='<%=rst.getString(2)%>' name='firstname' class='tb'></td></tr>
	<tr><th align="left">LastName</th>
	<td><input type='text'  value='<%=rst.getString(3)%>' name='lastname'class='tb'></td></tr>
	<tr><th align="left">City</th>
	<td><input type='text'  value='<%=rst.getString(4)%>' name='city'class='tb'></td></tr>
	<tr><th  align="left">PhoneNo</th>
	<td><input type='text'  value='<%=rst.getString(5)%>' name='phone'class='tb'></td></tr>
	<tr><th align="left">Email</th>
	<td><input type='text'  value='<%=rst.getString(6)%>' name='email'class='tb'></td></tr>
	<tr>
<td colspan="2" align="right">
<button class='bt2'>Update record</button>
</td></tr>
	</table>
	</form>
	<%
}
 else{
       %>
      <jsp:include page="updateh.jsp"/>
      <div class='dv'> 
       <label class='lah' style='color:red'>Record id<%=Cid %> not found </label>
       </div>
       <%
 }

%>

</body>
</html>