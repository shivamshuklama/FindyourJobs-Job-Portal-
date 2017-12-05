<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
    <body>
        <sb:head/>
        <s:iterator value="ad"><table style="width:70%; border: #666; color: #f4511e; background-color: darkgrey;border-radius: 20px;appearance: desktop;margin-left: 30px"class="table-inverse"><tr>
                    <td>  <p><button type="button" class="btn btn-info" >
      <span class="glyphicon glyphicon- glyphicon-leaf"></span>  <s:property value="articalName"></s:property>
                    </button> <br><br><br></td></tr>
               
      <tr> <td> <p style="width: 70%;font-size: 20px;font-style: normal"><s:property value="articalDesc"/></p>
                        <br><br><br></td></tr>
                <tr><td>   <p style="color: #666">Posted On: <s:property value="postedOn"></s:property></p></td></tr>
                  <br><br>
                 
             </table>
           
        </s:iterator>
              
       
        
        
    </body>  
    
    
    
</html>