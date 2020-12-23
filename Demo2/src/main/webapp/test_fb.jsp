<%@page import="java.net.URL"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.demo2.webmvc.model.UserAccount"%>
<%@page import="com.restfb.types.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
<head>
<title>index</title>
</head>
<body>
  <h1>Index</h1>
  <%
    String id = request.getAttribute("id").toString();
    String name = request.getAttribute("name").toString();
                //byte[] fileContent = IOUtils.toByteArray(new URL("http://graph.facebook.com/id/picture?type=large"));
                String s = "http://graph.facebook.com/id/picture?type=large";
    byte value = Byte.valueOf(s);
    //String picture = request.getAttribute("picture").toString();
    //String birth = request.getAttribute("birth").toString();
    out.print("Id: " + id);
    out.print("<br/>Name: " + name);
    out.print("<br/>Name: " + value);
    //out.print("<br/>Piture: " + picture);
    //out.print("<br/>Birth: " + birth);
    
    //out.print("<br/>Name: " + us.getPicture().getUrl());
  %>
</body>
<image src="http://graph.facebook.com/${id}/picture?type=large"></image>
</html>