<%-- 
    Document   : home
    Created on : 7 Jul, 2016, 1:31:02 PM
    Author     : shivam_shukla
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>

    <s:head theme="simple"/>

    <sb:head/>
    <style>
    #button {
     line-height: 25px;
     width: 100px;
     font-size: 10pt;
     font-family: tahoma;
     margin-top: 1px;
     margin-right: 2px;
     position:absolute;
     top:125;
     right:100;
 }
    </style>  
        <title>hello <%request.getParameter("email");%></title>
    
     <h1><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-user"></span>Hi... ${requestScope.email}
                                </button></h1>
          <a href="logoutadmin"><button type="button" id="button" class="btn btn-info">
      <span class="glyphicon glyphicon-off"></span>Logout
                                </button></a>
        
        
       
     
        <br><br>
        <h2>Managing portal</h2>
       <p>
                            <a href="Articles"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Articles
                                </button></a>
                        </p>  
                        <p>          <a href="Jobseeker"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Jobseeker
                                </button></a>
                        </p>  
                          <p>          <a href="Employers"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Employers
                                </button></a>
                        </p>  
                          <p>          <a href="ViewJobs"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Jobs
                                </button></a>
                        </p>  
                          <p>          <a href="Jobseeker"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Faqs
                                </button></a>
                        </p>  
        
    

