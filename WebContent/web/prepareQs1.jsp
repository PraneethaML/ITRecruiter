<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst,pst1;
        ResultSet rs;
        %>
        <%!
                String cname,tech,prid,opt1,opt2,opt3,opt4,ans,question,paperid;
                int numofqs,qno;
        %>
        <% 
               cname=request.getParameter("cname");
               paperid=request.getParameter("paperid");
               tech=(String)session.getAttribute("tech");
               prid=(String)session.getAttribute("prid");
               session.setAttribute(paperid,paperid);
               session.setAttribute(cname,cname);
               Integer numofqs=(Integer)session.getAttribute("numofqs");
               qno=Integer.parseInt(request.getParameter("i"));
               question=request.getParameter("question");
               opt1=request.getParameter("opt1");
               opt2=request.getParameter("opt2");
               opt3=request.getParameter("opt3");
               opt4=request.getParameter("opt4");
               ans=request.getParameter("ans");
 /*            out.println("cname : "+cname);
               out.println("tech : "+tech);
               out.println("prid : "+prid);
               out.println("numofqs : "+numofqs.intValue());
               out.println("qno : "+qno);
               out.println("opt1 : "+opt1);
               out.println("opt2 : "+opt2);
               out.println("opt3 : "+opt3);
               out.println("opt4 : "+opt4);
               out.println("ans : "+ans);
*/             Class.forName("oracle.jdbc.driver.OracleDriver");
               con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
               st=con.createStatement();
               pst=con.prepareStatement("insert into quespaper values(?,?,?,?,?,?,?,?,?,?,?)");
               pst.setString(1,cname);
               pst.setString(2,tech);
               pst.setString(3,paperid);
               pst.setInt(4,numofqs);
               pst.setInt(5,qno);
               pst.setString(6,question);
               pst.setString(7,opt1);
               pst.setString(8,opt2);
               pst.setString(9,opt3);
               pst.setString(10,opt4);
               pst.setString(11,ans);
               pst.execute();           
               
               pst1=con.prepareStatement("update paperdetails set status='Prepared' where paperid='"+paperid+"'");
               pst1.execute();
        %>
      <jsp:include page="prepareQs.jsp"></jsp:include>           
    </body>
</html>
