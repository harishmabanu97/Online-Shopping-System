<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));
String Name=request.getParameter("Name");
String Email_id=request.getParameter("Email_id");
String Gender=request.getParameter("Gender");
String Mobile=request.getParameter("Mobile");
String Address=request.getParameter("Address");
String Date=request.getParameter("Date");
	int editProduct=DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set name='"+Name+"',email='"+Email_id+"',gender='"+Gender+"',phone='"+Mobile+"',address='"+Address+"',added_date='"+Date+"'  where id='"+id+"' ");
	if(editProduct>0){
		response.sendRedirect("admin-view-customers.jsp");
	}else{
		response.sendRedirect("admin-view-customers.jsp");
	}
%>