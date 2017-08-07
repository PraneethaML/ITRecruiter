<html>
        <head>
    <meta http-equiv="Content-Language" content="en-us">
    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
      <script type="text/javascript" src="JS/country.js"></script> 

        <script language="JavaScript" src="JS/calendar_us.js"></script>
	<link rel="stylesheet" href="JS/calendar.css">
        <script type="text/javascript">
     function valid()
        {
            var a=document.overseas.fn.value;
            var b=document.overseas.ln.value;
            var c=document.overseas.un.value;
            var d=document.overseas.pwd.value;
        //    var e=document.f.phn.value;
            var e=document.overseas.email.value;
            var f=document.overseas.mobile.value;
            
        if(a=="")
            {
                alert("Enter your first name");
                document.overseas.fn.focus();
                return false;
            }
        if(b=="")
            {
                alert("Enter your last name");
                document.overseas.ln.focus();
                return false;
            }
         if(c=="")
                {
                    alert("enter your username");
                    document.overseas.un.focus();
                    return false;
                }
         if(d=="")
         {
             alert("enter your password");
             document.overseas.pwd.focus();
             return false;
            
         }
        
         if(e=="")
         {
             alert("enter you email");
             document.overseas.email.focus();
             return false;
         }
         if(e.indexOf("@",0)<0)
             {
                 alert("please enter a valid email address");
                 document.overseas.email.focus();
                 return false;
             }
         if(e.indexOf(".",0)<0)
             {
                 alert("please enter a valid email address");
                 document.overseas.email.focus();
                 return false;
             }
          if(f=="")
              {
                  alert("please enter the mobile nuber");
                  document.overseas.mobile.focus();
                  return false;
              }
          if(isNaN(f))
              {
                  alert("please enter the correct mobile number");
                  document.overseas.mobile.focus();
                  return false;
              }
          if(f.length!=10)
             {
                 alert("enter 10 integers");
                 document.overseas.mobile.focus();
                 return false;
              }
    }
    </script>
    

    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
        <form name="overseas" action="usersignup1.jsp" method="post" onSubmit="return valid();">
    <div style="position: absolute; width: 689px; height: 271px; z-index: 2; left: 3px; top: 89px" id="layer2">
    <table border="0" width="100%" id="table1" height="272">
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">First Name</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"><input type="text" name="fn" size="20"></td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">Last Name</font><font size="2" color="#ff0033">*</font></td>
        <td><input type="text" name="ln" size="20"></td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">User Name</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"><input type="text" name="un" size="20"></td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">Password</font><font size="2" color="#ff0033">*</font></td>
        <td><input type="password" name="pwd" size="20"></td>
    </tr>
    <tr>
    <td><font size="2" face="Tahoma" color="#3B362B">Gender</font><font size="2" color="#ff0033">*</font></td>
    <td width="207"> <select size="1" name="gen">
            <option value="Select" selected>Select</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
    </select></td>
    <td width="102"><font size="2" face="Tahoma" color="#3B362B">Date of Birth</font></td>
    <td>
        <input type="text" name="dob"></font>
        <script language="JavaScript">
                                        new tcal ({'formname': 'overseas','controlname': 'dob'});
        </script> 

    </td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Address Lane</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"> <input type="text" name="addr" size="20"></td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">City</font><font size="2" color="#ff0033">*</font></td>
        <td>
        <input type="text" name="city" size="20"></td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Country</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"> <select id='countrySelect' name='country' onchange='populateState()'>
            </select>
        </td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">State</font><font size="2" color="#ff0033">*</font></td>
        <td>
            <select id='stateSelect' name='state'>
            </select>
        <script type="text/javascript">initCountry('IN'); </script></td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Highest Qualification</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"><select size="1" name="qual">
                <option value="Select" selected>Select</option>
                <option value="M.Tech">M.Tech</option>
                <option value="M.sc">M.sc</option>
                <option value="B.Tech">B.Tech</option>
                <option value="B.sc">B.sc</option>
                <option value="B.Com">B.Com</option>
                <option value="B.Com(Computers)">B.Com(Computers)</option>
                <option>B.A</option>
                <option value="Inter">Inter</option>
                <option value="S.S.C">S.S.C</option>
        </select></td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">Technology</font><font size="2" color="#ff0033">*</font></td>
        <td><select size="1" name="tech">
                <option value="Select" selected>Select</option>
                <option value="Java">Java</option>
                <option value=".Net">.Net</option>
                <option value="Testing">Testing</option>
                <option value="SAP">SAP</option>
                <option value="Networking">Networking</option>
                        <option value="PHP">PHP</option>
        </select></td>
    </tr>
    <tr>
        <td width="23%"><font size="2" face="Tahoma" color="#4D4D4D">Industry Type</font><font size="2" color="#ff0033">*</font></td>
        <td width="24%">
            <select size="1" name="indtype" tabindex="2">
                <option value="Management" selected="selected">Management</option>
                <option value="Accounting / Banking">Accounting / Banking</option>
                <option value="Administrative">Administrative</option>
                <option value="Human Resources">Human Resources</option>
                <option value="Sales">Sales</option>									
                <option value="Computers / IT">Computers / IT</option>								
                <option value="Consulting">Consulting</option>
                <option value="Advertising / PR / Marketing">Advertising / PR / Marketing</option>
                <option value="Information Technology / Internet">Information Technology / Internet</option>
                <option value="Telecom / Communications">Telecom / Communications</option>
                <option value="Transportation">Transportation</option>
                <option value="Manufacturing / Agriculture">Manufacturing / Agriculture</option>
                <option value="Legal and Law Related">Legal and Law Related</option>
                <option value="Warehousing / Logistics">Warehousing / Logistics</option>
                <option value="Tourism / Service">Tourism / Service</option>									
                <option value="Construction / Real Estate">Construction / Real Estate</option>
                <option value="Healthcare / Pharmaceutical">Healthcare / Pharmaceutical</option>
                <option value="Security">Security</option>
                <option value="Insurance">Insurance</option>
                <option value="Mass Media">Mass Media</option>
                <option value="Education / Training">Education / Training</option>
                <option value="Science / Culture / Arts">Science / Culture / Arts</option>
                <option value="Services">Services</option>
                <option value="Sports / Fitness">Sports / Fitness</option>									
                <option value="Human Services">Human Services</option>
            </select>
        </td>
        <td width="102"><font face="Tahoma" size="2">Skills</font></td>
        <td><textarea rows="2" name="skills" cols="20"></textarea></td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Experience</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"><select size="1" name="years">
                <option value="Select">Select</option>
                <%
                for(int i=0;i<=30;i++)
                {
                %>
                <option value="<%=i%>"><%=i%></option>
                <%
                }
                %>
            </select><b><font size="1">(Years)</font></b>
            <select size="1" name="months">
                <option value="Select">Select</option>
                <%
                for(int i=0;i<=11;i++)
                {
                %>
                <option value="<%=i%>"><%=i%></option>
                <%
                }
                %>
        </select><b><font size="1">(Months)</font></b></td>
        <td width="102">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Desired Country</font><font size="2" color="#ff0033">*</font></td>
        <td width="207"> 
            <select id='DescCountryID' name='descountry'>
            </select>
        <script type="text/javascript">initDescCountry('IN'); </script></td>
        </td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">Land Phone</font></td>
        <td>
            <input type="text" name="phn" size="20" required="false"></td> 
    </tr>
    <tr>
        <td><font size="2" face="Tahoma" color="#3B362B">Email-ID</font><font size="2" color="#ff0033">*</font></td>
        <td width="207">
        <input type="text" name="email" size="38"></td>
        <td width="102"><font size="2" face="Tahoma" color="#3B362B">Mobile 
        Number</font><font size="2" color="#ff0033">*</font></td>
        <td>
        <input type="text" name="mobile" size="20"></td>
    </tr>
    
    <tr>
        <td height="47">&nbsp;</td>
        <td width="207" height="47">
        <p align="center"><input type="submit" value="Sign Up Now" name="B1"></td>
        <td width="102" height="47"><input type="reset" value="Reset" name="B2"></td>
        <td height="47">&nbsp;</td>
    </tr>
    </table>
    </div>
    
    <p>&nbsp;</p>
    <div style="position: absolute; width: 480px; height: 72px; z-index: 3; left: 3px; top: 0px" id="layer3">
    <img border="0" src="Images/jobseeker.jpg" width="688" height="87"></div>
    </form>
    </body>
   
</html>