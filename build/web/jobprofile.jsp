<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
    <style>
       #form{
   position:relative;
   top:50%;
   left:20%;
   width:250px;
   
} 
        
    </style>
    <body>
        <sb:head/>
<s:form action="jobprofileAct" method="post" id="form">
    <s:textfield name="email" label="Email"/>
    
    <s:textfield name="jobCode" label="JobCode"/>
     <s:textfield name="jobTitle" label="JobTitle"/>
    
    <s:textfield name="jobReq" label="EXPERIENCE REQUIRED"/>
     <s:textfield name="jobLocation" label="JobLocation"/>
    
    <s:textfield name="skillSet" label="SkillSet"/>
    
    
    <s:textfield name="postDate" label="PostDate" />
    
    <s:textfield name="expiryDate" label="ExpiryDate"/>
    
    <s:textfield name="contactInfo" label="ContactInfo"/>
    
    <s:submit value="Insert"/>
</s:form>
    </body>
</head>
</html>