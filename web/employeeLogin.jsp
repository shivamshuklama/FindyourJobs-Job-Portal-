<%--@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<p>
                            <a href="eSIGNUP"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Employee Register
                                </button></a>
                        </p>  
<s:form action="employeeLoginAct">
    <s:textfield name="email" label="email"/>
    
    <s:textfield name="password" label="password"/>
    <s:submit name="submit" value="submit"/>
</s:form>--%>




  <html>
<head>
<style> 
input[type=text] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}
.form-style-3{
    max-width: 450px;
    font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-3 label{
    display:block;
    margin-bottom: 10px;
}
.form-style-3 label > span{
    float: left;
    width: 100px;
    color: #ffffff;
    font-weight: bold;
    font-size: 13px;
    text-shadow: 1px 1px 1px #fff;
}
.form-style-3 fieldset{
    border-radius: 10px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    margin: 0px 0px 10px 0px;
    border: 1px solid #FFD2D2;
    padding: 20px;
    background: #5bc0de;
    box-shadow: inset 0px 0px 15px #FFE5E5;
    -moz-box-shadow: inset 0px 0px 15px #FFE5E5;
    -webkit-box-shadow: inset 0px 0px 15px #FFE5E5;
}
.form-style-3 fieldset legend{
    color: #5bc0de;
    border-top: 1px solid #FFD2D2;
    border-left: 1px solid #FFD2D2;
    border-right: 1px solid #FFD2D2;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    background: #FFF4F4;
    padding: 0px 8px 3px 8px;
    box-shadow: -0px -1px 2px #F1F1F1;
    -moz-box-shadow:-0px -1px 2px #F1F1F1;
    -webkit-box-shadow:-0px -1px 2px #F1F1F1;
    font-weight: normal;
    font-size: 12px;
}
.form-style-3 textarea{
    width:250px;
    height:100px;
}
.form-style-3 input[type=text],
.form-style-3 input[type=date],
.form-style-3 input[type=datetime],
.form-style-3 input[type=number],
.form-style-3 input[type=search],
.form-style-3 input[type=time],
.form-style-3 input[type=url],
.form-style-3 input[type=email],
.form-style-3 input[type=password],
.form-style-3 select, 
.form-style-3 textarea{
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border: 1px solid #FFC2DC;
    outline: none;
    color: #F072A9;
    padding: 5px 8px 5px 8px;
    box-shadow: inset 1px 1px 4px #FFD5E7;
    -moz-box-shadow: inset 1px 1px 4px #FFD5E7;
    -webkit-box-shadow: inset 1px 1px 4px #FFD5E7;
    background: #FFEFF6;
    width:50%;
}
.form-style-3  input[type=submit],
.form-style-3  input[type=button]{
    background: #5bc0de;
    border: 1px solid #46b8da;
    padding: 5px 15px 5px 15px;
    color: #ffffff;
    box-shadow: inset -1px -1px 3px #46b8da;
    -moz-box-shadow: inset -1px -1px 3px #46b8da;
    -webkit-box-shadow: inset -1px -1px 3px #46b8da;
    border-radius: 3px;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;    
    font-weight: bold;
}
.required{
    color:red;
    font-weight:normal;
}
</style>





</style>
</head>
<body>
  
    <p>
                            <a href="eSIGNUP"> <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-pencil"></span> Employee Register
                                </button></a>
                        </p>  
    
    
    
    
<div class="form-style-3">
<form action="employeeLoginAct" method="post">
<fieldset><legend>Employer Login Details</legend>
<label for="email"><span>Email <span class="required">*</span></span><input type="email" class="input-field" name="email" value="" /></label>
<label for="password"><span>Password <span class="required">*</span></span><input type="password" class="input-field" name="password" value="" /></label>
<label><span>&nbsp;</span><input type="submit" value="submit" /></label>
</fieldset>
</form>
</div>





</body>
</html>