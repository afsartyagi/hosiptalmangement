<%@ include file="navbar.jsp"%>
<html>
<body>
<%
    PreparedStatement ps = null;
    try {
        ps = (PreparedStatement) application.getAttribute("insert");
        ps.setString(1, request.getParameter("cid"));
        ps.setString(2, request.getParameter("name"));
        ps.setString(3, request.getParameter("lastname"));
        ps.setString(4, request.getParameter("city"));
        ps.setString(5, request.getParameter("phoneNo"));
        ps.setString(6, request.getParameter("Email"));
        ps.executeUpdate();
     
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<div class='dv'>
    <label class='lah' style='color:green; font-family:elephant'>Record has been saved</label>
</div>
</body>
</html>
