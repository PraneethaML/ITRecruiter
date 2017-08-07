
<%@ page import="java.sql.*" %>
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
        String getFormattedDate(java.util.Date d)
        {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM/dd/yy hh:mm:ss");
        return simpleDate.format(d);
        }
      %>    
  <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String tech,prid,cname,papid,dob,status;
        int numofqs,i,time;
        %>
        <%
        prid=request.getParameter("prid");
        cname=request.getParameter("cname");
        numofqs=Integer.parseInt(request.getParameter("numqs"));
        tech=request.getParameter("tech");
        dob=request.getParameter("dob");
            java.util.Date d1 = new java.util.Date(dob);
            dob = getFormattedDate(d1);
            java.sql.Date examdate=utilDateToSqlDate(d1);
            
        time=numofqs;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select papid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        papid="00"+i;
        status="Not Prepared";
        pst = con.prepareStatement("insert into paperdetails values(?,?,?,?,?,?,?,?)");
        pst.setString(1,prid);
        pst.setString(2,cname);
        pst.setString(3,papid);
        pst.setInt(4,numofqs);       
        pst.setString(5,tech);     
        pst.setInt(6,time);  
        pst.setDate(7,examdate);   
        pst.setString(8,status);     
        pst.execute();
        %>     
        <jsp:include page="examPaperDetails.jsp"></jsp:include>
        <div style="position: absolute; width: 286px; height: 24px; z-index: 1; left: 262px; top: 298px" id="layer2">
            <font size=4 color="#008000">
                <h2><font size="2" face="Verdana">Exam paper added successfully</font></h2>
            </font>
        </div>   
    </body>
</html>
