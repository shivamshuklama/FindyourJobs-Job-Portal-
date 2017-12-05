<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags"  %>
<html><head></head>
     <style>
       #form{
   position:relative;
   top:50%;
   left:20%;
   width:550px;
   
} 
        
    </style>
    <body>
       
            <s:head/>
            <s:form action="empldetailinputact" method="post" id="form" >
     <pre style="float: none ;height:30%" >
                
  EmailId:                  <input type="email" name="emailId"   placeholder="Email Id"/> 
  PASSWORD:                  <input type="password" name="password"   placeholder="Password" pattern=".{6,}" title="Six or more characters"/>  
  EMPLOYEE NAME:            <input type="text" name="empName" /> 
  EMPLOYEE DESIGNATION:     <input type="text" name="empDesg" />  
  EMPLOYEE NUMBER:          <input type="text" name="empNumber" maxlength="4" pattern="\d{4}" />
  EMPLOYEE COMPANY NAME:    <input type="text" name="empCmpName"/> 
  EMPLOYEE COMPANY ADDRESS: <input type="text" name="empCompAddress"/>
  EMPLOYEE COMPANY STATE:   <input type="text" name="empCompState"/>
  EMPLOYEE COMPANY CITY:    <input type="text" name="empCompCity"/> 
  EMPLOYEE COMPANY PROFILE: <input type="text" name="empCompanyProfile"/> 
  EMPLOYEE COMPANY WEBSITE  <input type="text" name="empCompWebsite"/><br>
   <button type="submit" >Check And Submit</button>
    </pre>
</s:form>
    
    </body>
</html>