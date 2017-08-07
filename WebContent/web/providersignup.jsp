<html>
    <head>
        <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<script type="text/javascript" src="JS/country.js"></script>      
        <script language="JavaScript" src="JS/calendar_us.js"></script>
	<link rel="stylesheet" href="JS/calendar.css">
           <script type="text/javascript">
     function valid()
        {
            var a=document.overseas.uname.value;
            var b=document.overseas.pwd.value;
            var c=document.overseas.cpwd.value;
            var d=document.overseas.cname.value;
            var e=document.overseas.conname.value;
            var f=document.overseas.desig.value;
            var g=document.overseas.dept.value;
           // var d=document.overseas.phone.value;
        //    var e=document.f.phn.value;
        //    var e=document.f.phn.value;
            var h=document.overseas.email.value;
            var i=document.overseas.phone.value;
            
        if(a=="")
            {
                alert("Enter your first name");
                document.overseas.uname.focus();
                return false;
            }
        
                
         if(b=="")
         {
             alert("enter your password");
             document.overseas.pwd.focus();
             return false;
            
         }
         if(c=="")
         {
             alert("reenter your password");
             document.overseas.cpwd.focus();
             return false;
            
         }
         if(b!=c)
             {
                 alert("password missmatch")
             }
          if(d=="")
            {
                alert("Enter your company name");
                document.overseas.cname.focus();
                return false;
            }
             if(e=="")
            {
                alert("Enter your contact name");
                document.overseas.conname.focus();
                return false;
            }
          if(f=="")
            {
                alert("Enter your designation");
                document.overseas.desig.focus();
                return false;
            }
            if(g=="")
            {
                alert("Enter your department");
                document.overseas.dept.focus();
                return false;
            }
         if(h=="")
         {
             alert("enter you email");
             document.overseas.email.focus();
             return false;
         }
         if(h.indexOf("@",0)<0)
             {
                 alert("please enter a valid email address");
                 document.overseas.email.focus();
                 return false;
             }
         if(h.indexOf(".",0)<0)
             {
                 alert("please enter a valid email address");
                 document.overseas.email.focus();
                 return false;
             }
          if(i=="")
              {
                  alert("please enter the mobile nuber");
                  document.overseas.phone.focus();
                  return false;
              }
          if(isNaN(i))
              {
                  alert("please enter the correct mobile number");
                  document.overseas.phone.focus();
                  return false;
              }
          if(i.length!=10)
             {
                 alert("enter 10 integers");
                 document.overseas.phone.focus();
                 return false;
              }
    }
    </script>
    

    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
        <form action="providersignup1.jsp" method="post" name="overseas" onSubmit="return valid();"> 
            <div style="position: absolute; width: 593px; height: 610px; z-index: 2; left: 16px; top: -1px" id="layer2">
                <center>
                    <table width="584" height="192" id="table3">
                        <tr>
                            <td width="249" height="26"><font face="Tahoma">
                            <font size="2">User Name</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="26">
                            <input name="uname" size="28" type="text"></td>
                        </tr>
                        <tr>
                            <td width="249" height="26"><font face="Tahoma">
                            <font size="2">Password</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="26">
                            <input name="pwd" size="28" type="password"></td>
                        </tr>
                        <tr>
                            <td width="249" height="26"><font face="Tahoma">
                            <font size="2">Confirm Password</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="26">
                                <input name="cpwd" size="28" type="password">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="1"><font face="Tahoma">
                            <font size="2">Company Name</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="1">
                            <input name="cname" size="47" type="text"></td>
                        </tr>
                        <tr>
                            <td width="249" height="14"><font face="Tahoma">
                            <font size="2">Contact Person Name</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="14">
                                <input name="conname" size="28" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="19"><font face="Tahoma">
                            <font size="2">Designation</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="19">
                                <input name="desig" size="28" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="26"><font face="Tahoma">
                            <font size="2">Department</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="26">
                                <input name="dept" size="28" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="25"><font face="Tahoma">
                            <font size="2">Number of Employees</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="25">
                                <select size="1" name="empno">
                                    <option selected="selected" value>Select</option>
                                    <option value="<10">&lt;10</option>
                                    <option value="11-25">11-25</option>
                                    <option value="26-50">26-50</option>
                                    <option value="51-100">51-100</option>
                                    <option value="101-200">101-200</option>
                                    <option value="201-500">201-500</option>
                                    <option value="500+">500+</option>
                                </select>                                
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="40"><font face="Tahoma">
                            <font size="2">Email Address</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="40">
                                <input name="email" size="47" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="40"><font size="2" face="Tahoma">
                            Phone#</font><font size="2" color="#ff0033">*</font></td>
                            <td colspan="3" width="342" height="40">
                                <input name="phone" size="24" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="40"><font size="2" face="Tahoma">
                            Fax#</font></td>
                            <td colspan="3" width="342" height="40">
                                <input name="fax" size="24" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="249" height="40">
                            <font face="Tahoma"><font size="2">&nbsp;Address</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="40">
                                <textarea rows="3" name="addr" cols="30"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td width="249" height="32"><font face="Tahoma">
                            <font size="2">Country</font><font size="2" color="#ff0033">*</font></font></td>
                            <td width="32" height="32">
                                <select id='countrySelect' name='country' onchange='populateState()'></select>
                            </td>
                            <td width="46" height="32">City<font color="#ff0033">*</font>
                            </td>
                            <td width="255" height="32">
                            <input name="city" size="24" type="text"></td>
                        </tr>
                        <tr>
                            <td width="249" height="32"><font face="Tahoma">
                            <font size="2">State</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="32"> <select id='stateSelect' name='state'></select>
                            <script type="text/javascript">initCountry('IN'); </script></td>
                        </tr>
                        <tr>
                            <td width="249" height="32"><font face="Tahoma">
                            <font size="2">PIN/ZIP</font><font size="2" color="#ff0033">*</font></font></td>
                            <td colspan="3" width="342" height="32">
                                <input name="pin" size="24" type="text">
                            </td>
                        </tr>
                    </table>
                    <table id="table4">
                        <tr>
                            <td><input value="Submit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td><input value="Reset" type="reset"></td>
                        </tr>
                    </table>
            </center></div>
        </form>
    </body>
</html>