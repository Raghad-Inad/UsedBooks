<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="usedBooks.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<html lang="en">
    <head>
        <%--<meta charset="utf-10">--%>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
                
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/fontawesome-all.min.css" rel="stylesheet">
        <link href="css/swiper.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

        
    </head>
    <body>
                
        <!-- Header -->
        <header id="header" class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h1 class="h1-large">Website <br>FOR <span class="replace-me">Donating, Selling, Buying  </span></h1>
                            <p class="p-large">Educational used books</p>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->

                    <div class="col-lg-6">
                        <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
                        <lord-icon src="https://cdn.lordicon.com/hursldrn.json" trigger="morph" colors="primary:#4be1ec,secondary:#cb5eee" style="width:250px;height:250px"> </lord-icon
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of header -->
        <!-- end of header -->


        <!-- Testimonials -->
        <div class="slider-1 bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Card Slider -->
                        <div class="slider-container">
                            <div class="swiper-container card-slider">
                                <div class="swiper-wrapper">
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/team/iconTeam.png" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Manar Moraykhan - Designer</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/team/iconTeam.png" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Anfal Fawaz - Developer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/team/iconTeam.png" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Basmah Khalaf - Developer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/team/iconTeam.png" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Raghad Talal - Designer</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/team/iconTeam.png" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Tahani Hmood - Designer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
                                </div> <!-- end of swiper-wrapper -->
            
                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->
            
                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of card slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-1 -->
        <!-- end of testimonials -->


        <!-- Services -->
        <section id="Services" class="Services">
        <div class="tabs-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading" style="font-size:x-large">SERVICES</h2>
                        <%--<div class="p-heading">Donate the books you don't need </div>
                        <div class="p-heading">Take what you need to improve your education </div>--%>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row"></div>

                    <!-- Tabs Links -->
                    <ul class="nav nav-tabs" id="navTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true"><i class="fas fa-cog" style="font-size: large"></i><span style="font-size: large">Donate</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#tab-2" role="tab" aria-controls="tab-2" aria-selected="true"><i class="fas fa-binoculars" style="font-size: large"></i><span style="font-size: large">Buy</span></a>
                        </li>
                    </ul>
                    <!-- end of tabs links -->

                
                                     
                         <div  class="container ">
                             <div class="row">
                    <div class="col-lg-4 col-md-6 icon-box " data-aos="zoom-in" data-aos-delay="300" style="margin-left:auto;" >
                        <asp:LinkButton ID="LnkSellerService" class="btn-solid-reg mb-10" runat="server" OnClick="lnkSellerService_Click" style="font-size: large" >Doners</asp:LinkButton>
                        <br />
                        <br /> 
                        <p class="description" style="font-size: medium"><span style="margin-left: -18%">Donate the books you don't need</span></p>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 icon-box " data-aos="zoom-in" data-aos-delay="300">
                        <asp:LinkButton ID="lnkBuyerservice" class="btn-solid-reg mb-10" runat="server" OnClick="lnkBuyerService_Click" style="font-size: large">Needy</asp:LinkButton>
                        <br />
                        <br /> 
                        <p class="description" style="font-size: medium"><span style="margin-left: -19%">Buy a book to improve your education</span></p>
                    </div>
                             </div></div>
                    


                </div> <!-- end of container --> 
        </div> <!-- end of tabs-1 -->
        </section>
        <!-- end of Services -->


        <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2 style="font-size: xx-large">About Us</h2>
          <p class="text-justify">We believe in books and the power of the written word to impact lives and societies across the globe, and we cherish our role in saving books to live another
              day to educate, inspire, and transform lives.</p>
          <p class="text-justify">We offer quality used books, accurately graded, at everyday low prices or for free. If, for any reason, you are not satisfied with your purchase, please get 
                in touch with us and we will do our best to ensure your satisfaction. </p>
        </div>

        <div class="row">
          
          <div class="col-lg-12 content" data-aos="fade-left" >
            <h3 class="text-sm-center">Our website offers services that could save you time and money:</h3>
            <p class="fst-italic" style="text-align: center">
             Learn about these services, and what is required of you to obtain them.
            </p>
             
            <ul>
              <li><i class="bi bi-check-circle"></i> Donation service for used books that have been dispensed with <strong>"You only need to register on our website to make this service available to you."</strong></li>
              <li><i class="bi bi-check-circle"></i> Obtaining used books service for those who need them most,  and is a service for <strong>FREE</strong> </li>
              </ul>
            <p>
                &nbsp;</p>
          </div>
        </div>

      </div>
    </section>
         <!-- End About Us Section -->

        <!-- ======= Featured Services Section ======= -->
        <div class="basic-2 bg-dark-blue">
    <section id="featured-services" class="featured-services" style="text-align:center; margin-left:18%">
      <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="fas fa-heartbeat"></i></div>
         <h4 class="title"><a>Help Others</a></h4>
              <p class="description" style="text-align: justify">Here you can donate your used books that you have dispensed with, to those who need them</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="fas fa-pills"></i></div>
              <h4 class="title"><a>Take as much as you need</a></h4>
              <p class="description" style="text-align: justify">Through us, you can get any educational books we have for free!</p>
            </div>
          </div>


          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="fas fa-window-close"></i></div>
              <h4 class="title"><a>Be responsible</a></h4>
              <p class="description" style="text-align: justify">Do not take any educational books that you do not need, this behavior may affect another person who may need them</p>
            </div>
          </div>

        </div>

      
    </section> </div>
         <!-- End Featured Services Section -->

        <%--<!-- Details 1 -->
        <div class="basic-2 bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="image-container">
                            <img class="img-fluid" src="images/details-1.png" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h2>Start using Leno today and set your long term goalsd set your long term goals</h2>
                            <p>Ac ante ipsum primis in faucibus. Nam et porttitor ipsum. Morbi eros augue, blandit in varius gravida tempor a massa. Curabitur ante dolor euismod a arcu nec pellentque</p>
                            <a class="btn-solid-reg" data-bs-toggle="modal" data-bs-target="#detailsModal1">Modal</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-2 -->
        <!-- end of details 1 -->--%>


        <!-- Details Modal -->
        <%--<div class="details-modal">
            <div id="detailsModal1" class="modal fade" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="row">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            <div class="col-lg-8">
                                <div class="image-container">
                                    <img class="img-fluid" src="images/details-modal.jpg" alt="alternative">
                                </div> <!-- end of image-container -->
                            </div> <!-- end of col -->
                            <div class="col-lg-4">
                                <h3>Goals Setting</h3>
                                <hr>
                                <p>In gravida at nunc sodales pretium. Vivamus semper, odio vitae mattis auctor, elit elit semper magna ac tum nico vela spider</p>
                                <h4>User Feedback</h4>
                                <p>Sapien vitae eros. Praesent ut erat a tellus posuere nisi more thico cursus pharetra finibus posuere nisi. Vivamus feugiat</p>
                                <ul class="list-unstyled li-space-lg">
                                    <li class="d-flex">
                                        <i class="fas fa-chevron-right"></i>
                                        <div class="flex-grow-1">Tincidunt sem vel brita bet mala</div>
                                    </li>
                                    <li class="d-flex">
                                        <i class="fas fa-chevron-right"></i>
                                        <div class="flex-grow-1">Sapien condimentum sacoz sil necr</div>
                                    </li>
                                    <li class="d-flex">
                                        <i class="fas fa-chevron-right"></i>
                                        <div class="flex-grow-1">Fusce interdum nec ravon fro urna</div>
                                    </li>
                                    <li class="d-flex">
                                        <i class="fas fa-chevron-right"></i>
                                        <div class="flex-grow-1">Integer pulvinar biolot bat tortor</div>
                                    </li>
                                    <li class="d-flex">
                                        <i class="fas fa-chevron-right"></i>
                                        <div class="flex-grow-1">Id ultricies fringilla fangor raq trinit</div>
                                    </li>
                                </ul>
                                <a id="modalCtaBtn" class="btn-solid-reg" href="#your-link">Details</a>
                                <button type="button" class="btn-outline-reg" data-bs-dismiss="modal">Close</button>
                            </div> <!-- end of col -->
                        </div> <!-- end of row -->
                    </div> <!-- end of modal-content -->
                </div> <!-- end of modal-dialog -->
            </div> <!-- end of modal -->
        </div> --%><!-- end of details-modal -->
        <!-- end of details modal --> 


        <%--<!-- Details 2 -->
        <div class="basic-3 bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h2>The calendar feature helps you schedule tasks</h2>
                            <p>Morbi blandit felis at pharetra facilisis. Nullam nec felis eget lectus consequat rutrum. Suspendisse felis elit, interdum at eros eget facilisis tempor vestibulum sit amet mattis</p>
                            <a class="btn-solid-reg" href="#your-link">Details</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <div class="image-container">
                            <img class="img-fluid" src="images/details-2.png" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div>--%> <!-- end of basic-3 -->
        <!-- end of details 2 -->


        <!-- Statistics -->
        <%--<div class="counter bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Counter -->
                        <div class="counter-container">
                            <div class="counter-cell">
                                <i class="fas fa-users"></i>
                                <div data-purecounter-start="0" data-purecounter-end="231" data-purecounter-duration="3" class="purecounter">1</div>
                                <div class="counter-info">Happy Customers</div>
                            </div> <!-- end of counter-cell -->
                            <div class="counter-cell">
                                <i class="fas fa-code"></i>
                                <div data-purecounter-start="0" data-purecounter-end="385" data-purecounter-duration="1.5" class="purecounter">1</div>
                                <div class="counter-info">Issues Solved</div>
                            </div> <!-- end of counter-cell -->
                            <div class="counter-cell">
                                <i class="fas fa-cog"></i>
                                <div data-purecounter-start="0" data-purecounter-end="159" data-purecounter-duration="3" class="purecounter">1</div>
                                <div class="counter-info">Good Reviews</div>
                            </div> <!-- end of counter-cell -->
                            <div class="counter-cell">
                                <i class="fas fa-rocket"></i>
                                <div data-purecounter-start="0" data-purecounter-end="128" data-purecounter-duration="3" class="purecounter">1</div>
                                <div class="counter-info">Case Studies</div>
                            </div> <!-- end of counter-cell -->
                            <div class="counter-cell">
                                <i class="fas fa-comments"></i>
                                <div data-purecounter-start="0" data-purecounter-end="216" data-purecounter-duration="3" class="purecounter">1</div>
                                <div class="counter-info">Press Articles</div>
                            </div> <!-- end of counter-cell -->
                        </div> <!-- end of counter-container -->
                        <!-- end of counter -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of counter -->
        <!-- end of statistics -->--%>


        <!-- Screenshots نحط صور كتب --> 
        <div class="slider-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">Educational Books</h2>
                        <hr class="hr-heading">
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Image Slider -->
                        <div class="slider-container">
                            <div class="swiper-container image-slider">
                                <div class="swiper-wrapper">
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image1.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image2.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image3.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image1.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image2.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image3.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image1.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image2.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image3.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/book-image1.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                    
                                </div> <!-- end of swiper-wrapper -->

                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->

                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of image slider -->
                        
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-2 -->
        <!-- end of screenshots -->


        <!-- Download -->
        <div class="basic-4">
            <div class="container">
                <div class="row">
                    <%--<div class="col-lg-6">--%>
                        <%--<div class="text-container">
                            <h4>Download Leno today to see the benefits and enjoy the results faster than any other app out there</h4>
                            <a class="btn-solid-lg" href="#your-link"><i class="fab fa-apple"></i>For iOS</a>
                            <a class="btn-solid-lg" href="#your-link"><i class="fab fa-google-play"></i>For Android</a>
                        </div> <!-- end of text-container -->--%>

                        <!-- ======= Frequently Asked Questioins Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Frequently Asked Questioins</h2>
        </div>

        <ul class="faq-list">
            <%--<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
            </svg>--%>
          <li>
            <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">When I buy a book, how much money should I pay ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq1" class="collapse" data-bs-parent=".faq-list">
              <p>The price is determined by the seller, which may be free or a nominal sum.</p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq3" class="collapsed question"> When I need to buy a book, how long does it take for me to get it? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq3" class="collapse" data-bs-parent=".faq-list">
              <p> The duration depends on where you are and where the seller is. If you both are in the same city, you will get the book within a maximum period of 24 hours </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">What are the Possible reasons for refusing my order ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq4" class="collapse" data-bs-parent=".faq-list">
              <p> When you do not pay to the seller </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">Where can I see the status of my order ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq5" class="collapse" data-bs-parent=".faq-list">
              <p> After logging in, you can enter the order page. </p>
            </div>
          </li>

            <li>
            <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">I forgot my password? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq2" class="collapse" data-bs-parent=".faq-list">
              <p> You can click on Forgot password button and we will send the new password to the email you registered with  </p>
            </div>
          </li>

        

        </ul>

      </div>
    </section>
         <!-- End Frequently Asked Questioins Section -->
                    <%--</div>--%> <!-- end of col -->
                    <%--<div class="col-lg-6">
                        <div class="image-container">
                            <img class="img-fluid" src="images/download.png" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div>--%> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-4 -->
        <!-- end of download -->


        <!-- Footer -->
        <%--<div class="footer bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-col first">
                            <h6>About Website</h6>
                            <p class="p-small">Aliquam ultrices turpis a auctor commodo. Etiam consectetur tincidunt elit ac euismod. Duis et finibus felis, non porttitor rapena live dolor</p>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col second">
                            <h6>Links</h6>
                            <ul class="list-unstyled li-space-lg p-small">
                                <li>Important: <a href="terms.html">Terms & Conditions</a>, <a href="privacy.html">Privacy Policy</a></li>
                                <li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon Library</a>, <a href="#">Illustrations</a></li>
                                <li>Menu: <a href="index.html">Home</a>, <a href="article.html">Article</a>, <a href="features.html">Features</a>, <a href="contact.html">Contact</a></li>
                            </ul>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col third">
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-pinterest-p fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-instagram fa-stack-1x"></i>
                                </a>
                            </span>
                            <p class="p-small">Quam posuerei pellent esque vam <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a></p>
                        </div> <!-- end of footer-col -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> --%><!-- end of footer -->  
        <!-- end of footer -->


        <!-- Copyright -->
       <%-- <div class="copyright bg-dark-blue">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="p-small">Copyright © <a href="#your-link">Your name</a></p>
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div>--%> <!-- end of copyright --> 
        <!-- end of copyright -->
        

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
            
        <!-- Scripts -->
        <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
        <script src="js/replaceme.min.js"></script> <!-- ReplaceMe for rotating text -->
        <script src="js/scripts.js"></script> <!-- Custom scripts -->
    </body>
</html>

</asp:Content>
