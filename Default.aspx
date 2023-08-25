﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta content="IE=edge" http-equiv="X-UA-Compatible" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta charset="utf-8" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

	<title>Genetic Diagnostic Center</title>

	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<!--<style type="text/css">
		.drgallery {
			background: #ccc url("images/dr-image-3.jpg") no-repeat left center;
			background-size: contain;
			width: 100%;
			height: 550px;
		}
	</style>-->

	<link href="adminpanel/css/geneticdc.css" rel="stylesheet" />
	<script src="adminpanel/js/jquery-2.2.4.min.js"></script>
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap" rel="stylesheet" />

	<link href="adminpanel/css/toastr.css" rel="stylesheet" />
	<script src="adminpanel/js/toastr.js"></script>
	<script src="adminpanel/js/jquery.backstretch.js"></script>
	<link href="adminpanel/css/rating-stars.css" rel="stylesheet" />


	 <script type="text/javascript">
		 function ValidateForm() {
			 alert("Review data called");
			 let name = document.forms["rating-review"]["txtTestName"].value;
			 if (name == "") {
				 TostTrigger('warning', 'Please Enter Your Name');
				 //alert("Please Enter Name");
				 return false;
			 }

			 let email = document.forms["rating-review"]["txtTestEmail"].value;
			 if (email == "") {
				 TostTrigger('warning', 'Please Enter Email Address');
				 return false;
			 }
			 let mobileno = document.forms["rating-review"]["txtTestMobNo"].value;
			 if (mobileno == "") {
				 TostTrigger('warning', 'Please Enter Mobile no');
				 return false;
			 }
			 let review = document.forms["rating-review"]["txtTestReview"].value;
			 if (review == "") {
				 TostTrigger('warning', 'Please Enter Review');
				 return false;
			 }
			 let starrating = document.forms["rating-review"]["rating"].value;
			 if (starrating == "") {
				 TostTrigger('warning', 'Select Star Rating');
				 return false;
			 }


			 //set values to testimonials object
			 var TestimonialsData = {};
			 TestimonialsData.TestPerson = $('#txtTestName').val();
			 TestimonialsData.TestEmail = $('#txtTestEmail').val();
			 TestimonialsData.TestMobileNo = $('#txtTestMobNo').val();
			 TestimonialsData.TestInfo = $('#txtTestReview').val();
			 //TestimonialsData.TestRating = $('#star').val();



			 $.ajax({
				 type: "POST",
				 url: "Default.aspx/SaveTestimonials",
				 data: '{custinfo: ' + JSON.stringify(TestimonialsData) + '}',
				 //alert(data);,
				 contentType: "application/json; charset=utf-8",
				 dataType: "json",
				 success: function (response) {
					 //alert('Testimonials added Successfully!' + response.d);
					 TostTrigger('success', 'Testimonial Submited Successfully!');
					 document.getElementById('txtTestName').value = '';
					 document.getElementById('txtTestEmail').value = '';
					 document.getElementById('txtTestMobNo').value = '';
					 document.getElementById('txtTestReview').value = '';
				 },
				 failure: function (response) {
					 alert(response.d);
				 }
			 });
		 }

   </script>
	<script type="text/javascript">
		function GetRating(rating) {
			//alert(rating.value);

			$.ajax({
				type: "POST",
				url: "Default.aspx/GetRating",
				data: '{ratingValue: ' + rating.value + '}',
				//alert(data);,
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				success: function (response) {
					//alert('rating ' + response.d);
				},
				failure: function (response) {
					alert(response.d);
				}
			});
		}
	</script>




	<script type="text/javascript">
		function TostTrigger(EventName, MsgText) {
			// code to be executed
			Command: toastr[EventName](MsgText)
			toastr.options = {
				"closeButton": true,
				"debug": false,
				"newestOnTop": false,
				"progressBar": false,
				"positionClass": "toast-top-full-width",
				"preventDuplicates": false,
				"onclick": null,
				"showDuration": "300",
				"hideDuration": "1000",
				"timeOut": "5000",
				"extendedTimeOut": "1000",
				"showEasing": "swing",
				"hideEasing": "linear",
				"showMethod": "slideDown",
				"hideMethod": "fadeOut"
			}

		}
	</script>
</head>
<body>
	<!---Header Start-->
	<div id="header" class="width100">
		<div class="themeBgPrime">
			<div class="pad_5">
				<div class="col_1140">
					<a href="tel:+919356386806" class="topCall">+91 9356 38 6806</a>
					<div class="socialBox">
						<a href="#" target="_blank" class="topFb" title="Follow Us on facebook"></a>
						<a href="#" target="_blank" class="topInsta" title="Follow Us on Instagram"></a>
						<a href="#" target="_blank" class="topyouTube" title="Follow Us on youtube"></a>
					</div>
					<div class="float_clear"></div>
				</div>
			</div>
		</div>
		<div class="pad_TB_10">
			<div class="col_1140 posRelative">
				<a href="<%=rootPath %>" title="Genetic Diagnostic Center" class="txtDecNone">
					<img src="images/geneticdc-logo1.jpg" alt="Genetic Diagnostic Center" class="logo" />
					<!--<img src="images/geneticdc-logo.png" />-->
					<!--<div class="logoName">
						<h2 class="semiBold regular clrBlack mrg_B_3">Dr. Chandrakant Lahane</h2>
						<span class="themeClrSec fontRegular letter-sp-3 upperCase">MBBS, MD Medicine<br /> DNB Clinical Haematologist</span>
					</div>-->
				</a>
				<%--<a href="#" class="btnAppointment semiBold upperCase small letter-sp-2">Health Packages</a>--%>
				<div id="nav">
					<div id="topNavPanel">
						<div class="col_1140">
							<ul id="topNav">
								<a href="javascript:void(0)" class="closeBtn" onclick="closeNav()">&times;</a>
								<li><a href="<%=rootPath %>">Home</a></li>
								<li><a href="about-us">About Us</a></li>
								<li><a href="disease-segment">Disease Segment</a></li>
								<li><a href="news">News</a></li>
								<!--<li class="app"><a href="#appointment">Health Packages</a></li>-->
								<li><a href="testimonials">Review</a></li>
								<li><a href="contact-us">Contact</a></li>
							</ul>
							<div class="float_clear"></div>
							<div id="mobNav">
								<div class="pad_30">
									<span class="tiny upperCase clrWhite letter-sp-3 mrg_B_15">Phone:</span>
									<a href="tel:+919356386806" class="medium clrWhite light txtDecNone">+91 9356 38 6806</a>
									<span class="space30"></span>
									<span class="tiny upperCase clrWhite letter-sp-3 mrg_B_15">Email:</span>
									<a href="mailto:demo@gmail.com" class="clrWhite breakWord txtDecNone">geneticdiagnostic21&#64;gmail&#46;com</a>
									<span class="space30"></span>
									<span class="tiny upperCase clrWhite letter-sp-3 mrg_B_15">Follow Us:</span>
									<a href="#" target="_blank" class="fb socIco" title="Follow us on facebook"></a>
									<a href="#" target="_blank" class="insta socIco" title="Follow us on instagram"></a>
									<a href="#" target="_blank" class="youTube socIco" title="Follow us on Youtube"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="float_clear"></div>
					<a id="navBtn" onclick="openNav()"></a>
				</div>
			</div>
		</div>
	</div>
	<!---Header End-->
	<!-- Banner Starts -->
	<div id="bannerSp"></div>
	<div class="bannerSpacer" id="bannerSp"></div>
	<div class="banner dis-tbl" data-aos=" fade-down" data-aos-easing="linear" data-aos-duration="1000">
		<div class="bannerOverlay tbl-cell">
			<div class="col_1140">
				<div class="txtCenter">
					<div class="">
						<span class=""></span>
						<div class="">
							<h1 class="typewrite semiBold xxlarge clrWhite mrg_B_5 upperCase" data-period="2000" data-type='[ "WELCOME TO GENETIC DIAGNOSTIC CENTER." ]'>
								<span class="wrap"></span>
							</h1>
							<h2 class="semiBold semi-large clrWhite">Quality, Reliability And Timely Delivery.
							</h2>
						</div>
					</div>
					<!--<div class="container">
						<h1>Hi, my name is</h1>
						<h1>WELCOME TO GENETIC DIAGNOSTIC CENTER.</h1>
						<h1>Quality, Reliability And Timely Delivery.</h1>

					</div>-->

				</div>
				<div class="float_clear"></div>
			</div>
		</div>
	</div>
	<!-- Banner Ends -->
	<!-- Why chosee us Start -->
	<span class="space50"></span>
	<div class="col_1140 overflowHidden">
		<div class="txtCenter">
			<div class="section-title">
				<h2>Why Choose Genetic Diagnostic Center</h2>
			</div>
			<!--<div id="abouttxt">
				<span class="space5"></span>
				<h2 class="themeClrSec semi-large txtCenter semiBold mrg_B_30">Why Choose Genetic Diagnostic Center</h2>
			</div>-->

			<p class="clrBlack line-ht-5 fontRegular regular">Genetic Diagnostic Center is the best-in-class laboratories from across India, We are one of leading and renowned Indian diagnostics companies.</p>
		</div>
		</div>
		<span class="space30"></span>
		<div class="bgcolor">
			<div class="col_1140">
				<span class="space30"></span>
			<%--<h2 class="semiBold txtCenter large themeClrPrime" style="position:relative;z-index:100">Why Choose Us</h2>--%>
				<div class="col_1_3">
					<div class="pad_20">
						<div class="txtCenter">
							<img src="images/icons/quality.png" class="" style="position:relative;z-index:100" />
							<span class="space5"></span>
							<span class="bold themeClrPrime semiMedium" style="position:relative;z-index:100">Quality</span>
							<span class="space10"></span>
							 <p class="fontRegular small line-ht-5" style="position:relative;z-index:100">
					Quality of life (QoL) refers to an individual's sense of overall well-being encompassing physical, psychological, emotional, social, and spiritual dimensions. Although genetics healthcare providers strive to promote patient well-being,
				</p>
						</div>
					</div>
				</div>
				<div class="col_1_3">
					<div class="pad_20">
						<div class="txtCenter">
							<img src="images/icons/shield.png" class="" />
							<span class="space5"></span>
							<span class="bold themeClrPrime semiMedium" >Reliability</span>
							<span class="space10"></span>
							 <p class="fontRegular small line-ht-5" style="position:relative;z-index:100">
					Cortical folds help drive the parcellation of the human cortex into functionally specific regions. Variations in the length, depth, width, and surface area of these sulcal landmarks have been associated with disease,
				</p>
						</div>
					</div>
				</div>
				<div class="col_1_3">
					<div class="pad_20">
						<div class="txtCenter">
							<img src="images/icons/fast-delivery.png" class="" />
							<span class="space5"></span>
							<span class="bold themeClrPrime semiMedium ">Timely Delivery</span>
							<span class="space10"></span>
							<p class="fontRegular small line-ht-5">
					Delivering medical supplies and equipment cannot be compared to shipping other goods door-to-door. Last mile deliveries are already challenging, but more problems are facing companies engaged in medical delivery services.
				</p>
						</div>
					</div>
				</div>
					<div class="float_clear"></div>
				<div id="review"></div>
				<span class="space30"></span>
				</div>
			</div>
			
	   

		<%--<ul class="tilesWrap">
			<li>
				<div class="">
					<img class="tileWrapimg" src="images/icons/quality.png" />
					<h3 class="semiMedium">Quality</h3>
				</div>
				<p>
					Quality of life (QoL) refers to an individual's sense of overall well-being encompassing physical, psychological, emotional, social, and spiritual dimensions. Although genetics healthcare providers strive to promote patient well-being,
				</p>
			</li>
			<li>
				<img class="tileWrapimg" src="images/icons/shield.png" />
				<h3>Reliability</h3>
				<p>
					Cortical folds help drive the parcellation of the human cortex into functionally specific regions. Variations in the length, depth, width, and surface area of these sulcal landmarks have been associated with disease,
				</p>
			</li>
			<li>
				<img class="tileWrapimg" src="images/icons/fast-delivery.png" />
				<h3>Timely Delivery</h3>
				<p>
					Delivering medical supplies and equipment cannot be compared to shipping other goods door-to-door. Last mile deliveries are already challenging, but more problems are facing companies engaged in medical delivery services.
				</p>
			</li>
		</ul>--%>
		<div id="about"></div>
		<!--<div class="col_1_3 txtCenter" data-aos="fade-right" data-aos-duration="1000">
			<div class="pad_15">
				<img src="images/icons/quality.png" class="" />
				<span class="space5"></span>
				<span class="semiBold themeClrPrime semiMedium">Quality</span>
			</div>
		</div>
		<div class="col_1_3 txtCenter" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
			<div class="pad_15">
				<img src="images/icons/shield.png" class="" />
				<span class="space5"></span>
				<span class="semiBold themeClrPrime semiMedium">Reliability</span>
			</div>
		</div>
		<div class="col_1_3 txtCenter" data-aos="fade-left" data-aos-duration="1000">
			<div class="pad_15">
				<img src="images/icons/fast-delivery.png" class="" />
				<span class="space5"></span>
				<span class="semiBold themeClrPrime semiMedium">Timely Delivery</span>
			</div>
		</div>-->

		<div class="float_clear"></div>
	
	<!-- Why chosee us End -->
	<!--About us start  -->
	<%--<span class="space50"></span>
	<div class="col_1140 overflowHidden">
		<div class="txtCenter">
			<div class="section-title">
				<h2>About</h2>
			</div>
			<span class="space10"></span>
			<span class="semiBold semiMedium">Genetic Diagnostic Center</span>
			<span class="space10"></span>
			<span class="semiBold regular">Quality, Reliability And Timely Delivery.</span>
		</div>
		<div class="col_800" data-aos="fade-right" data-aos-duration="1000">
			<div class="pad_30">
				<h1 class="semiBold medium themeClrPrime mrg_B_5">Genetic In Best Form...!!!</h1>
				<span class="space10"></span>
				<p class="line-ht-5 fontRegular small mrg_B_15">
					As a medium-sized, family-owned company employing highly skilled people in Pune,Sangli We're daily driven by our motto: Genetic In Bestform - Genetic in its best. We are generalists and specialist, fascinated of innovation and Quality, with passion and innovative ideas we face new tasks and challenges everyday.
					<span class="space10"></span>
					<span class="semiBold">We believes
						<span class="themeClrPrime">"Your Success is Our Success"</span>
					</span>
					<span class="space10"></span>
					Genetic Diagnostic Center our customers by outstanding performance which is much higher than whatever they might have expected. Our customers can rely on us – always and at any time.
					<span class="space10"></span>
					Our thinking and acting is affected by long-term success and well-being of our company and all colleagues at any time. By the outstanding engagement of everybody we increase company value and secure our future.
					<span class="space10"></span>
					With our portfolio, market-driven price-performance ratio, product-related services such as net analysis, short time measurements and consulting as well as customized after-sales services, we‘re providing intelligent genetic and Routing test solutions out of one hand.
				</p>
			</div>
			<div id="serv"></div>
		</div>
		<span class="space80"></span>
		<div class="col_340_right" data-aos="fade-left" data-aos-duration="1000">
			<img src="images/genetic-diases.jpg" class="width100" />
		</div>

		<div class="float_clear"></div>
	</div>--%>
	<div id="contact"></div>
	<!--About us end  -->
	<!--Contact us strat  -->
	<%--<span class="space50"></span>
	<div class="txtCenter">
		<div class="section-title">
			<h2>Contact Us</h2>
		</div>
	</div>
	<div class="bgApp">
		<span class="space50"></span>
		<div class="col_1140 conBoxShadow overflowHidden" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
			<div class="width60 bgWhite" id="conForm">
				<div class="pad_30">
					<form autocomplete="off">
						<h3 class="large clrBlack semiBold mrg_B_10">Send Us Enquiry</h3>
						<span class="shortLine themeBgPrime"></span>
						<span class="space10"></span>
						<div class="inputBox w100">
							<input type="text" id="txtName" class="conTxtBox userName w95" maxlength="50" required />
							<span>Name :*</span>
						</div>
						<div class="inputBox w50 float_left">
							<div class="app_r_padding">
								<input type="text" id="txtEmail" class="conTxtBox conEmail w95" maxlength="50" required />
								<span>Email Address :*</span>
							</div>
						</div>
						<div class="inputBox w50 float_left">
							<div class="app_r_padding1">
								<input type="text" id="txtMobile" class="conTxtBox conMob w95" maxlength="10" required />
								<span>Mobile No :*</span>
							</div>
						</div>
						<div class="float_clear"></div>
						
						<div class="">
							<div class="inputBox w100">
								<input type="text" id="txtName" class="conTxtBox compName w95" maxlength="50" required />
								<span>Company Name :*</span>
							</div>
						</div>
						<div class="float_clear"></div>
						<div class="inputBox w100">
							<textarea id="txtMsg" class="conTxtBox conDesc w95" cols="20" rows="2" required></textarea>
							<span>Message :*</span>
						</div>
						<input id="btnSubmit" type="button" value="Send" class="buttonForm upperCase semiBold letter-sp-2" onclick="submitForm()" />
					</form>
				</div>
			</div>
			<div class="width40">
				<div class="conInfoBox" id="conInfo">
					<div class="pad_30">
						<h2 class="large clrWhite">Contact Info</h2>
						<span class="shortLine bgWhite"></span>
						<span class="space20"></span>
						<span class="clrWhite semiBold regular">Need to discuss before treatment ?</span>
						<span class="space20"></span>
						<span class="home conIco">Shop No. 1, 350/2,Oza Building, Opp. Sundar Nagari, Somwar Peth, Pune - 411 011.</span>
						<span class="space40"></span>
						<a href="tel:+919987290193" class="conCall conIco txtDecNone">+91 9356 38 6806</a>
						<span class="conIco">+91 9284 76 8553</span><br />
						<span class="conIco">+91 8888 86 9241</span>
						<span class="space40"></span>
						<a href="mailto:rohiniwadekar21@gmail.com" class="conMail conIco breakWord txtDecNone">geneticdiagnostic21&#64;gmail&#46;com</a>
					</div>
					
				</div>
			</div>
		</div>
		<span class="space40"></span>
	</div>--%>

	<span class="space40"></span>
	<!--Contact us end  -->


	<!-- Testimonials start -->
	<span class="space50"></span>
	<div class="col_1140 overflowHidden">
		<div class="section-title">
			<h2>Testimonials</h2>
		</div>
		<%=testimonialStr %>
<%--		<div class="col_1_3 txtCenter" data-aos="fade-left" data-aos-duration="1000">
			<div class="pad_20">
				<img class="" src="images/icons/quotes.png" />
				<span class="space3"></span>
				<img class="" src="images/icons/4-star.png" /><br />
				<span class="semiBold themeClrPrime semiMedium">Pallavi Ramesh Dhadake</span><br />
				<span class="small line-ht-5 fontRegular semiBold">06/07/2022</span>
				<span class="space10"></span>

				<p class="clrDarkGrey fontRegular small line-ht-5 mrg_B_20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>

				<div class="testline"></div>
			</div>
		</div>
		<div class="col_1_3 txtCenter" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
			<div class="pad_20">
				<img class="" src="images/icons/quotes.png" />
				<span class="space3"></span>
				<img class="" src="images/icons/4-star.png" /><br />
				<span class="semiBold themeClrPrime semiMedium">Pallavi Ramesh Dhadake</span><br />
				<span class="small line-ht-5 fontRegular semiBold">06/07/2022</span>
				<span class="space10"></span>

				<p class="clrDarkGrey fontRegular small line-ht-5 mrg_B_20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>

				<div class="testline"></div>
			</div>
		</div>
		<div class="col_1_3 txtCenter" data-aos="fade-right" data-aos-duration="1000">
			<div class="pad_20">
				<img class="" src="images/icons/quotes.png" />
				<span class="space3"></span>
				<img class="" src="images/icons/4-star.png" /><br />
				<span class="semiBold themeClrPrime semiMedium">Pallavi Ramesh Dhadake</span><br />
				<span class="small line-ht-5 fontRegular semiBold">06/07/2022</span>
				<span class="space10"></span>

				<p class="clrDarkGrey fontRegular small line-ht-5 mrg_B_20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>

				<div class="testline"></div>
				
				 
			</div>
		</div>--%>

		<span class="space20"></span>
		<div class="txtCenter"><a href="testimonials" class="readAnch txtDecNone semiBold upperCase small letter-sp-2">All Testimonials</a></div>
		<div class="float_clear"></div>
		

		<%--<div class="section-title">
			<h2>Rate Us</h2>
		</div>
		<div data-aos="fade-right" data-aos-duration="1000">
			<p class="small line-ht-5 txtCenter">Your email address and mobile will not be shared in this website.</p>
			<span class="space10"></span>
			<form id="rating-review" autocomplete="off" data-aos="fade-right" data-aos-duration="1000">
				<div class="inputBox w100">
					<input type="text" id="txtTestName" class="conTxtBox userName w95" maxlength="50" required />
					<span>Name :*</span>
				</div>
				<div class="inputBox w100">
					<input type="text" id="txtTestEmail" class="conTxtBox conEmail w95" maxlength="50" required />
					<span>Email :*</span>
				</div>
				<div class="inputBox w100">
					<input type="text" id="txtTestMobNo" class="conTxtBox conMob w95" maxlength="10" required />
					<span>Mobile No :*</span>
				</div>

				<!--star rating here-->
				<div class="stars" id="star">
					<input type="radio" name="rating" class="star-1" id="star-1" value="1" onclick="GetRating(this);" />
					<label class="star-1" for="star-1">1</label>
					<input type="radio" name="rating" class="star-2" id="star-2" value="2" onclick="GetRating(this);" />
					<label class="star-2" for="star-2">2</label>
					<input type="radio" name="rating" class="star-3" id="star-3" value="3" onclick="GetRating(this);" />
					<label class="star-3" for="star-3">3</label>
					<input type="radio" name="rating" class="star-4" id="star-4" value="4" onclick="GetRating(this);" />
					<label class="star-4" for="star-4">4</label>
					<input type="radio" name="rating" class="star-5" id="star-5" value="5" onclick="GetRating(this);" />
					<label class="star-5" for="star-5">5</label>
					<span></span>
				</div>

				<div class="inputBox w100">
					<textarea id="txtTestReview" class="conTxtBox conDesc w95" cols="20" rows="2" required></textarea>
					<span>Review :*</span>
				</div>

				<div class="inputBox w100">
					<input id="btnSubmitTestimonial" type="button" value="Submit" class="buttonForm upperCase semiBold letter-sp-2" onclick="ValidateForm();" />
				</div>
			</form>
		</div>--%>
	</div>

	<!-- Testimonials end -->

	<!-- Dieases segment start -->
	<span class="space70"></span>
	<%-- <div class="section-title">
			<h2>Disease Segment</h2>
		</div>--%>
	<div class="bglightclr">
		<div class="bgwavebackground">
			<div class="col_1140">
				<span class="space50"></span>
				<div class="col_1_2 " data-aos="fade-left" data-aos-duration="1000">
					<div class="pad_30">
						<h2 class="bold large themeClrPrime mrg_B_10" <%--style="position:relative;z-index:100"--%>>Disease Segment</h2>
						<p class="fontRegular small line-ht-5" style="position: relative; z-index: 100">
							Therefore patient segmentation is a term for dividing up the pool of patients with the same condition based on shared characteristics.Patient segmentation is usually based on the following elements: the assessment, definition, and operationalisation of population or patient characteristics that are related to healthcare needs, outcomes aimed at when addressing population or patient needs, and the segmentation logic expressing how subpopulations
						</p>
					</div>
				</div>
				<div class="col_1_2" data-aos="fade-right" data-aos-duration="1000">
					<div class="containerwave">
						<div class="">
							<div class="imgbox float_left">
								<div class="pad_15">
									<div class="txtCenter">
										<img src="images/icons/hematology.png" />
										<span class="space10"></span>
										<a href="diseasesegment#hematology" class="semiBold clrBlack txtDecNone regular">Hematology</a>
									</div>
								</div>
							</div>
							<div class="imgbox float_right">
								<div class="pad_15">
									<div class="txtCenter">
										<img src="images/icons/immunology.png" />
										<span class="space10"></span>
										<a href="diseasesegment#immunology" class="semiBold clrBlack txtDecNone regular">Immunology</a>
									</div>
								</div>
							</div>
							<div class="float_clear"></div>
							<div class="imgbox float_left">
								<div class="pad_15">
									<div class="txtCenter">
										<img src="images/icons/metabolic.png" />
										<span class="space10"></span>
										<a href="diseasesegment#metabolic" class="semiBold clrBlack txtDecNone regular">Metabolic Disorders</a>
									</div>
								</div>
							</div>
							<%--<div class="float_clear"></div>--%>
							<div class="imgbox float_right">
								<div class="pad_15">
									<div class="txtCenter">
										<img src="images/icons/neurology.png" />
										<span class="space10"></span>
										<a href="diseasesegment#neurology" class="semiBold clrBlack txtDecNone regular">Neurology</a>
									</div>
								</div>
							</div>
							<div class="float_clear"></div>
						</div>
					</div>
				</div>
				<div class="float_clear"></div>

				<span class="space50"></span>
			</div>
		</div>
	</div>
	<span class="space50"></span>
	<!-- Dieases segment end -->

	<%-- News start --%>
	<div class="col_1140">
		<div class="section-title">
			<h2>News</h2>
		</div>
		<%=nwsstr %>
		<%--<div class="col_1_3"  data-aos="fade-right" data-aos-duration="1000">
				<div class="pad_20">
					<a href="#" class="txtDecNone">
						<div class="nwImgHt">
							<img src="images/genetic-diases.jpg" class="width100"/>
						</div>
						<span class="space20"></span>
						<h5 class="newsTitle semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
						<i><span class="semiBold small clrDarkGrey">25 Sept 2021</span></i>
					</a>
				</div>
			</div>
		<div class="col_1_3" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
			<div class="pad_20">
				<a href="#" class="txtDecNone">
					<div class="nwImgHt">
						<img src="images/genetic-diases.jpg" class="width100"/>
					</div>
					<span class="space20"></span>
					<h5 class="newsTitle semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
					<i><span class="semiBold small clrDarkGrey">25 Sept 2021</span></i>
				</a>
			</div>
		</div>
		<div class="col_1_3" data-aos="fade-left" data-aos-duration="1000">
				<div class="pad_20">
					<a href="#" class="txtDecNone">
						<div class="nwImgHt">
							<img src="images/genetic-diases.jpg" class="width100"/>
						</div>
						<span class="space20"></span>
						<h5 class="newsTitle semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
						<i><span class="semiBold small clrDarkGrey">25 Sept 2021</span></i>
					</a>
				</div>
			</div>
		 <div class="float_clear"></div>--%>

			<span class="space30"></span>
			<div class="txtCenter"><a href="news" class="readAnch small semiBold upperCase letter-sp-2 mrg_R_15">More News</a></div>
		<span class="space30"></span>
	</div>
	 <%-- News end --%>
	

	<!-- map start -->
	<%--<span class="space35"></span>
	<div id="map-canvas" data-aos="fade-right" data-aos-easing="linear" data-aos-duration="1000"></div>--%>
	<!-- map end -->
	<!-- Footer Starts -->
	<div class="footer">
		<span class="space20"></span>
		<div class="col_1140 overflowHidden" data-aos="fade-left" data-aos-easing="linear" data-aos-duration="1000">
			<div class="col_1_3">
				<div class="pad_15">
					<h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Navigation</h4>
					<div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
					<ul class="footerNav">
						<li><a href="<%= rootPath %>">Home</a></li>
						<li><a href="about-us">About Us</a></li>
						<li><a href="disease-segment">Disease Segment</a></li>
						<li><a href="testimonials">Review</a></li>
						<li><a href="news">Latest News</a></li>
						<li><a href="contact-us">Contact Us</a></li>
					</ul>
				</div>
			</div>
			<div class="col_1_3">
				<div class="pad_15">
					<h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Get Social</h4>
					<div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
					<a href="#" target="_blank" class="foo_fb foo_socialIco" title="Follow us on facebook"></a>
					<a href="#" target="_blank" class="foo_youTube foo_socialIco" title="Follow us on youtube"></a>
					<a href="#" target="_blank" class="foo_insta foo_socialIco" title="Follow us on Instagram"></a>
				</div>
			</div>
			<div class="col_1_3">
				<div class="pad_15">
					<h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Contact Info</h4>
					<div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
					<span class="addr line-ht-5 small">Shop No. 1, 350/2,Oza Building, Opp. Sundar Nagari, Somwar Peth, Pune - 411 011.</span>
					<span class="space15"></span>
					<a href="mailto:geneticdiagnostic21@gmail.com" class="email line-ht-5 small txtDecNone breakWord">geneticdiagnostic21&#64;gmail&#46;com</a>
					<span class="space15"></span>
					<a href="tel:+919356386806" class="foo_call line-ht-5 small txtDecNone">+91 9356 38 6806</a>
					<a href="tel:+919284768553" class="foo_call line-ht-5 small txtDecNone">+91 9284 76 8553</a>
					<a href="tel:+918888869241" class="foo_call line-ht-5 small txtDecNone">+91 8888 86 9241</a>
				</div>
			</div>
			<div class="float_clear"></div>
		</div>
		<span class="space20"></span>
		<span class="footerLine"></span>
		<div class="col_1140 txtCenter">
			<div class="pad_15">
				<span class="clrGrey mrg_B_5 small fontRegular">&copy; <%= currentYear %> | Genetic Diagnostic Center , All Rights Reserved</span>
				<span class="clrGrey small fontRegular">Website By <a href="http://www.intellect-systems.com" target="_blank" class="intellect" title="Website Design and Development Service By Intellect Systems">Intellect Systems</a></span>
			</div>
		</div>
	</div>

	<!-- Footer End -->
	<script>
		AOS.init();
	</script>

	<script>
		var TxtType = function (el, toRotate, period) {
			this.toRotate = toRotate;
			this.el = el;
			this.loopNum = 0;
			this.period = parseInt(period, 10) || 2000;
			this.txt = '';
			this.tick();
			this.isDeleting = false;
		};

		TxtType.prototype.tick = function () {
			var i = this.loopNum % this.toRotate.length;
			var fullTxt = this.toRotate[i];

			if (this.isDeleting) {
				this.txt = fullTxt.substring(0, this.txt.length - 1);
			} else {
				this.txt = fullTxt.substring(0, this.txt.length + 1);
			}

			this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';

			var that = this;
			var delta = 200 - Math.random() * 100;

			if (this.isDeleting) { delta /= 2; }

			if (!this.isDeleting && this.txt === fullTxt) {
				delta = this.period;
				this.isDeleting = true;
			} else if (this.isDeleting && this.txt === '') {
				this.isDeleting = false;
				this.loopNum++;
				delta = 500;
			}

			setTimeout(function () {
				that.tick();
			}, delta);
		};

		window.onload = function () {
			var elements = document.getElementsByClassName('typewrite');
			for (var i = 0; i < elements.length; i++) {
				var toRotate = elements[i].getAttribute('data-type');
				var period = elements[i].getAttribute('data-period');
				if (toRotate) {
					new TxtType(elements[i], JSON.parse(toRotate), period);
				}
			}
			// INJECT CSS
			var css = document.createElement("style");
			css.type = "text/css";
			css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff; font-weight:600;}";
			document.body.appendChild(css);

			adjustHt();
		};
	</script>

	<script type="text/javascript">
		function openNav() {
			document.getElementById("topNavPanel").style.width = "320px";
			document.getElementById("navBtn").style.zIndex = "0";
		}

		function closeNav() {
			document.getElementById("topNavPanel").style.width = "0";
			document.getElementById("navBtn").style.zIndex = "5";
		}
	</script>


	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
	</script>
	<script type="text/javascript">
		function initialize() {

			var myLatlng = new google.maps.LatLng(18.502681969482005, 73.93204607959267);

			var mapOptions = {
				center: myLatlng,
				zoom: 21, scrollwheel: false, draggable: true,
			};

			var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
			var autoqed = {
				path: 'M95.35,50.645c0,13.98-11.389,25.322-25.438,25.322c-14.051,0-25.438-11.342-25.438-25.322   c0-13.984,11.389-25.322,25.438-25.322C83.964,25.322,95.35,36.66,95.35,50.645 M121.743,50.645C121.743,22.674,98.966,0,70.866,0   C42.768,0,19.989,22.674,19.989,50.645c0,12.298,4.408,23.574,11.733,32.345l39.188,56.283l39.761-57.104   c1.428-1.779,2.736-3.654,3.916-5.625l0.402-0.574h-0.066C119.253,68.516,121.743,59.874,121.743,50.645',
				fillColor: '#1d3b70',
				fillOpacity: 1,
				scale: 0.3
			};
			var marker = new google.maps.Marker({
				position: myLatlng,
				icon: autoqed,
				map: map,
				title: "Cuadra Medical Technology Pvt Ltd.",
				animation: google.maps.Animation.DROP
			});
			//alert("test");
			marker.addListener('click', toggleBounce);
			function toggleBounce() {
				if (marker.getAnimation() !== null) {
					marker.setAnimation(null);
				} else {
					marker.setAnimation(google.maps.Animation.BOUNCE);
				}
			}
		}
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>

	<script type="text/javascript">
		// Select all links with hashes
		$('a[href*="#"]')
			// Remove links that don't actually link to anything
			.not('[href="#"]')
			.not('[href="#0"]')
			.click(function (event) {
				// On-page links
				if (
					location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
					&&
					location.hostname == this.hostname
				) {
					// Figure out element to scroll to
					var target = $(this.hash);
					target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
					// Does a scroll target exist?
					if (target.length) {
						// Only prevent default if animation is actually gonna happen
						event.preventDefault();
						$('html, body').animate({
							scrollTop: target.offset().top
						}, 1000, function () {
							// Callback after animation
							// Must change focus!
							var $target = $(target);
							$target.focus();
							if ($target.is(":focus")) { // Checking if the target was focused
								return false;
							} else {
								$target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
								$target.focus(); // Set focus again
							};
						});
					}
				}
			});
	</script>

</body>
</html>
