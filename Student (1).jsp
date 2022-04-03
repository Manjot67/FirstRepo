<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*, java.util.*"
    %>
<%!
String roll,name_s,name_t,notice;
%>

<%
session.getAttribute("id");
if(session.getAttribute("id")==null)
{	
	response.sendRedirect("index.html");
}

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_sys", "root", "");
roll = (String) session.getAttribute("id");

PreparedStatement ps = con.prepareStatement("Select * from first where rollno=?");
ps.setString(1, roll);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	roll=rs.getString(1);
	name_s=rs.getString(2);
	
}
else {
	PreparedStatement ps2 = con.prepareStatement("Select * from third where rollno=?");
	ps2.setString(1, roll);
	ResultSet rs2 = ps2.executeQuery();
	if(rs2.next())
	{
		roll=rs2.getString(1);
		name_s=rs2.getString(2);
		
	}
	
	else {
		PreparedStatement ps3 = con.prepareStatement("Select * from fifth where rollno=?");
		ps3.setString(1, roll);
		ResultSet rs3 = ps3.executeQuery();
		if(rs3.next())
		{
			roll=rs3.getString(1);
			name_s=rs3.getString(2);
			
		}
		
		else {
			
			PreparedStatement ps4 = con.prepareStatement("Select * from seventh where rollno=?");
			ps4.setString(1, roll);
			ResultSet rs4 = ps4.executeQuery();
			if(rs4.next())
			{
				roll=rs4.getString(1);
				name_s=rs4.getString(2);
				
			}
			
		}
	}
}


PreparedStatement ps9 = con.prepareStatement("Select * from notice");
ResultSet rs9 = ps9.executeQuery();

while(rs9.next())
{
	name_t = rs9.getString(1);
	notice = rs9.getString(2);
}

con.close();
    
 %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Panel</title>
    <link rel="stylesheet" href="style3.css">   
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Bree+Serif&display=swap" rel="stylesheet">
</head>

<body>  
    <section id="home" >
        <h3 class="h-primary">Welcome, <%out.print(name_s); %></h3>
            <div>
                <div class="box" >
                    <img src="programmer.png" alt="">                       
                </div>

            <div id="notice" >
            <h2 class="h-secondary-notice">Notice:</h2>
                <h2 class="h-secondary-notice"><% out.print(notice+" - "+name_t); %></h2>
            </div>
            </div>      
            
            
        <div id="services">
            <div class="box">
                <h2 class="h-secondary center"><a href='Account.jsp'><br>View Profile</a></h2>                
            </div>

            <div class="box">
                <h2 class="h-secondary center"><a href='Syllabus.jsp'><br>Syllabus</a></h2>                
            </div>

            <div class="box">
                <h2 class="h-secondary center"><a href='Result.jsp'><br>Result</a></h2>                
            </div>            
            
            <div class="box">
                <h2 class="h-secondary center"><a href='ContactVerify.jsp'><br>Contact Verification</a></h2>               
            </div>       
           
        </div>

        <div id="services">
            <div class="box">                
                <h2 class="h-secondary center"><a href='Feestructure.jsp'><br>Fee Details</a></h2>                
            </div>

            <div class="box">
               
                <h2 class="h-secondary center"><a href='Feedback.jsp'><br>Feedback</a></h2>               
            </div>

            <div class="box">
                <h2 class="h-secondary center"><a href='upt_pass.jsp'><br>Update Password</a></h2>                
            </div>     
            
            <div class="box">
                <h2 class="h-secondary center"><a href='Logoutt'><br>Logout</a></h2>               
            </div>         
           
        </div>       
        
    </section>
</body>
</html>