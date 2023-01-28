<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CleaningServices1._Default" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--<link rel="stylesheet" href="animate.css">--%>

    <style>
        .textheight {
            height: 800px !important;
            text-align: center;
            font-size: 70px !important;
        }
    </style>


    <script type="text/javascript">window.$crisp = []; window.CRISP_WEBSITE_ID = "9331f54f-9335-4ef0-92e6-a7ddd6e6f0dd"; (function () { d = document; s = d.createElement("script"); s.src = "https://client.crisp.chat/l.js"; s.async = 1; d.getElementsByTagName("head")[0].appendChild(s); })();</script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div style="background-image: url('images/cleanteam.jpg'); background-size: cover; height: 800px; background-repeat: no-repeat;" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class=" textheight row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="  col-md-6 ftco-animate">
                    <h2 class="subheading">Leave the house cleaning chores to us</h2>

                    <h1 class="mb-4">Maid service you can trust —
            for a clean home you can enjoy.
                    </h1>
                    <asp:Button ID="Button1" runat="server" Text="Book Now" class="btn btn-primary mr-md-4 py-2 px-4" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb">
        <div class="overlay"></div>
        <div class="container">
            <div class="row d-md-flex justify-content-center">
                <div class="col-md-12">
                    <div class="wrap-appointment bg-white d-md-flex pl-md-4 pb-5 pb-md-0">
                        <form action="#" class="appointment w-100">
                            <div class="row justify-content-center align-items-center text-center">
                                <div class="col-12 col-md d-flex align-items-center pt-4 pt-md-0">
                                    <div class="form-group py-md-4 py-2 px-4 px-md-0">
                                        <label for="name">Name</label>
                                        <asp:TextBox ID="txtName" runat="server" type="text" class="form-control" placeholder="Your Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12 col-md d-flex align-items-center ">
                                    <div class="form-group py-md-4 py-2 px-4 px-md-0 ms-4">
                                        <label for="name">Phone number</label>
                                        <asp:TextBox ID="txtPhone" runat="server" type="text" class="form-control" placeholder="Phone number"> </asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-12 col-md d-flex align-items-center">
                                    <div class="form-group py-md-4 py-2 px-4 px-md-0">
                                        <label for="name">City</label>
                                        <div class="form-field">
                                            <div class="select-wrap">

                                                <asp:DropDownList class="form-control" ID="cityDropDown" runat="server">

                                                    <asp:ListItem Value="1">Mafraq</asp:ListItem>
                                                    <asp:ListItem Value="2">Jerash</asp:ListItem>
                                                    <asp:ListItem Value="3">Ajloun</asp:ListItem>


                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-12 col-md d-flex align-items-center">
                                    <div class="form-group py-md-4 py-2 px-4 px-md-0">
                                        <label for="name" >Select your location</label>
                                        <br />
                                        <asp:LinkButton OnClick="location_click" ID="LinkButton1" runat="server">
                                           <i runat="server"  style="font-size:50px; color:#2b98f0" class="fa-solid fa-location-crosshairs"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>

                                <div class="col-12 col-md d-flex align-items-center align-items-stretch">
                                    <div class="form-group py-md-4 py-2 px-4 px-md-0 d-flex align-items-stretch bg-primary">
                                        <asp:Button ID="btn1" runat="server" Text="don't hesitate ! Book now" class="btn btn-primary py-3 px-4" OnClick="book_click" />
                                    </div>
                                </div>


                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row d-flex no-gutters">
                <div class="col-md-6 d-flex">
                    <div class="img d-flex align-items-center justify-content-center py-5 py-md-0" style="background-image: url(images/about.jpg);">
                        <div class="time-open-wrap">
                            <div class="desc p-4">
                                <h2>Business Hours</h2>
                                <div class="opening-hours">
                                    <h4>Opening Days:</h4>
                                    <p class="pl-3">
                                        <span><strong>Monday – Friday:</strong> 9am to 20 pm</span>
                                        <span><strong>Saturday :</strong> 9am to 17 pm</span>
                                    </p>
                                    <h4>Vacations:</h4>
                                    <p class="pl-3">
                                        <span>All Sunday Days</span>
                                        <span>All Official Holidays</span>
                                    </p>
                                </div>
                            </div>
                            <div class="desc p-4 bg-secondary">
                                <h3 class="heading">For Emergency Cases</h3>
                                <span class="phone">(+962) 779907498</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 pl-md-5 pt-md-5">
                    <div class="row justify-content-start py-5">
                        <div class="col-md-12 heading-section ftco-animate">
                            <span class="subheading">Welcome to Cleaning Company</span>
                            <h2 class="mb-4">Let's make you fresher than ever</h2>
                            <p>
                                For over 45 years, customers have welcomed the trusted cleaning professionals from locally owned and operated Molly Maid businesses into their homes. Now more than ever, we want to reassure you that our teams strictly adhere to CDC guidelines. Our cleaning procedures are designed to help create a cleaner environment for you and your family. We’ve provided cleaning services to over a million customers and want you to know that you can continue to rely on us to go above and beyond to provide you with a worry-free, top-notch cleaning service every time.

                            </p>
                        </div>
                    </div>
                    <div class="row ftco-counter py-5" id="section-counter">
                        <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" data-number="4" id="">0</strong>
                                </div>
                                <div class="text">
                                    <span>Years of
                                        <br>
                                        Experience</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" id="happyCustomers" runat="server">0</strong>
                                </div>
                                <div class="text">
                                    <span>Happy
                                        <br>
                                        Customers</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" id="jobs" runat="server">0</strong>
                                </div>
                                <div class="text">
                                    <span>Building
                                        <br>
                                        Cleaned</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Services</span>
                    <h2>How We Works</h2>
                </div>
            </div>
            <div class="row">
               <%-- <div class="col-md-6 col-lg-4 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-workplace"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Office Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>--%>
                <div class="col-md-6 col-lg-6 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-pool"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Pool Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-rug"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Carpet Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-kitchen"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Kitchen Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>

                <%--<div class="col-md-6 col-lg-4 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-garden"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Garden Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>--%>
                <div class="col-md-6 col-lg-6 services ftco-animate">
                    <div class="d-block d-flex">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-balcony"></span>
                        </div>
                        <div class="media-body pl-3">
                            <h3 class="heading">Window Cleaning</h3>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-12 heading-section  text-center ftco-animate">
          	<span class="subheading">Our Project</span>
            <h2>We have done many latest cleaning project</h2>
          </div>
        </div>
				<div class="row">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(https://img.freepik.com/free-photo/happy-young-cleaning-man-wearing-casual-clothes-cap-rubber-gloves-holding-spray-bottle-sponge-smiling-cheerfully-standing-orange-wall_141793-64039.jpg?w=1060&t=st=1674819493~exp=1674820093~hmac=5065cbc26f7466bd1842143755d5598cf6c6c4a29e9557183ca5befb5c3d4774);">
            	<%--<a href="images/work-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">House Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(https://img.freepik.com/free-photo/workers-washing-windows-office-building_1153-4657.jpg?w=1060&t=st=1674819587~exp=1674820187~hmac=49daddefc50a8d25ad01edba75ecac4b44875bcfcf29c32c52c32d1a7535814e);">
            	<%--<a href="images/work-2.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Window Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(https://img.freepik.com/free-photo/swimming-pool_74190-2110.jpg?w=1060&t=st=1674819641~exp=1674820241~hmac=047835fc47b58d5fe67798cb6139f7df853a2d2a60b038eb69900437193b84a8);">
            	<%--<a href="images/work-3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Pool Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/work-4.jpg);">
            	<%--<a href="images/work-4.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Office Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/work-5.jpg);">
            	<%--<a href="images/work-5.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Carpet Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/work-6.jpg);">
            	<%--<a href="images/work-6.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Garden Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(https://img.freepik.com/premium-photo/carpet-cleaning-vacuum-cleaner_266247-59.jpg?w=1060);">
            	<%--<a href="images/work-7.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Carpet Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(https://img.freepik.com/premium-photo/underwater-shot-swimming-pool_1253-1182.jpg?w=1060);">
            	<%--<a href="images/work-8.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>--%>
            	<div class="desc w-100 px-4 text-center pt-5 mt-5">
	              <div class="text w-100 mb-3 mt-4">
	              	<h2><a href="work-single.html">Pool Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
        </div>
        
			</div>
		</section>	

    <section class="ftco-section testimony-section ftco-bg-dark">
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
                    <span class="subheading">Testimonies</span>
                    <h2>Happy Customer</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl" id="mainComment" runat="server">
                       <%-- <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4">
                                        <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg>
    </div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>


</asp:Content>
