<%@taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<html>
    <head><style>
            body{
                background-color: #e8e8e8;
            }
        </style></head> 
    
    
    <body  style="  background-color: #ffffff;">

<table align="center" height="100%" width="100%">
   
    
    
    <tr height="40px" ><td colspan="2"><t:insertAttribute name="link"/></td></tr>
 <%--   <tr height="50px"><td colspan="2"><t:insertAttribute name="pic"/></td></tr>--%>
   
    
    <tr height="400px" background="hbk.jpg"><td colspan="2"><t:insertAttribute name="search"/></td></tr>
    
    
    
    <tr height="500px"  bgcolor="#ffffff" >
        
        <td ><t:insertAttribute name="content1"/></td> 
      
    </tr>
    
    
    
    <tr height="30px" style="background-color:#333">
        <td colspan="2"><t:insertAttribute name="foot"/></td> 
    </tr>
    
</table>

    </body>
</html>