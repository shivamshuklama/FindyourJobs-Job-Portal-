
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>

<html lang="en">
<head>
    <style>
    .footer-distributed{
	background-color: #e8e8e8;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;

	padding: 55px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  #5383d3;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #5383d3;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
    
        
        
    </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <div class="footer-distributed" style="background-color: #333;float: top;top: 80px;">
       <br/>     
       <table width="100%" style="border-color: #333">
    <thead>
        <tr style="height: 70">
            <th style="color: white;font-size: 20" >Information</th>
        <th  style="color: white;font-size: 20">Jobseeker</th>
        <th  style="color: white;font-size: 20">Browse Jobs</th>
        <th style="color: white;font-size: 20">Employers</th>
      </tr>
    </thead>
    <tbody>
      <tr style="height: 70">
          <td ><a href="about">About Us</a></td>
          <td ><a href="updatejobseeker">Upload Resume</a></td>
          <td ><a href="ViewJobs">Browse All Jobs</a></td>
          <td ><a href="postJobs">Post Jobs</a></td>
          
   
      </tr>
      <tr style="height: 70">
          <td><a href="about">Term And Conditions</a></td>
       
          <td ><a href="klm">Search Jobs</a></td>
          <td><a href="klm">Jobs By Skill</a></td>
          <td><a href="klm">View Database</a></td>
      </tr>
      <tr style="height: 70">
          <td ><a href="about">Privacy Policy</a></td>
          <td><a href="faQs">Report a problem</a></td>
          <td><a href="ViewJobs">Browse All Jobs</a></td>
          <td><a href="infojobseekeremp">View Jobseeker</a></td>
       <%--td >Toll free number #8553567832</td--%>
      </tr>
       <tr style="height: 70">
           <td><a href="about">Contact Us</a></td>
           <td ><a href="ViewJobs">View Employers</a></td>
           <td><a href="klm">Job By Location</a></td>
           <td><a href="ViewOrDeleteJobs">Update Jobs</a></td>
                 <%--img src="blogger.png"--%></a></td>
         <%-- <td>Follow us on</td>
         <td><a href="https://plus.google.com/114221220239526959487" target="_blank"><img src="google+.jpg"></a>
             <a href="https://www.facebook.com/shukla29" target="_blank"><img src="f.jpg"></a>
          <a href="https://twitter.com/shivamshuklama" target="_blank"><img src="twitter.jpeg"></a></td>--%>
      
      </tr>
      <!--tr><td> <a href="https://www.icicibank.com" target="_blank"><img src="10081.gif"></a></td>
           <td> <a href="https://www.wipro.com" target="_blank"> <img src="wipro.jpg"></a></td>
       <td> <a href="https://www.intel.com" target="_blank"> <img src="intel.png"></a></td>
       
         <td> <a href="https://www.ibm.com" target="_blank"><img src="16987.gif"></a></td>
         <%--td> <a href="https://www.tataconsultancies.com" target="_blank"><img src="892542.gif"></a></td--%></tr-->
    </tbody>
  </table>
    <br/><br/>
    <hr/>
    <table><tr><td> <img src="jobgrey.png" style="height: 70;width: 70"></td><td>  <FONT style="color: white;font-size: 14">&nbsp;&nbsp;&nbsp;&nbsp; CONNECT <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WITH US</P></td> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="https://plus.google.com/114221220239526959487" target="_blank"><i class="fa fa-google-plus-official" style="font-size:29px;color:white"></i></a>
          &nbsp;&nbsp;   <a href="https://www.facebook.com/shukla29" target="_blank"><i class="fa fa-facebook-square" style="font-size:29px;color: white"></i></a>
           &nbsp;&nbsp; <a href="https://twitter.com/shivamshuklama" target="_blank"><i class="fa fa-twitter-square" style="font-size:29px;color:white"></i></a>
           &nbsp;&nbsp;  <a href="http://shivamshukla29.blogspot.in/" target="_blank"><i class="fa fa-bold" style="font-size:29px;color:white"></i></a>
           &nbsp;&nbsp;  <a href="https://www.linkedin.com/feed/?trk=" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"style="font-size:29px;color:white"></i></a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <i class="fa fa-phone" style="font-size:29px;color:white"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<text><b><font size="4.5" style="color: WHITE">+91-8767543214</font></b></text></td></tr></table>
     <P>  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
    <HR/>
    <center><b style="color: white">&copy; 2017 A Shivam Shukla Production</b></center>
    <br/><br/>
</div>

</body>
</html>










<%--html>
    <head></head>



<style>
@import url(http://fonts.googleapis.com/css?family=Fjalla+One);
@import url(http://fonts.googleapis.com/css?family=Gudea);
.footer1 {
    background: #fff url("../images/footer/footer-bg.png") repeat scroll left top;
	padding-top: 40px;
	padding-right: 0;
	padding-bottom: 20px;
	padding-left: 0;/*	border-top-width: 4px;
	border-top-style: solid;
	border-top-color: #003;*/
}



.title-widget {
	color: #898989;
	font-size: 10px;
	font-weight: 300;
	line-height: 1;
	position: relative;
	text-transform: uppercase;
	font-family: 'Fjalla One', sans-serif;
	margin-top: 0;
	margin-right: 0;
	margin-bottom: 25px;
	margin-left: 0;
	padding-left: 28px;
}

.title-widget::before {
    background-color: #ea5644;
    content: "";
    height: 2px;
    left: 0px;
    position: absolute;
    top: -2px;
    width: 5px;
}



.widget_nav_menu ul {
    list-style: outside none none;
    padding-left: 0;
}

.widget_archive ul li {
    background-color: rgba(0, 0, 0, 0.3);
    content: "";
    height: 3px;
    left: 0;
    position: absolute;
    top: 7px;
    width: 3px;
}


.widget_nav_menu ul li {
    font-size: 13px;
    font-weight: 700;
    line-height: 20px;
	position: relative;
    text-transform: uppercase;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    margin-bottom: 7px;
    padding-bottom: 7px;
	width:95%;
}



.title-median {
    color: #636363;
    font-size: 20px;
    line-height: 20px;
    margin: 0 0 15px;
    text-transform: uppercase;
	font-family: 'Fjalla One', sans-serif;
}

.footerp p {font-family: 'Gudea', sans-serif; }


#social:hover {
    			-webkit-transform:scale(1.1); 
-moz-transform:scale(1.1); 
-o-transform:scale(1.1); 
			}
			#social {
				-webkit-transform:scale(0.8);
                /* Browser Variations: */
-moz-transform:scale(0.8);
-o-transform:scale(0.8); 
-webkit-transition-duration: 0.5s; 
-moz-transition-duration: 0.5s;
-o-transition-duration: 0.5s;
			}           
/* 
    Only Needed in Multi-Coloured Variation 
                                               */
			.social-fb:hover {
				color: #3B5998;
			}
			.social-tw:hover {
				color: #4099FF;
			}
			.social-gp:hover {
				color: #d34836;
			}
			.social-em:hover {
				color: #f39c12;
			}
			.nomargin { margin:0px; padding:0px;}





.footer-bottom {
    background-color: #15224f;
    min-height: 30px;
    width: 100%;
}
.copyright {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
}
.design {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
    text-align: right;
}
.design a {
    color: #fff;
}
</style>

<body>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


<!--footer-->
<footer class="footer1">
    <div class="container" style="height: inherit">

<div class="row"><!-- row -->
            
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>
                                	<li><a  href="#"><i class="fa fa-angle-double-right"></i> About Us</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> Contact Us</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> Success Stories</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> PG Courses</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> Achiever's Batch</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Regular Batch</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Test & Discussion</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Fast Track T & D</a></li>
                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>
 									<li><a  href="#"><i class="fa fa-angle-double-right"></i>  Test Series Schedule</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Postal Coaching</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  PG Dr. Bhatia Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  UG Courses</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Satellite Education</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Study Centres</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  State P.G. Mocks</a></li>
                                    <li><a  href="#" target="_blank"><i class="fa fa-angle-double-right"></i> Results</a></li>
                                    
                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>


                <li><a href="#"><i class="fa fa-angle-double-right"></i> Enquiry Form</a></li>
 				<li><a href="#"><i class="fa fa-angle-double-right"></i> Online Test Series</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Grand Tests Series</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Subject Wise Test Series</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Smart Book</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i> Test Centres</a></li>
                <li><a href="#"><i class="fa fa-angle-double-right"></i>  Admission Form</a></li>
				<li><a href="#"><i class="fa fa-angle-double-right"></i>  Computer Live Test</a></li>

                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column center -->
                
                   
                    
                        <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_recent_news"><!-- widgets list -->
                    
                                <h1 class="title-widget">Contact Detail </h1>
                                
                                <div class="footerp"> 
                                
                                <h2 class="title-median">Webenlance Pvt. Ltd.</h2>
                                <p><b>Email id:</b> <a href="mailto:info@webenlance.com">info@webenlance.com</a></p>
                                <p><b>Helpline Numbers </b>

    <b style="color:#ffc106;">(8AM to 10PM):</b>  +91-8130890090, +91-8130190010  </p>
    
    <p><b>Corp Office / Postal Address</b></p>
    <p><b>Phone Numbers : </b>7042827160, </p>
    <p> 011-27568832, 9868387223</p>
                                </div>
                                
                                <div class="social-icons">
                                
                                	<ul class="nomargin">
                                    
                <a href="https://www.facebook.com/bootsnipp"><i class="fa fa-facebook-square fa-3x social-fb" id="social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i class="fa fa-twitter-square fa-3x social-tw" id="social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i class="fa fa-google-plus-square fa-3x social-gp" id="social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i class="fa fa-envelope-square fa-3x social-em" id="social"></i></a>
                                    
                                    </ul>
                                </div>
                    		</li>
                          </ul>
                       </div>
                </div>
</div>
</footer>
<!--header-->

<div class="footer-bottom">

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="copyright">

					© 2015, Webenlance, All rights reserved

				</div>

			</div>

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="design">

					 <a href="#">Franchisee </a> |  <a target="_blank" href="http://www.webenlance.com">Web Design & Development by Webenlance</a>

				</div>

			</div>

		</div>

	</div>

</div>


</body--%>







