<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html><head></head><body>
    <%--    <s:bean name="com.hp.jobprofiletableoutputaction" var="user"/>--%>
    <sb:head/>
        
    <table class="table table-inverse"> 
            <sb:head/>
        <tr>
    <td height="23" colspan="3" valign="top" bgcolor="#0099FF"><div align="center">JOB_PROFILE</div></td>
        </tr></table> 
        <s:iterator value="emps">
        <table style="border-radius: 5px;color: #F8F9F9 ; background-color: #92999f;"class="table  table-inverse table-stripped" width=1000 border=2  bgcolor=pink cellpadding=0 cellspacing=0 > <thead class="table-inverse"><tr><td><big><strong>RECRUITER</big></strong></td><td>
    <strong><big>JOB_TITLE</big></strong></td><td><big><strong>Experience</big></strong><td><big><strong>JOB_LOCATION</big></strong></td>
<td><big><strong>SKILL_SET</big></strong></td><td><big><strong>POST_DATE</big></strong></td><td><big><strong>EXPIRY_DATE</big></strong></td>
            <td><big><strong>CONTACT_INFORMATION</big></strong></td> <td><big><strong>APPLY</big></strong></td></tr></thead></tr>
<tr><td><big><strong><s:property value="username"></s:property></big></strong></td>
<td><big>
    <strong><s:property value="jobTitle"/></big></strong></td><td><big><strong><s:property value="jobReq"/> years</big></strong><td><big><strong><s:property value="jobLocation"/></big></strong></td>
<td><big><strong><s:property value="fskill"/></big></strong></td><td><big><strong><s:property value="postDate"/>
</big></strong></td><td><big><strong><s:property value="expiryDate"/></big></strong></td>
<td><big><strong><s:property value="contactInfo"/></big></strong><br><br></td><br><br>
<!--<td><form action="jobprofileupdate"><input type=submit value=update name=submit></form></td>-->

    
   <!-- <form action="jobprofiledelete">

    <input type=submit value=delete name=submit></form></td>-->
<td> <s:url id="deleteUrl" action="sendmail">
        <s:param name="id" value="%{loginid}"></s:param>   
         </s:url>
    <s:a href="%{deleteUrl}"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Apply
        </button></s:a></td></tr>
        <br><br><br>
</s:iterator>
        </table>
    <%--<table><tr><td><form action="jobprofileadd"><input type=submit value=ADD name=submit></form></td></tr></table></pre>--%>


























</body></html>