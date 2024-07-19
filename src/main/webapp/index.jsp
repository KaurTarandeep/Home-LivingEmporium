<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="CSS files/ff.css">
<link rel="stylesheet" href="CSS files/m.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

/*Main css*/
.loginbtn a {
	text-decoration: none;
	padding: 10px;
	font-size: 18px;
	color: #000;
	/* background-color: aqua; */
}

.loginbtn {
	/* background-color:palegoldenrod; */
	padding: 10px;
	height: 50px;
	width: 100px;
	margin: 10px;
	font-weight: 600;
	font-family: 'Open Sans', sans-serif;
	letter-spacing: 1.5px;
	text-decoration: none;
	font-size: 18px;
	color: white;
	cursor: pointer;
}
.profile {
    opacity: 0;
}
.profile.show {
    opacity: 1;
    transition: opacity 0.5s ease-in-out;
}
.profile {
    animation-name: fadeInProfile;
    animation-duration: 0.5s; /* Animation duration */
    animation-delay: 2s; /* Delay before animation starts (2 seconds) */
    animation-fill-mode: forwards; /* Keep the final state of the animation */
}

@keyframes fadeInProfile {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.cart{
	text-decoration: none;
	font-size: 20px;
	color: white;
	font-family: 'Open Sans', sans-serif;
}
.loginbtn, .cart {
	opacity: 0; /* Initially set opacity to 0 to hide the button */
	transition: opacity 0.5s ease-in-out; /* Add transition effect */
	pointer-events: none;
	/* Disable pointer events to prevent interaction */
	user-select: none; /* Disable text selection */
	animation-name: fadeIn;
	animation-duration: 0.5s; /* Animation duration */
	animation-delay: 2s; /* Delay before animation starts */
	animation-fill-mode: forwards;
	/* Keep the final state of the animation */
}

/* Class to show the login button */
.loginbtn.show, .cart.show {
	opacity: 1; /* Set opacity to 1 to show the button */
	pointer-events: auto; /* Enable pointer events */
}
/* Delayed appearance using animation delay */
@
keyframes fadeIn
 {
from { opacity:0;
	
}
to {
	opacity: 1;
}

}
.account {
	color: black; /* Change the color to black */
	display: flex;
	align-items: center;
}

.account img {
	margin-right: 8px;
}

.account span {
	margin-right: 10px;
}

.rightheader {
	/*  display: flex; */
	/*      justify-content: flex-end;  */ /* Align to the right */
	margin-bottom: 20px; /* Add margin for spacing */
}

.div2 {
	margin-top: 20px; /* Add margin to move the list down */
}

.rightheader {
	flex: 25%;
	display: flex;
	align-items: center;
	justify-content: flex-end;
	column-gap: 10px;
	position: absolute;
	top: 20px;
	right: 250px;
	z-index: 1000;
}

.rightheader a {
	padding: 0px;
	margin: 0px;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.profile {
	position: relative;
	border-radius: 5px solid ;
    width: 160px;
    font-size: 22px;
    top: -10px;
    left: 130px;
    
}
.useracc{
	padding: 5px;
}
.profile .useracc {
    
	background-color: rgb(138, 10, 10);
    border-radius: 10px;
    color: white;
    font-family: 'Open Sans', sans-serif;
	display: flex;
	align-items: center;
	border: 1px solid transparent;
	box-sizing: border-box;
}

.profile:hover .useracc {
	background: #fafafa;
	border-radius: 8px;
	border-color: #e0e0e0;
	color: black;
}

.profile .profilelist {
	position: absolute;
	top: 100%;
	padding: 0;
	margin: 0;
	list-style: none;
	background-color: #fff;
	border: 1px solid #f0f0f0;
	min-width: 100px;
	width: 160px;
	box-shadow: 0 4px 16px 0 rgb(0 0 0/ 20%);
	z-index: 100;
	display: none;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
}
.arrow{
	margin: 0px 10px;
}

.profile:hover .arrow {
	transform: rotate(180deg);
	transition: transform .3s ease-in-out;
}

.profile:hover .profilelist {
	display: block;
}

.listlink {
	color: #000;
	text-decoration: none;
	text-align: center;
	font-size: 14px;
	line-height: 20px;
	cursor: pointer;
}

.listitem:last-child {
	border-bottom: none;
}

.listitem:first-child {
	border-bottom: none;
}

.profilelist {
	background-color: black;
}

.listlink {
	display: flex;
	row-gap: 10px;
	align-items: left;
	justify-content: left;
}

.listitem {
	padding: 8px 12px;
	border-bottom: 1px solid #f0f0f0;
	display: flex;
	align-items: center;
}

.listitemdiv {
	display: flex;
}

.listitemdiv a {
	text-decoration: none;
	font-size: 12px;
	font-weight: 600;
	font-family: 'arial';
	color: black;
	letter-spacing: 0.5px;
	text-transform: capitalize;
	text-align: center;
	line-height: 20px;
	cursor: pointer;
}


	
</style>
</head>
<body>

	<!-- seacrch bar -->
	<div style="height: 594px;">
		<!-- Right header section -->
		<div class="rightheader">
			<%
			// Retrieve username from session attribute
			String username = (String) session.getAttribute("username");
			if (username != null) {
			%>
			<div class="profile">
				<div class="useracc">
					<a class="account"> <a><img src="assets/user.png"
							height="20px" width="20px" style="margin-right: 20px;"></a> <span>Account</span>
					</a> <img src="assets/arrow.png" class="arrow" height="16px"
						width="16px" >
				</div>
				<ul class="profilelist">
					<li class="listitem">
						<div class="listitemdiv">
							<a href="profile"><img src="assets/user.png" height="18px"
								width="18px"></a> <a href="profile"
								style="padding-left: 10px;">My Profile</a>
						</div>
					</li>
					<li class="listitem">
						<div class="listitemdiv">
							<a><img src="assets/logout.png" height="18px" width="18px"></a>
							<a href="logout" style="padding-left: 10px;">Logout</a>
						</div>
					</li>
				</ul>
			</div>
			<%
			} else {
			%>
			<!-- Add login form or prompt for unauthenticated users -->
			<a href="login.html" class="loginbtn"> <button class="b1"> Log in </button></a>
			<%
			}
			%>
			<a href="cart" class="cart"> <button class="b1">Cart</button></a>
		</div>

		<!-- first page div -->
		<div>
			<div class="div3">
				<i class="fa-solid fa-magnifying-glass"></i>
			</div>
			<input type="text" placeholder="SEARCH">
		</div>

		<!-- JUO Logo -->
		<div class="div1">JUO</div>

		<!-- list items -->
		<div class="div2">
			<div class="div2i">
				<ul>
					<li><a href="#object.com">OBJECTS</a></li>
					<li><a href="#gallery.com">OUR GALLERY</a></li>
					<li><a href="#about.com">ABOUT</a></li>
					<li><a href="#contact.com">CONTACTS</a></li>
				</ul>
			</div>
		</div>

		<!--IF img  -->
		<div class="div4"></div>

		<!--Our gallery boxes  -->
		<div class="div5">
			<div>
				<div class="box1 "></div>
				<div class="box1 "></div>
			</div>

			<div>
				<div class="box2 "></div>
				<div class="box2 "></div>
			</div>
			<span class="span1"> <pre>
                    OUR
                    GALLERY
                </pre>
			</span>
		</div>

		<!--  Furniture and interior design  -->
		<div>
			<pre class="pre1">
            Furniture &
            interior design
        </pre>
			<div class="div6">Founded in 2017 by Terence Ngan, the studio
				is accustomed to creating remarkable environments.</div>
		</div>
	</div>

	<!-- OBJECTS imgs -->
	<div id="object.com" style="height: 650px;">
		<div class="img1"></div>
		<div class="img2"></div>

		<h1 class="h">Objects</h1>
		<p class="para">We are motivated by pushing the possibilities of
			form and exploring different techniques to challenge what exists.</p>
		<button class="btn1">
			<marquee behavior="scroll" direction="left"
				onmouseout="this.start();" onmouseover="this.stop();">
				EXPLORE </marquee>
		</button>

	</div>

	<!-- Our Gallery -->
	<div id="gallery.com">
		<div class="img3">
			<div class="blank">
				<div class="img7"></div>
				<div class="clr1 clr">
					<a href="item?type=Blue arm chair">
						<div class="img4"></div> <pre>BLUE ARM CHAIR   4500Rs</pre>
					</a>
				</div>
				<div class="clr2 clr">
					<a href="item?type=Green Chair">
						<div class="img5"></div> <pre>GREEN CHAIR   3900Rs</pre>
					</a>
				</div>
				<div class="clr3 clr">
					<a href="item?type=Shaken Lamp">
						<div class="img6"></div> <pre>SHAKEN LAMP   6200Rs</pre>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- ABOUT -->
	<div id="about.com" class="about">
		<span class="juologo"> JUO </span> <span class="studiologo">
			STUDIO </span>
		<div class="aboutpro">
			<div class="abt">About</div>
			<div class="aboutpara">An expanded design studio with a main
				stage and loft offers customers a space to show their furniture
				design ideas, and access a design team who work closely with them to
				develop their unique vision for their space.</div>
			<button class="aboutbtn">EXPLORE</button>
		</div>
		<div class="img8"></div>
		<div class="img9"></div>
		<div class="img10"></div>
	</div>

	<!-- CONTACT id="contact.com" -->
	<div id="contact.com" class="contact">
		<div class="txt abt">
			<marquee behavior="" direction="up">Let's have a chat!</marquee>
		</div>
		<hr>
		<div class="div1 rediv1">JUO</div>
		<div class="para2">The addition of larger design studios,
			offering customers private space</div>
		<div class="sitemap1">SITEMAP</div>
		<div class="container1">
			<div class="sitemap">
				<a href="#object.com">Objects</a>
			</div>
			<div class="sitemap">
				<a href="#about.com">About</a>
			</div>
			<div class="sitemap">
				<a href="#gallery.com">Our gallery</a>
			</div>
			<div class="sitemap">
				<a href="#contact.com">Contacts</a>
			</div>
		</div>
		<div class="con1">CONTACT</div>
		<div class="container2">
			<div class="con">
				<a href="https://www.google.com/">www.halo-lab.com</a>
			</div>
			<div class="con">
				<a href="tel:9999999999:">IND: +919999999999</a>
			</div>
			<div class="con">
				<a href="mailto:mail@halo-lab.com">mail@halo-lab.com</a>
			</div>
			<div class="con">India, New Delhi, 110051</div>
		</div>
		<div class="container3">
			<div class="btn">
				<i class="fa-solid fa-basketball"></i> </i>
			</div>
			<div class="btn">
				<i class="fa-brands fa-instagram"></i>
			</div>
			<div class="btn">
				<i class="fa-brands fa-linkedin-in"></i>
			</div>
			<div class="btn">
				<i the="fa-brands fa-behance"></i>
			</div>
			<div class="btn">
				<i class="fa-brands fa-facebook-f"></i>
			</div>
		</div>
		<div class="footer">
			<p>
				<i class="fa-solid fa-heart" style="color: yellow;"></i> <a href="">Like
					& Follow</a> from you. New free to use projects from us.
			</p>
		</div>
	</div>
	
	<script>
	window.addEventListener('load', function() {
	    // This code runs when the page finishes loading

	    // Wait for 2 seconds (2000 milliseconds)
	    setTimeout(function() {
	        // After 2 seconds, add the 'show' class to the login button, cart, and profile
	        document.querySelector('.loginbtn').classList.add('show');
	        document.querySelector('.cart').classList.add('show');
	      
	    }, 2000); // 2 seconds delay
	    setTimeout(function() {
	        // After 2 seconds, add the 'show' class to the login button, cart, and profile
	    	 document.querySelector('.profile').classList.add('show');
	    	   document.querySelector('.cart').classList.add('show');
	    }, 2000);
	   
	});

	</script>

</body>

</html>
