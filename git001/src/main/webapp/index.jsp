<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<h1>helloworld</h1>
<h2>helloworld</h2>
<h2>helloworld</h2>
<h3>helloworld</h3>
<%=request.getRemoteAddr()%>
<%
    out.println(request.getRemoteAddr()+"..--");
    System.out.println(request.getRemoteAddr()+"..--");
%>
<% int day=2;%>
<% if(day==1){%>
<h1>今天星期一</h1>
<%}else {%>
<h2>今天不是周一</h2>
<%
    };
%>
<%
    Calendar calendar = new GregorianCalendar();
    calendar.get(Calendar.HOUR);
%>
<%
    String str = URLEncoder.encode(request.getParameter("name"), "utf-8");
    Cookie name = new Cookie("name", str);
    Cookie url = new Cookie("url", request.getParameter("url"));
    name.setMaxAge(24 * 60 * 60);
    url.setMaxAge(24 * 60 * 60);
    response.addCookie(name);
    response.addCookie(url);
    %>
<ul>
    <li>
        name:
        <%= request.getParameter("name")%>
    </li>
    <li>
        url:
        <%= request.getParameter("url")%>
    </li>
</ul>
</body>
</html>