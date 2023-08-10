<%@ include file="navbar.jsp"%>
<html>
<body>
<form action="save.jsp" method="post">
<table class='ta'>
<tr>
<td class='pd'>Enter patient ID<span>*</span></td>
<td ><input type='text' name='cid' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter First Name<span>*</span></td>
<td ><input type='text' name='name' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter Last Name<span>*</span></td>
<td ><input type='text' name='lastname' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient city<span>*</span></td>
<td ><input type='text' name='city' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient phoneNo.<span>*</span></td>
<td ><input type='text' name='phoneNo' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient Email<span>*</span></td>
<td ><input type='text' name='Email' class='tb' required></td>
<tr>
<tr>
<td colspan="2" align="right">
<button class='bt'>save record</button>
</table>
</form>
</body>
</html>