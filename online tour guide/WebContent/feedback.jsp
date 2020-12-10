<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="NEw_style.css">  
<style>
 .feed  {
		background-color:#F5F7FA;
		width:400px;
		padding: 15px;
		margin: 25px;
		height:65%;
		} 
#send{
	text-align:right;
	}
	.feed input[type=text] {
    
				padding: 6px;
				border: none;
				margin-top: 8px;
				margin-right: 16px;
				font-size: 17px;
				color:black;
			}	
			 table.feedback td{
			padding:5px;
			
			}
	.feed input[type=submit] {
			background-color: Black;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			float: right;
		}
	.feed input[type=submit]:hover {
    background-color: grey;
}

body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("images/tour.jpg");
  
  margin-left:100px;
  
  /* Full height */
  height: 477px; 
 width:719px; 
  
  /* Center and scale the image nicely */
  background-position:center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: relative;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>
<body>
 <header>
    <div class="wrapper">
        <div class="logo">
        </div>
        <div class="Heading">Online Tour Guide</div>
        <ul class="nav-area">
            <li><a href="">Home</a></li>
            <li><a href="feedback.jsp">FeedBack</a></li>
            <li><a href="Contactus.jsp">Contact Us</a></li>
            
        </ul>
     </div>
        </header>      
<div class="feed">
<p style="font-family:Comic Sans MS;font-size:22px;">Customer Feedback</p>






<form action="addfeedback" method="post">
<table class="feedback">
<tr>
<td>
<label>Name:</label>
</td>
<td>
<input type="text" name="name" required>
</td>
</tr>
<tr>
<td>
<label>Email :</label>
</td>
<td>
<input type="text" name="email" required>
</td>
</tr>
<tr>
<td>
<label>Address :</label>
</td>
<td>
<input type="text" name="address" required>
</td>
</tr>
<tr>
<td>
<label>Message :</label>
</td>
<td>
<textarea name="message" rows="10" cols="40" required></textarea>
</td>
</tr>
</table>
<br>
<input type="submit" value="send">
</form>
</div>
<div>
<footer>

			<div>

				<div>
					<br><br>
					<h3><img src="images/arrow.png" alt="arrow right icon" height="20" width="20">  SUPPORT</h3>
					<br>
					<ul>

						<li>Legal</li><br>

						<li>Privacy Policy</li><br>

						<li>Terms Of Us</li><br>

					</ul>

				</div>

			</div>
			<br><br>
			<div id="footer-center-content">

				<h3><img src="images/arrow.png" alt="arrow right icon" height="20" width="20">  Ways You Can Pay</h3>

				<img src="images/ae.jpg" alt="american express" height="40" width="50">
				<img src="images/m.png" alt="Master card" height="40" width="50">

				<img src="images/v.png" alt="visa card" height="40" width="50">
				<br><br>
				<h3><img src="images/arrow.png" alt="arrow right icon" height="20" width="20">  Follow Us</h3>

				<a href="https://www.facebook.com"><img src="images/fb.jpg" alt="facebook icon" height="40" width="40">
</a>
				<a href="https://twitter.com/login?lang=en"><img src="images/t.png" alt="twitter icon" height="40" width="40">

</a>				<a href="https://www.instagram.com/accounts/login/?source=auth_switcher"><img src="images/ig.png" alt="instagram icon" height="40" width="40">
</a>
				<a href="https://accounts.google.com/ServiceLogin/signinchooser?elo=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><img src="images/g.png" alt="google plus icon" height="40" width="40"></a>

			</div>

			<div>
               
				<h3><img src="images/arrow.png" alt="arrow right icon" height="20" width="20">  Contact Us</h3><br>

				<p>No23:kurumankadu,<br>vavuniya,<br>srilanka.</p>

				<p><img src="images/phone.png" alt="phone icon" height="20" width="20">+9424123456</p>

				<p><img src="images/mail.png" alt="mail icon" height="20" width="20">tourguide.gmail.com</p>

			</div>

		
</footer>
</div>
</body>
</html>