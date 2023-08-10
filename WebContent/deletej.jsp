<%@ include file="navbar.jsp"%>
<html>
<body>
<%
String Cid=request.getParameter("cid");
PreparedStatement ps = (PreparedStatement) application.getAttribute("dpt");
ps.setString(1, Cid);
int rst=ps.executeUpdate();
if(rst>=1){
	%>
	<label class='la' style='color:red'>Record of id<%=Cid %> has been deleted</label>
	<%
}
 else{
      %>   <label class='la' style='color:red'>Record  of id<%=Cid %> not found </label><%
 }

%>

</body>
</html>