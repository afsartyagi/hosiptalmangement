  <%@ page import="java.sql.*" %>
<html>
<body>
<%
String Cid=request.getParameter("cid");
PreparedStatement ps = (PreparedStatement) application.getAttribute("upt");
ps.setString(1,Cid);
ResultSet rst=ps.executeQuery();
if(rst.next()){
	%>
	<%@ include file="navbar.jsp"%>
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr>
	<th align="left">pCid</th>
	<td><input type='hidden'  value='<%=Cid%>' name='Cid'></td></tr>
	<tr>
	<th align="left">FirstName</th>
	<td><input type='text'  value='<%=rst.getString(2) %>' name='Firstname'></td></tr>
	<tr>
	<th align="left">LastName</th>
	<td><input type='text'  value='<%=rst.getString(3) %>' name='Lastname'></td></tr>
	<tr>
	<th align="left">City</th>
	<td><input type='text'  value='<%=rst.getString(4) %>' name='City'></td></tr>
	<tr>
	<th  align="left">PhoneNo</th>
	<td><input type='text'  value='<%=rst.getString(5) %>' name='PhoneNo'></td></tr>
	<tr>
	<th align="left">Email</th>
	<td><input type='text'  value='<%=rst.getString(6) %>' name='Email'></td></tr>
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