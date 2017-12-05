<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
   
    
    

    <table align="center" id="a" height="100%" width="100%" style="background-color: #F8F9F9" /*background="yt.jpg"*/ >
    <tr><td><p align="center"  style="height:30px;width:500px;"><font color="" align="center" face="bold" size="16">REGISTER YOURSELF </font></p> </td></tr>
        <sb:head/>

<form action="jsdiA"  method="post" enctype="multipart/form-data">
    <tr width="100%" height="100%">
        <td>
            
                        <pre>  <p ><font color="BLACK" face="bold" size="7">REGISTRATION INFORMATION </font></p>    
    
   NAME:      <input type="text" name="name" label="name"/> <br/><br/>
   EMAIL ID:  <input type="email"  name="emailId" label="EmailId"/> <br/><br/>
   PASSWORD:  <input type="password"  name="password" label="password"/></td></pre>
    <td>
        <pre>
 <p  style="color:white;"><font color="BLACK"  align="center" face="bold" size="5">CONTACT INFORMATION </font></p>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
        // Countries
        var country_arr = new Array("Select Country","AUSTRALIA","INDIA","NEW ZEALAND","USA","UAE","MAURITIUS");

        $.each(country_arr, function (i, item) {
            $('#country').append($('<option>', {
                value: i,
                text : item,
            }, '</option>' ));
        });

        // States
        var s_a = new Array();
        s_a[0]="Select State";
        s_a[1]="Select State|QUEENSLAND|VICTORIA";
        s_a[2]="Select State|ANDHRAPRADESH|KARNATAKA|TAMILNADU|DELHI|GOA|W-BENGAL|GUJARAT|MADHYAPRADESH|MAHARASHTRA|RAJASTHAN";
        s_a[3]="Select State|AUCKLAND";
        s_a[4]="Select State|NEWJERSEY|ILLINOIS";
        s_a[5]="Select State|DUBAI";
        s_a[6]="Select State|MAURITIUS";

        // Cities
        var c_a = new Array();
        c_a['QUEENSLAND']="BRISBANE";
        c_a['VICTORIA']="MELBOURNE";
        c_a['ANDHRAPRADESH']="Select city|ANDHRAPRADESH|KARNATAKA|TAMILNADU|DELHI|GOA|W-BENGAL|GUJARAT|MADHYAPRADESH|MAHARASHTRA|RAJASTHAN";
        c_a['KARNATAKA']="BANGLORE";
        c_a['TAMILNADU']="CHENNAI";
        c_a['DELHI']="DELHI";
        c_a['GOA']="GOA";
        c_a['W-BENGAL']="KOLKATA";
        c_a['GUJARAT']="AHMEDABAD1|AHMEDABAD2|AHMEDABAD3|BARODA|BHAVNAGAR|MEHSANA|RAJKOT|SURAT|UNA";
        c_a['MADHYAPRADESH']="INDORE";
        c_a['MAHARASHTRA']="MUMBAI|PUNE";
        c_a['RAJASTHAN']="ABU";
        c_a['AUCKLAND']="AUCKLAND";
        c_a['NEWJERSEY']="EDISON";
        c_a['ILLINOIS']="CHICAGO";
        c_a['MAURITIUS']="MAURITIUS";
        c_a['DUBAI']="DUBAI";


        $('#country').change(function(){
            var c = $(this).val();
            var state_arr = s_a[c].split("|");
            $('#state').empty();
            $('#city').empty();
            if(c==0){
                $('#state').append($('<option>', {
                    value: '0',
                    text: 'Select State',
                }, '</option>'));
            }else {
                $.each(state_arr, function (i, item_state) {
                    $('#state').append($('<option>', {
                        value: item_state,
                        text: item_state,
                    }, '</option>'));
                });
            }
            $('#city').append($('<option>', {
                value: '0',
                text: 'Select City',
            }, '</option>'));
        });

        $('#state').change(function(){
            var s = $(this).val();
            if(s=='Select State'){
                $('#city').empty();
                $('#city').append($('<option>', {
                    value: '0',
                    text: 'Select City',
                }, '</option>'));
            }
            var city_arr = c_a[s].split("|");
            $('#city').empty();

            $.each(city_arr, function (j, item_city) {
                $('#city').append($('<option>', {
                    value: item_city,
                    text: item_city,
                }, '</option>'));
            });


        });
    });
</script>
</head>
<body>
   MOBILE NO:       <input type="text"  name="mobNo" label="MOBILENO" pattern="[1-9]{1}[0-9]{9}"/><br/> 
   COUNTRY:         <select name="country" id="country"></select> <br>
   STATE:           <select name="state" id="state"></select> <br>
   CITY:            <select name="city" id="city"></select>
   
  <%-- CITY PIN:        <input type="text" name="pin" label="pin" pattern="^0[1-9]|[1-9]\d$" required><br/>--%>
   FULL ADDRESS:    <input type="text"  name="address" label="ADDRESS"/> <br/>
   CITY PIN:        <input type="text"  name="pin" label="CITY" maxlength="4" pattern="\d{4}" required/><br/> 
   PASSPORT NUMBER: <input type="text"  name="passportNumber" label="PASSPORTNO" maxlength="4" pattern="\d{4}" required/><br/>
   <!--GENDER:          MALE:<input type="radio"   name="GENDER" value="MALE">  FEMALE:<input type="radio"   name="GENDER" value="FEMALE"><br/>-->
   GENDER:          <input type="radio" name="gender" value="male"> Male  <input type="radio" name="gender" value="female"> Female

   SKILLS:          <input type="text"  name="skill" label="SKILLS"/><br/>
   EXPERIENCE:      <input type="text"  name="experience" label="EXPERIENCE" maxlength="2" pattern="\d{}" required/> <br/>
     <p align="center"  style="color:white;"><font color="BLACK" align="center" face="bold" size="5">UPLOAD YOUR RESUME HERE</font></p><br/>
   RESUME:          <input type="file"  name="resume" label="RESUME"/><br/>
        
   <p align="center"  style="color:white;height:"><font color="BLACK" align="center" face="bold" size="5">UPLOAD YOUR PHOTO HERE </font></p><br/>
   PHOTO:           <input type="file"  name="photo" label="photo"/><br/>
    <input type="submit"  value="CheckAndSubmit"/></td></pre>
    </tr></form></table>
</html>