<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.List"%>
<%@page import="com.hp.JobProfile"%>
<%@page import="com.hp.JobSeeker"%>
<%@page import="com.hp.HibernateUtil"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@page import="org.hibernate.Session" %>
<%@page import= "javax.servlet.http.HttpServletRequest" %> 
<%@page import= "javax.servlet.http.HttpSession" %> 
<%@page import="org.apache.struts2.ServletActionContext" %>
<%@page import="org.hibernate.criterion.Restrictions" %>



<html><body>
<%--  
    String user11=(String)session.getAttribute("user1"); 
    
    Session s=HibernateUtil.getSessionFactory().openSession();
    JobSeeker js=(JobSeeker)s.get(JobSeeker.class,new Integer(user11));
 List<JobProfile>  jl=s.createCriteria(JobProfile.class).add(Restrictions.eq("skillSet",js.getSkill())).list(); --%>
   <table class="table table-inverse"> 
            <sb:head/>
      
        <% HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String  id1=request1.getParameter("id");
       out.print(id1); 
          Session s=HibernateUtil.getSessionFactory().openSession();
Integer id2=new Integer(id1);
JobSeeker jdb=(JobSeeker)s.get(JobSeeker.class,id2);
//List<JobProfile> emps1=s.createCriteria(JobProfile.class).add(Restrictions.eq("jobTitle",jdb.getSkill())).list();

 %>
   <tr>
       <td height="23" colspan="3" valign="top" bgcolor="#0099FF"><div align="center"><font style="font-style: oblique;font-family: fantasy;font-size: 40;color: #F8F9F9">JOB PROFILES FOR...</font><font style="font-style: oblique;font-family: fantasy;font-size: 20;color: #F8F9F9"><%out.print(jdb.getName());%></font></div></td>
        </tr></table>
 <s:iterator value="emps1">
     
        <table style="border-radius: 5px ; color: #F8F9F9 ; background-color: #92999f"     class="table  table-inverse table-stripped" width=1000 border=2  bgcolor=pink cellpadding=0 cellspacing=0 > <thead class="table-inverse"><tr><td><big><strong>RECRUITER</big></strong></td><td><big><strong>jobcode</big></strong>
</td><td><big>
    <strong>JOB_TITLE</big></strong></td><td><big><strong>Experience</big></strong><td><big><strong>JOB_LOCATION</big></strong></td>
<td><big><strong>SKILL_SET</big></strong></td><td><big><strong>POST_DATE</big></strong></td><td><big><strong>EXPIRY_DATE</big></strong></td>
            <td><big><strong>CONTACT_INFORMATION</big></strong></td></tr></thead>


<tr><td><big><strong><s:property value="username"></s:property></big></strong></td><td><big><strong><s:property value="jobCode"/></big></strong>
</td><td><big>
    <strong><s:property value="jobTitle"/></big></strong></td><td><big><strong><s:property value="jobReq"/></big></strong><td><big><strong><s:property value="jobLocation"/></big></strong></td>
<td><big><strong><s:property value="fskill"/></big></strong></td><td><big><strong><s:property value="postDate"/>
</big></strong></td><td><big><strong><s:property value="expiryDate"/></big></strong></td>
<td><big><strong><s:property value="contactInfo"/></big></strong></td> 
<td> <s:url id="deleteUrl" action="sendmail">
        <s:param name="id" value="%{loginid}"></s:param>   
         </s:url>
    <s:a href="%{deleteUrl}"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Apply
        </button></s:a></td></tr>
        <br><br><br></tr></table>
</s:iterator>

        
    </body></html>