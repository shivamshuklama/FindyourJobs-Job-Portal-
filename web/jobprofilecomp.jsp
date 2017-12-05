<%-- 
    Document   : jobprofilecomp
    Created on : 03-Sep-2016, 16:31:30
    Author     : Shivam
--%>
<%@page import="com.hp.EmployeeContact"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb"  uri="/struts-bootstrap-tags" %>
<%@page import="java.util.Date"%>
<%@page import="com.hp.JobProfile"%>
<%@page import="com.hp.HibernateUtil"%>
<%@page import="org.hibernate.Session" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import=" com.opensymphony.xwork2.ActionContext"%>
<% HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String  id1=request1.getParameter("id");
        Session s=HibernateUtil.getSessionFactory().openSession();
        JobProfile j=(JobProfile)s.get(JobProfile.class, id1);
         EmployeeContact e=(EmployeeContact)s.get(EmployeeContact.class,id1); %>
       <%--  <html>
             <head></head><body>
                 <table><tr>
                         <td><%out.print(j.getJobTitle());%></td><td><%out.print(j.getSkillSet());%></td></tr>
                     <tr><td>skillSet: <%out.print(j.getSkillSet());%></td></tr>
                 
                     <h1>COMPANY PROFILE</h1> 
                     <h2>  <%  out.print(e.getEmpCmpName()); %></h2>
                     <p style="font-size: 12;"> <% out.print(e.getEmpCompWebsite()); %></p>
      <p>  <% out.print(e.getEmpCompanyProfile()); %><p>
       <p>  <% out.print(j.getContactInfo()); %><p>
             </body>
        
       <h1>Job Description</h1>
       <table><tr><td>Job Title</td><td><% out.print(j.getJobTitle()); %></td></tr>
              <tr><td>Job Requirements</td><td><% out.print(j.getJobReq());    %></td></tr>
               <tr><td>Job Location</td><td><%  out.print(j.getJobLocation());              %></td></tr>
               <tr><td>Job KeySkills</td><td><%  out.print(j.getSkillSet());           %></td></tr>
               <tr><td>Job Post Date</td><td><% out.print(j.getPostDate());               %></td></tr>
               <tr><td>Job Last Date</td><td><%  out.print(j.getExpiryDate());            %></td></tr>
               <tr><td>Contact Details</td><td><% out.print(j.getContactInfo());                %></td></tr>
       
       </table>--%>


               
               <%@taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>


        <html><body style="float: top;margin-top: 0px;margin-bottom: 60px;">
        <sb:head/>
        <table  style="float: top;margin-top: 0px;margin-bottom: 60px;">   <tr style="float: top;margin-top: 0px;margin-bottom: 60px;"><td><a href=""><img src=""></a><a href=""><img src="aditya-120X45.gif"></a><a href=""><img src="airtel-120X45.gif"></a><a href=""><img src="allianz-2162016.gif"></a><a href=""><img src="amat-120x45-20june.gif"></a>
                    <a href=""><img src="aricent-120X45.gif"></a><a href=""><img src=""></a><a href=""><img src="atos-17082016.gif"></a><td></tr> </table>
        <table>
            <tr>  <td style="width:9%" ><a href=""><img src="bapco_120x45.gif"></a><br/><a href=""><img src="bartronics_120x45.gif"></a><br/>
                    <a href=""><img src="cog-120X45-242015.gif"></a><br/>
                    <a href=""><img src="allianz-2162016.gif"></a><br/><a href=""><img src="amat-120x45-20june.gif"></a><br/>
                    <a href=""><img src="aricent-120X45.gif"></a><br><a href=""><img src="atos-17082016.gif"></a><br>
                    <a href=""><img src="hexaware_120X45_1872016.gif"></a><br><img src=""></a><a href=""><img src="lnt-120X45.gif"></a><br></td>
                <sb:head/>
                <td width="100%" style="background-color: antiquewhite; style="font-size: 25"><pre><p style="font-size: 20"> 
                               <font style="font-style: oblique;font-family: fantasy;font-size: 40">  <%out.print(j.getJobTitle());%>-<%out.print(j.getUsername());%></font><br>
  <%--  SkillSet Required: <%out.print(j.getSkillSet());--%><br>
                 
                                     <font style="font-style: oblique;font-family: fantasy;font-size:25">    COMPANY PROFILE</font><br><br><br> 
    <%--  out.print(e.getEmpCmpName()); %>
    <% out.print(e.getEmpCompWebsite()); %>
    <% out.print(e.getEmpCompanyProfile()); %>
    <% out.print(j.getContactInfo()); --%>
                                  Send me Jobs like this | <a href="https://plus.google.com/114221220239526959487" target="_blank"><img src="download.jpg"></a> <a href="https://www.facebook.com/shukla29" target="_blank"><img src="f.jpg"></a>  <a href="https://twitter.com/shivamshuklama" target="_blank"><img src="t.jpg"></a> 
                                                            
       <img src="yt.jpg" style="height: 400;width: 100%">
Seeking a strong leader to lead engineering team of 4-8 people at HealthKart. 
HealthKart is a clear leader in fitness / nutrition and offers a full-stack technology solution for fitness enthusiasts, including online shopping, 
fitness counselling programs and community. 
HealthKart also has several fast growing online-first private brands in nutrition space. 
Head of Engineering would be responsible for driving engineering at HealthKart, including defining technology vision, selection of technology stack,
 team management, solution architecture etc.
 The exciting role would offer steep learning curve and next level leadership development, in an established consumer internet leader of India.

  <font style="font-style: oblique;font-family: fantasy;font-size: 35">Basic Qualifications</font>

- A Bachelor's degree in Computer Science or related technical discipline

- Experience communicating with both technical and business audiences

- Background in computer science basics (data structures, sorting/searching algorithms, order analysis)

- Experience with designing, building, and deploying scalable, highly available systems

- Fluency in Core Java & J2EE

  <font style="font-style: oblique;font-family: fantasy;font-size: 35">Preferred Qualifications</font>

- You have outstanding attention to detail, specification and a desire to find different ways to identify problem.

- Proficiency in Java / J2EE, a strong foundation in data structures and algorithms

- Prior experience in leading a team

- Well versed with the deployment and tuning of exposure in application servers

- Expertise in frameworks like Hibernate,Struts and spring

- Should be able to design database schemas and write fine-tuned queries and stored procedures

- Self-driven and willingness to work individually as well as lead teams at times per need

- Experience in designing for J2EE applications using UML and Design patterns

- Excellent verbal and written communication skills

- Experience- 5-8 Years


<b>Salary:</b> Not Disclosed by Recruiter
<b>Industry</b>:Internet / Ecommerce
<b>Functional Area</b>:IT Software - Application Programming , Maintenance
<b>Role Category:</b>Programming & Design
<b>Role:</b>Team Lead/Technical Lead


  <font style="font-style: oblique;font-family: fantasy;font-size: 40">Keyskills</font>
Core Java Hibernate J2Ee Spring Struts Design Patterns UML Data Structures Solution Architecture Stored Procedures
  <font style="font-style: oblique;font-family: fantasy;font-size: 35">Desired Candidate Profile</font>

  <font style="font-style: oblique;font-family: fantasy;font-size: 27">Education</font>

UG: Any Graduate - Any Specialization, B.Tech/B.E. - Any Specialization, Computers
PG:Any Postgraduate - Any Specialization, Post Graduation Not Required
Doctorate:Doctorate Not Required
 
  <%--COMPANY PROFILE<br><br><br> 
    <%  out.print(e.getEmpCmpName()); %><br><br>
    <% out.print(e.getEmpCompWebsite()); %><br>
    <% out.print(e.getEmpCompanyProfile()); %><br>
    <% out.print(j.getContactInfo()); %><br><br><br>--%>



            
        
                                 <font style="font-style: oblique;font-family: fantasy">Job Description</font><br><br><br>
               Job Title                          <% out.print(j.getJobTitle()); %>
               Experience                         <% out.print(j.getJobReq());    %> years
               Job Location                       <%  out.print(j.getJobLocation());              %>
               Job KeySkills                      <%  out.print(j.getFskill());           %>
               Job Post Date                      <% out.print(j.getPostDate());               %>
               Job Last Date                      <%  out.print(j.getExpiryDate());            %>
               Contact Details                    <% out.print(j.getContactInfo());                %></p> <pre></td>
        <td> 
           
            <pre> <a href="Home"><img src="job.png" style="width: 200px;height: 130px"></a><p style="color: #333; font-size: 15px;font-weight: normal">
   Connect To Recruiters 
    Directly
<form action="#"><p><button type="submit" class="btn btn-info" >
      <span class="glyphicon glyphicon-globe"></span> View Recruiters
    </button></form></p><br><p style="color: #333; font-size: 15px;font-weight: normal">
   FAQS</p>
<form action="faQs"><p><button type="submit" class="btn btn-info" >
      <span class="glyphicon glyphicon-globe"></span> FAQS
    </button><!--<input type="button" value="View Salaries"   style="color: blue; font-family: sans-serif;font-face:bold"/>--></form></pre>
            
        </td>




            </tr>
            
            
        </table>
            </body></html>
    
            
            
            
    