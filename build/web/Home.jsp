<%-- 
    Document   : home
    Created on : 7 Jul, 2016, 1:31:02 PM
    Author     : shivam shukla
--%>
<%@page import="com.hp.Photo"%>
<%@page import="com.hp.JobSeeker"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hp.HibernateUtil"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

       <!-- <title>hello <%
           HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String  id1=request1.getParameter("user");
       out.print(id1); 
          Session s=HibernateUtil.getSessionFactory().openSession();
Integer id2=new Integer(id1);
JobSeeker kb=(JobSeeker)s.get(JobSeeker.class,id2);
Photo jdb=(Photo)s.get(Photo.class,id2);
            
            
            
            out.print(request.getParameter("user"));%></title>-->
    </head>
    <body>
        <%--h1><font color="WHITE" face="bold" size="5"><img src="<!--s:url action="showMyPic?id=%{user}"/>" height="100" width="100" /></font></h1--!>--%>
     <div class="w3-container" style=" padding-left: 1cm;">
    <img src="<s:url action="showMyPic?id=%{user}"/>" class="w3-circle" alt="Norway" height="100" width="100"/>
    <h4><b style="color: white"><%out.print(kb.getName());%></b></h4>
    </div>
  </div>
      
  <div id="myau" style=" padding-left: 1cm;">
          <a href="logoutjobseeker"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-off"></span>Logout
                                </button></a>
       
        
       
     
        <br><br>
       
       <p>
                            <a href="ViewJobs"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>ViewJobs
                                </button></a>
                        </p>  
                        <p>          <a href="showjobseeker"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>My Details
                                </button></a>
                        </p>  
                         <!-- <p>          <a href="updatejobseeker"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Update Info
                                </button></a>
                        </p>  its so deprecated update version 9 by shivam shukla --> 
              <s:url id="updateUrl" action="updatejobseeker">
        <s:param name="id" value="%{user}"></s:param>   
         </s:url>
    <s:a href="%{updateUrl}"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Update Info
                                </button></s:a>         
    </div>
    </body>
</html>

    </body>
</html>
