<%-- 
    Document   : empaction
    Created on : 04-Sep-2016, 00:10:52
    Author     : Shivam
--%>
<%@page import="com.hp.EmployeeContact"%>
<%@page import="com.hp.Photo"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.hp.HibernateUtil"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
           HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String  id1=request1.getParameter("email");
      
          Session s=HibernateUtil.getSessionFactory().openSession();

EmployeeContact jdb=(EmployeeContact)s.get(EmployeeContact.class,id1);
            
            
            
           %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    </head>
    <body>
        <sb:head/>
          <p>    <a href="logout"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> logout
                                </button></a>
                        </p>  

                        <h1><font style="color: white">  Welcome <%out.print(jdb.getEmpName());%></font></h1>
        <br><br>
        <h2><font style="color: white">Manage your recruitment</font></h2>
       <p>
                            <a href="postJobs"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Post Jobs
                                </button></a>
                        </p>  
                        <p>    <a href="ViewOrDeleteJobs"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> View,Update And Delete Jobs
                                </button></a>
                        </p>  
                          <p>    <a href="infojobseekeremp"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Jobseekers Info
                                </button></a>
                        </p>  
        
    </body>
</html>
