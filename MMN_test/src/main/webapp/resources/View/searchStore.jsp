<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Controller.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String query = request.getParameter("query");
	searchResult sr = new searchResult(query);

	System.out.println(query);
	
	for(int i=0;i<sr.getStoreInfo().size();i++){
		out.println(sr.getStoreInfo().get(i).getStoreName());
		
		System.out.println(sr.getStoreInfo().get(i).getStoreName());
	}
%>