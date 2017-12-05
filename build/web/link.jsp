<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="com.hp.JobProfile"%>
<%@page import="com.hp.JobSeeker"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hp.HibernateUtil"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<%--<html>
<style>
body {font-family: "Lato", sans-serif;}

ul.tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #ffffff;
}

/* Float the list items side by side */
ul.tab li {float: left;}

/* Style the links inside the list items */
ul.tab li a {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
ul.tab li a:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
<body>
    <sb:head/>

<ul class="tab">
     <sb:head/>
    <li><a href="Home" class="tablinks"><img src="job.png" width="70px" style="float:top ;"></a></li>
  <li><a href="Home" class="tablinks">HOME</a></li>
  <li><a href="JobSeeker" class="tablinks">JOBSEEKER</a></li>
  <li><a href="CLIENT" class="tablinks">CLIENT</a></li>
   <li><a href="EMPLOYER" class="tablinks">EMPLOYER</a></li>
  <li><a href="ADMINISTRATOR" class="tablinks">ADMINISTRATOR</a></li>
  <li><a href="CONTACTUS" class="tablinks">CONTACT US</a></li>
  <li><p class="tablinks"style="display: none">-------</p><p>|</a><br></li>
  <li><a href="notify"  class="tablinks">Notifications</a></li>
   <li><a href="myjob"  class="tablinks">MyJob</a></li>
</ul>

<!--<div id="home" class="tabcontent">
  <h3>London</h3>
  <p>THIS IS HOME PAGE.</p>
</div>

<div id="Paris" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p> 
</div>

<div id="Tokyo" class="tabcontent">
  <h3>Tokyo</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>-->
     
</body>
</html> --%>

 <!DOCTYPE html>
<html lang="en">
<head>
    <style>
  




.dropdown-content {
    display: none;
    position: absolute;
    
    min-width: 50px;
    box-shadow: 0px;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #333}

.ab:hover .dropdown-content {
    display: block;
}
.ab1:hover .dropdown-content {
    display: block;
}
.ab2:hover .dropdown-content {
    display: block;
}

</style>
        
        
        
   
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body  >
  
<div class="container" >
    
    <p float="left"> <a href="Home"><img src="job.png" width="70px" style="float:left ;"></a></p>
  <ul class="nav nav-pills nav-justified">
      <li class="ab1"><a>Jobseeker</a>
  <div class="dropdown-content">
    
    <a href="loginjobseeker">Login</a>
    <a href="ViewJobs">View Jobs</a>
    <a href="showjobseeker">My Details</a>
    <a href="updatejobseeker">Update Info</a>
    <a href="logoutjobseeker">Logout</a>
  </div>
 </li>
      <li class="ab"><a href="#">Employer</a>
      <div class="dropdown-content">
    <a href="Employer">Login</a>
    <a href="postJobs">Post Jobs</a>
    <a href="infojobseekeremp">Jobseekers Info</a>
    <a href="ViewOrDeleteJobs">View Or Delete Jobs</a>
    <a href="logout">Logout</a>
  </div>
      </li>
      
   <!-- <li><a href="CLIENT">CLIENT</a></li>-->
   
    <li class="ab2"><a href="#">Administrator</a>
    
    
    <div class="dropdown-content">
        <a href="AdminLogin">Login</a>
    <a href="Articles">Articles</a>
    <a href="Jobseeker">Jobseekers</a>
    <a href="Employers">Employer</a>
    <a href="ViewJobs">JObs</a>
    <a href="faQs">Faqs</a>
    <a href="logoutadmin">Logout</a>
  </div>
    
    </li>
    
    
    <li><a href="about">ContactUs</a></li>
    <li>|</li>
    <li>
            
            
            
            
            
            
      
<head><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script></head>




<style>
      #k {
        display:block;
     
        list-style:none;
        margin:0;
        padding:12px 10px;
        height:21px;
    }
    #ul li {
        float:right;
        font:13px helvetica;
        font-weight:bold;
        margin:3px 0;
    }
    #ul li a {
        color:#96469B;
        text-decoration:none;
        padding:6px 15px;
        cursor:pointer;
    }
    #ul li a:hover {
        background:#96469B;
        text-decoration:none;
        cursor:pointer;
}
        
    #noti_Container {
        position:relative;
    }
       
    /* A CIRCLE LIKE BUTTON IN THE TOP MENU. */
    #noti_Button {
        width:22px;
        height:22px;
        line-height:22px;
        border-radius:50%;
        -moz-border-radius:50%; 
        -webkit-border-radius:50%;
        background:#ffffff;
 
        margin:-3px 10px 0 10px;
        cursor:pointer;
    }
        
    /* THE POPULAR RED NOTIFICATIONS COUNTER. */
    #noti_Counter {
        display:block;
        position:absolute;
        background:#E1141E;
        color:#FFF;
        font-size:12px;
        font-weight:normal;
        padding:1px 3px;
        margin:-8px 0 0 25px;
        border-radius:2px;
        -moz-border-radius:2px; 
        -webkit-border-radius:2px;
        z-index:1;
    }
        
    /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
    #notifications {
        display:none;
        width:430px;
        position:absolute;
        top:30px;
        left:0;
        background:#FFF;
        border:solid 1px rgba(100, 100, 100, .20);
        -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);
        z-index: 0;
    }
    /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
    #notifications:before {         
        content: '';
        display:block;
        width:0;
        height:0;
        color:transparent;
        border:10px solid #CCC;
        border-color:transparent transparent #FFF;
        margin-top:-20px;
        margin-left:10px;
    }
        
    h3 {
        display:block;
        color:#3349FF; 
        background:#FFF;
        font-weight:bold;
        font-size:13px; 
        padding:8px;
        margin:0;
        border-bottom:solid 1px rgba(100, 100, 100, .30);
    }
        
    .seeAll {
        background:#F6F7F8;
        padding:8px;
        font-size:12px;
        font-weight:bold;
        border-top:solid 1px rgba(100, 100, 100, .30);
        text-align:center;
    }
    .seeAll a {
        color:#3b5998;
    }
    .seeAll a:hover {
        background:#F6F7F8;
        color:#3b5998;
        text-decoration:underline;
    }
</style>

    <div >
        <ul id="k">
            
           
            <li id="noti_Container">
                <div id="noti_Counter"></div>   <!--SHOW NOTIFICATIONS COUNT.-->
                
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"><img src="images.png"></div>    

                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <div id="notifications">
                    <h3 >Notifications</h3>
                    <div style="height:50px;">
                        <p> <img src="images.jpg"> <s:url id="updateUrl" action="myjob">
        <s:param name="id" value="%{user}"></s:param>   
         </s:url>
    <s:a href="%{updateUrl}" onclick="window.open('%{updateUrl}', '_self')">
    <text id="get"></text> Hot Job Alerts For You.</s:a>  </p>     
                        
                    </div>
                    <div class="seeAll"><s:url id="updateUrl" action="myjob">
        <s:param name="id" value="%{user}"></s:param>   
         </s:url>
    <s:a href="%{updateUrl}" onclick="window.open('%{updateUrl}', '_self')">
      See All</s:a></div>
               
            </li>
           
       
    

<script>
    
    <% 
         String id1=null;
          Integer n=0;
         // String n1=null;
        try{
    HttpServletRequest request1=(HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
       id1=request1.getParameter("user");
     
if(id1!=null){
          Session s=HibernateUtil.getSessionFactory().openSession();
Integer id2=new Integer(id1);
JobSeeker jdb=(JobSeeker)s.get(JobSeeker.class,id2);
 List<JobProfile>emps1=s.createCriteria(JobProfile.class).add(Restrictions.eq("skillSet",jdb.getSkill())).list();
for(JobProfile j:emps1){
   n++;
   
}
 
}   
 String n1=Integer.toString(n);  }
catch(Exception e){} 
    %>
  
    $(document).ready(function () {
        
if(<%=n%>===0){
        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
        $('#noti_Counter')
            .css({ opacity: 0 })
    
    
    
    
                .text()              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);}


else{
    $('#noti_Counter')
            .css({ opacity: 0 })
    
                .text(<%=n%>)              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);
    }
$('#get').text(<%=n%>);
        $('#noti_Button').click(function () {

            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
            $('#notifications').fadeToggle('fast', 'linear', function () {
                if ($('#notifications').is(':hidden')) {
                    $('#noti_Button').css('background-color', '#2E467C');
                }
                else $('#noti_Button').css('background-color', '#FFF');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
            });

            $('#noti_Counter').fadeOut('slow');                 // HIDE THE COUNTER.

            return false;
        });

        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
        $(document).click(function () {
            $('#notifications').hide();

            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
            if ($('#noti_Counter').is(':hidden')) {
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                $('#noti_Button').css('background-color', '#2E467C');
            }
        });

        $('#notifications').click(function () {
            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
        });
    });
</script>      
      
            
        </ul> </div>   
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                  
    
            
            
<%--<p style="color:#46539B;">  Notifications</p>--%></li>
  
   <li><!--<a href="myjob">MyJob</a>-->
     <s:url id="updateUrl" action="myjob">
        <s:param name="id" value="%{user}"></s:param>   
         </s:url>
    <s:a href="%{updateUrl}">
      MyJob</s:a> 
   </li>
   <%-- out.print(n);--%>
   <%--out.print(n);--%>
   <li><t:insertAttribute name="menu"></t:insertAttribute></li>
  </ul>
</div>


</body>
</html>
 <!DOCTYPE html>





