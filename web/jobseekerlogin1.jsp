<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html><head>
   

     


    </head>
    <body >
       
        <table style="float: right">  
            <sb:head/>
            <tr><td style="width: 10px" class="container"> 
                <!--    <p>    <font color="WHITE" face="bold" size="5">New To TakeaJob</font></p>
                    <p>
                            <a href="jSIGNUP"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Register with us
                                </button></a>
                        </p>  
                       <font color="WHITE" face="bold" size="5">-------OR-------</font></p>
          <p>
                 <a href="jSIGNUP"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Upload Resume
                     </button> </a>          
                 </p></form> -->         
                    
         </td>
                    
                    
                    
  <!--<input type=button value="Register with us"/>--><!--</td><td style="width: 10px;text-align: center;"><p style="color: blue; display: inline;">OR</p>&nbsp;</td>&nbsp;<td style="width: 10px" >
                  <!--  <form action="jSIGNUP"><input type="button" value="Upload Resume" class="btn btn-info"> <span class="glyphicon glyphicon-pencil"></span> Register with --></tr>
            <tr> <td>  
                    
                    
                    
                    <form action="login" method="post" >
   <div width=100% class="input-group input-group-lg">
  <span class="input-group-addon glyphicon glyphicon-user"></span>
  <input type="text"  name="user" label="username" class="form-control" placeholder="Username"/>
</div>
  <div width=100% class="input-group input-group-lg">   <span class="input-group-addon glyphicon glyphicon-lock "></span> 
       <input type="password" name="pass" label="Password" class="form-control" placeholder="Password" pattern=".{6,}" title="Six or more characters"/>
       </div>
    <p><button type="submit" class="btn btn-info" >
      <span class="glyphicon glyphicon-certificate"></span> Login
    </button>
   
</form></td></tr></table>
            
</body>
</html>