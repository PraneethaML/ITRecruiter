<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
   <%!
        public static final DateFormat utilDateFormatter = new SimpleDateFormat("dd-MM-yyyy");
        public static final DateFormat sqlDateFormatter = new SimpleDateFormat("yyyy-MM-dd");
   %>
   <%!
        public static java.sql.Date utilDateToSqlDate(java.util.Date uDate) throws ParseException
        {
             return java.sql.Date.valueOf(sqlDateFormatter.format(uDate));
        }
  %>
   <% java.util.Locale locale = request.getLocale(); %>  
  <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String userid,fn,ln,un,pwd,gen,dob,addr,city,cntry,state,qual,tech,descountry,phone,email,mobile,indtype,skills;
        int i,years,months;
        %>
        <%
        fn=request.getParameter("fn");
        ln=request.getParameter("ln");
        un=request.getParameter("un");
        pwd=request.getParameter("pwd");
        gen=request.getParameter("gen");
        dob=request.getParameter("dob");
            java.util.Date d1 = new java.util.Date(dob);
            dob = getFormattedDate(d1);
            java.sql.Date dob1=utilDateToSqlDate(d1);
        addr=request.getParameter("addr"); 
        city=request.getParameter("city"); 
        state=request.getParameter("state"); 
        cntry=request.getParameter("country"); 
        qual=request.getParameter("qual"); 
        tech=request.getParameter("tech"); 
        years=Integer.parseInt(request.getParameter("years")); 
        months=Integer.parseInt(request.getParameter("months"));
        int expmonths=years*12;
        expmonths=months+expmonths;
        descountry=request.getParameter("descountry"); 
        phone=request.getParameter("phone"); 
        email=request.getParameter("email"); 
        mobile=request.getParameter("mobile"); 
        indtype=request.getParameter("indtype"); 
        skills=request.getParameter("skills"); 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();
        
        rs=st.executeQuery("select userid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        userid="user00"+i;
        pst = con.prepareStatement("insert into userreg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,un);
        pst.setString(2,pwd);
        pst.setString(3,userid);
        pst.setString(4,fn);       
        pst.setString(5,ln); 
        pst.setString(6,gen);
        pst.setDate(7,dob1);
        pst.setString(8,addr);        
        pst.setString(9,city);       
        pst.setString(10,cntry);       
        pst.setString(11,state);       
        pst.setString(12,qual); 
        pst.setString(13,tech);      
        pst.setInt(14,expmonths);
        pst.setString(15,descountry);
        pst.setString(16,phone);      
        pst.setString(17,email);
        pst.setString(18,mobile);     
        pst.setString(19,indtype);
        pst.setString(20,skills);
        pst.execute();
        %>     
        <jsp:include page="usersignup.jsp"></jsp:include>
        <div style="position: absolute; width: 286px; height: 24px; z-index: 1; left: 250px; top: 407px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">You have registered successfully</font></h2>
            </font>
        </div>   
     <%! 
        String getFormattedDate(java.util.Date d)
        {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM/dd/yy hh:mm:ss");
        return simpleDate.format(d);
        }
      %>
    </body>
</html>
