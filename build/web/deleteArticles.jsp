<%-- 
    Document   : deleteArticles
    Created on : 05-Sep-2016, 22:37:34
    Author     : Shivam
--%>

<%@page import="com.hp.AdminArticles"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hp.HibernateUtil"%>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<% 
    Integer id1=new Integer(request.getParameter("id"));
    Session s=HibernateUtil.getSessionFactory().openSession();
    AdminArticles ad=(AdminArticles)s.get(AdminArticles.class,id1);
    s.delete(ad);
    s.beginTransaction().commit();
    

%>