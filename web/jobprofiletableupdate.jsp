<%@page import="java.util.Date"%>
<%@page import="com.hp.JobProfile"%>
<%@page import="com.hp.HibernateUtil"%>
<%@page import="org.hibernate.Session" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import=" com.opensymphony.xwork2.ActionContext"%>
 <% HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        String  id1=request.getParameter("id");
 %>
<s:form action="jobprofiletableupdate" method="post">
   
 <% out.print(" <input hidden=true name=username value="+id1+">"); %>
    <s:textfield name="jobCode" label="JobCode"/>
     <s:textfield name="jobTitle" label="JobTitle"/>
    
    <s:textfield name="jobReq" label="EXPERIENCE IN YEARS"/>
     <s:textfield name="jobLocation" label="jobLocation"/>
    
    <s:textfield name="skillSet" label="SkillSet"/>
    
    
    <s:textfield name="postDate" label="Postdate" />
    
    <s:textfield name="expiryDate" label="Expirydate"/>
    
    <s:textfield name="contactInfo" label="ContactInfo"/>
    
    <s:submit value="Insert"/>
</s:form>
 <script>
     <adsbygoogle=window.adsbygoogle || []).push({});
 </script>
<%--<form acton="jj" method="post">
  <%
  String  id1=request.getParameter("id");
  Session s=HibernateUtil.getSessionFactory().openSession();
  JobProfile j=(JobProfile)s.get(JobProfile.class,id1);
   try{
       Date d=new Date(request.getParameter("expiryDate")); 
       Date d1=new Date(request.getParameter("postDate"));  
      Integer i=new Integer(request.getParameter("jobCode"));
    
       j.setContactInfo(request.getParameter("contactInfo"))
               ;j.setExpiryDate(d)
                       ;j.setJobCode(i);
                               ;j.setJobLocation(request.getParameter("jobLocation"));
       j.setJobReq(request.getParameter("jobReq"));j.setJobTitle(request.getParameter("jobTitle"));j.setPostDate(d1);j.setSkillSet(request.getParameter("skillSet"));
       
       s.update(j);
        s.save(j);
        s.beginTransaction().commit();}
        
      catch(Exception e){
          
      }
       
  
  
  %>  
</form>--%>