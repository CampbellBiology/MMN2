<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Controller.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String query = request.getParameter("query");
	searchResult sr = new searchResult(query);

	System.out.println(query);
	
	for(int i=0;i<sr.getStoreInfo().size();i++){
		out.println("<div class='tag'><a href=\"Store_0427.jsp?storeCode="+sr.getStoreInfo().get(i).getStoreCode()+"\">");
		out.println(sr.getStoreInfo().get(i).getStoreName());
		out.println("<br></a></div>");
	}
%>