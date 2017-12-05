
<%@page import="com.hp.Login"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.hp.HibernateUtil"%>
<s:head theme="simple"/>
<sb:head/>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-stripped">
  <!--DWLayoutTable-->
  <tr>
    <td height="23" colspan="3" valign="top" bgcolor="#0099FF"><div align="center">JobSeeker DATAILS </div></td>
  </tr></table>
  <s:iterator value="emps">
      <sb:head/>
      <table width="400px"   style="background-color: #ccc;border-radius: 20px" class="table  table-stripped table-inverse">
          <sb:head/>
  <tr>
      <td width="30%" height="27" valign="top"><div>name </div></td>
      <td width="30%" valign="top"><p><s:property value="name"/></p></td>
    
    <td width="100" rowspan="3" valign="top"><img src="<s:url action="showMyPic?id=%{loginid}"/>" height="100" width="100" /></td>
  </tr>
  
  <!--<tr>
    <td height="26" valign="top"><div >emailId </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"></td>
  </tr>-->
 <%-- <tr>
    <td height="26" valign="top"><div>password </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="password"/></td>
  </tr>--%>
  <tr>
    <td height="26" valign="top"><div>MOBILENO </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="mobNo"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>CITY </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="city"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>PIN </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="pin"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>ADDRESS </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="address"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>PASSPORTNO </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="passportNumber"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>GENDER </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="gender"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>SKILLS </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="skill"/></td>
  </tr>
  <tr>
    <td height="26" valign="top"><div>EXPERIENCE </div></td>&nbsp;&nbsp;&nbsp;
    <td valign="top"><s:property value="experience"/></td>
  </tr>
  <tr>
   <object data=" <s:url id="fileDownload" namespace="/" action="showMyResume?id=%{loginid}"></s:url>" />
      <td>Resume -<s:a href="%{fileDownload}">resume.docx</s:a></td> 
      
      
  </tr><td>
 <!-- <tr>
    <td height="25" valign="top"><div align="right">resume </div></td>
    <td valign="top"><object data="s:url action="showMyResume?id=%{username}"/>" height="100" width="100" /></td>
  </tr>-->
 
 <s:url id="deleteUrl" action="deleteJobseeker">
        <s:param name="id" value="%{loginid}"></s:param>   
         </s:url>
    <s:a href="%{deleteUrl}"><button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span>Delete
                                </button></s:a></td>
 <tr>
      </table>
  </s:iterator>
  <tr>
    <td height="14" colspan="3" valign="top" bgcolor="#000000"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  
  
  

