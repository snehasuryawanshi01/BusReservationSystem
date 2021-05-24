<%@page import="com.service.UserServiceImple"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>


<%
	UserService userService=new UserServiceImple();
	boolean b=userService.login(user);
	if(b){
		
		response.sendRedirect("UserHome.jsp");
		System.out.println(user.toString());
	}else{
		
		response.sendRedirect("UserLoginForm.jsp?msg=Wrong Credentials");
	}
	
	
%>