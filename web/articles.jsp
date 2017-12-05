<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<sb:head/>
<s:form action="articleaction" method="post">
   <p ><font color="WHITE" face="bold" size="5">Artical Name </font></p>   
    <s:textfield name="articlename" label="Artical name" />
    <!--s:textfield name="mob" label="Mobile"/-->
    <p ><font color="WHITE" face="bold" size="4">Article Description </font></p>   
     <s:textarea name="articledesc" label="Article Description"/>
<%--p ><font color="WHITE" face="bold" size="4">Posted On </font></p>   
<s:date  name="postedon" format="yyyy-MM-dd"/--%>
    <p ><font color="WHITE" face="bold" size="4">Posted On </font></p>  
    <p>   <input type="datetime-local" name="postedon" value="2017-05-07 06:30:05"   /></p>

<script type="text/javascript">
function SetDate()
{
var date = new Date();

var day = date.getDate();
var month = date.getMonth() + 1;
var year = date.getFullYear();
var hour=date.getHours();
var minutes=date.getMinutes();
var seconds=date.getSeconds();
if (month < 10) month = "0" + month;
if (day < 10) day = "0" + day;

var today = year + "-" + month + "-" + day;


document.getElementById('postedon1').value = today;
}
</script>

<body onload="SetDate();">
    
    
    
    
    
    
    <s:submit value="Post Article"/>
</s:form>
    <p>  <a href="ViewArticle"><button type="button" class="btn btn-info" >
      <span class="glyphicon glyphicon- glyphicon-leaf"></span> View Article
            </button></a></p>