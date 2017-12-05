<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<sb:head/>
<html><body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="23" colspan="3" valign="top" bgcolor="#0099FF"><div align="center">EMP DATAILS </div></td>
  </tr></table>
  <s:iterator value="emps">
      <table class="table table-stripped" width="600" border="0" cellpadding="0" cellspacing="0" style="background-color: #f4511e;border-radius: 9px;border-color: #4CAF50;border-bottom-style: ridge">
  <tr>
    <td width="137" height="27" valign="top"><div>EMPLOYEE NAME </div></td>
    <td width="179" valign="top"><s:property value="empName"/></td>
    
  </tr>
  
  <tr>
    <td height="26" valign="top"><div>EMAIL ID </div></td>
    <td valign="top"><s:property value="username"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE DESIGNATION </div></td>
    <td valign="top"><s:property value="empDesg"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE COMPANY NAME </div></td>
    <td valign="top"><s:property value="empCmpName"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE COMPANY ADDRESS </div></td>
    <td valign="top"><s:property value="empCompAddress"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>COMPANY STATE </div></td>
    <td valign="top"><s:property value="empCompState"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE COMPANY CITY </div></td>
    <td valign="top"><s:property value="empCompCity"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE COMPANY PROFILE </div></td>
    <td valign="top"><s:property value="empCompanyProfile"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EMPLOYEE COMPANY WEBSITE </div></td>
    <td valign="top"><s:property value="empCompWebsite"/></td>
  </tr>
  <tr>
      <td>  
    <s:url id="deleteUrl" action="deleteEmployer">
        <s:param name="id" value="%{username}"></s:param>   
         </s:url>
    <s:a href="%{deleteUrl}"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Delete
                                </button></s:a></td>  
      
      
  </tr>
      </table>
  <br><br><br><br>
  </s:iterator>
      
    </body></html>