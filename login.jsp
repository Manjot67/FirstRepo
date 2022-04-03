<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    
    <div class="mainhead">    	
    </div>           
           <div class="regbox box">
               <h1>Login</h1>
               
<form action="LoginCheck" method="post">
                   <p>Username</p>
<input type="text" placeholder="Username" name="name" >
                   <p>Password</p>
<input type="password" placeholder="Password" name="password">
<input type="submit" value="Submit"> 
<span id="errorMessage"></span>  
                
</form>
</div>

<script>
var url = new URL(location.href);
var c = url.searchParams.get("error-code");
if(c=="invalid"){
	document.getElementById("errorMessage").innerHTML="(invalid details)";	
}
</script>

</body>
</html>
