<%-- 
    Document   : jobseekerskill
    Created on : 06-Sep-2016, 03:15:06
    Author     : Shivam
--%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <s:head/>
        <s:form action="showjobjobseeker">
            <s:textfield name="skill" label="skill"/>
            <s:submit value="submit"/>
            
        </s:form>
    </body>
</html>
