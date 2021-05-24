<%@page import="com.service.AdminServiceImple"%>
<%@page import="com.service.AdminService"%>
<jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>

<%
	AdminService adminService=new AdminServiceImple();
	System.out.println(admin.toString());
	boolean b=adminService.login(admin);
	
if(b){
	response.sendRedirect("AdminHome.jsp");
} else {
	response.sendRedirect("AdminLogin.jsp?msg=Wrong Credentials");
}
%>
