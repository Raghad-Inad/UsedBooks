<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="usedBooks.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>


                
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


    <asp:Panel ID="Panel1" runat="server">
        <!-- Services -->
    <section id="Services" class="Services">
        <div class="tabs-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading" style="font-size: x-large">SERVICES</h2>
                        <%--<div class="p-heading">Donate the books you don't need </div>
                        <div class="p-heading">Take what you need to improve your education </div>--%>
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
                <div class="row"></div>

                <!-- Tabs Links -->
                    <ul class="nav nav-tabs" id="navTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true"><i class="fas fa-cog"></i>Donate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="nav-tab-2" data-bs-toggle="tab" data-bs-target="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false"><i class="fas fa-binoculars"></i>Buy</a>
                        </li>
                    </ul>
                    <!-- end of tabs links -->


                <!-- Tabs Content-->
                    <div class="tab-content" id="navTabsContent">
                        
                        <!-- Tab -->
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="nav-tab-1">
                            <div class="container">
                                <div class="row">
                                    <center>
                                        <div class="col-lg-4 col-md-6 icon-box " data-aos="zoom-in" data-aos-delay="300">
                                            <asp:LinkButton ID="LnkSellerService" class="btn-solid-reg mb-10" runat="server" OnClick="lnkSellerService_Click">Doners</asp:LinkButton>
                                            <br />
                                            <br />
                                            <p class="description" style="font-size: medium">Donate the books you don't need</p>
                                        </div>
                                    </center>
                                    
                                  
                                    <!-- Icon Cards Pane -->
                                    <div class="col-lg-8">
                                         
                                    </div> <!-- end of col -->
                                    <!-- end of icon cards pane -->

                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        <!-- Tab -->
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="nav-tab-2">
                            <div class="container">
                                <div class="row">
                                    <center>
                                        <div class="col-lg-4 col-md-6 icon-box " data-aos="zoom-in" data-aos-delay="300">
                                            <asp:LinkButton ID="lnkBuyerservice" class="btn-solid-reg mb-10" runat="server" OnClick="lnkBuyerService_Click">Needy</asp:LinkButton>
                                            <br />
                                            <br />
                                            <p class="description" style="font-size: medium">Buy a book to improve your education</p>
                                        </div>
                                    </center>
                                    
                                    <div class="col-lg-8">
                                    </div> <!-- end of col -->
                                    <!-- end of text and icon cards area -->

                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        

                    </div> <!-- end of tab-content -->
                    <!-- end of tabs content -->

                
            </div>
            <!-- end of container -->
        </div>
        <!-- end of tabs-1 -->
    </section>
    </asp:Panel>
    
        <!-- end of Services -->


        <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2 style="font-size: xx-large">About Us</h2>
                <p class="text-justify">
                    We believe in books and the power of the written word to impact lives and societies across the globe, and we cherish our role in saving books to live another
              day to educate, inspire, and transform lives.
                </p>
                <p class="text-justify">
                    We offer quality used books, accurately graded, at everyday low prices or for free. If, for any reason, you are not satisfied with your purchase, please get 
                in touch with us and we will do our best to ensure your satisfaction.
                </p>
            </div>

            <div class="row">

                <div class="col-lg-12 content" data-aos="fade-left">
                    <h3 class="text-sm-center">Our website offers services that could save you time and money:</h3>
                    <p class="fst-italic" style="text-align: center">
                        Learn about these services, and what is required of you to obtain them.
                    </p>

                    <ul>
                        <li><i class="bi bi-check-circle"></i>Donation service for used books that have been dispensed with <strong>"You only need to register on our website to make this service available to you."</strong></li>
                        <li><i class="bi bi-check-circle"></i>Obtaining used books service for those who need them most,  and is a service for <strong>FREE</strong> </li>
                    </ul>
                    <p>
                        &nbsp;
                    </p>
                </div>
            </div>

        </div>
    </section>
         <!-- End About Us Section -->

        <!-- ======= Featured Services Section ======= -->
    <div class="basic-2 bg-dark-blue">
        <section id="featured-services" class="featured-services" style="text-align: center; margin-left: 18%">
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
                        <p class="description" style="text-align: justify">Through us, you can get any educational books we have for a lower prices or for free!</p>
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


        </section>
    </div>
         <!-- End Featured Services Section -->
        
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
                                        <img class="img-fluid" src="images/bookImages/data%20mining.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/Data%20Structures%20&%20Algorithms%20in%20java.jpg"  alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/Data%20Structures%20&%20Algorithms.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/Database%20Systems.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                  
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/oxford%20grammer.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/data%20mining.jpg"  alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/Data%20Structures%20&%20Algorithms%20in%20java.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/Data%20Structures%20&%20Algorithms.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid"  src="images/bookImages/Database%20Systems.jpg" alt="alternative">
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <img class="img-fluid" src="images/bookImages/oxford%20grammer.jpg"  alt="alternative">
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
                
                <!-- ======= Frequently Asked Questioins Section ======= -->
                <section id="faq" class="faq section-bg">
                    <div class="container" data-aos="fade-up">

                        <div class="section-title">
                            <h2>Frequently Asked Questioins</h2>
                        </div>

                        <ul class="faq-list">
                            
                            <li>
                                <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">When I buy a book, how much money should I pay ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                                <div id="faq1" class="collapse" data-bs-parent=".faq-list">
                                    <p>The price is determined by the seller, which may be free or a nominal sum.</p>
                                </div>
                            </li>

                            <li>
                                <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">When I need to buy a book, how long does it take for me to get it? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                                <div id="faq3" class="collapse" data-bs-parent=".faq-list">
                                    <p>The duration depends on where you are and where the seller is. If you both are in the same city, you will get the book within a maximum period of 24 hours </p>
                                </div>
                            </li>

                            <li>
                                <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">What are the Possible reasons for refusing my order ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                                <div id="faq4" class="collapse" data-bs-parent=".faq-list">
                                    <p>When you do not pay to the seller </p>
                                </div>
                            </li>

                            <li>
                                <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">Where can I see the status of my order ? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                                <div id="faq5" class="collapse" data-bs-parent=".faq-list">
                                    <p>After logging in, you can enter the order page. </p>
                                </div>
                            </li>

                            <li>
                                <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">I forgot my password? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                                <div id="faq2" class="collapse" data-bs-parent=".faq-list">
                                    <p>You can click on Forgot password button and we will send the new password to the email you registered with  </p>
                                </div>
                            </li>

                        </ul>

                    </div>
                </section>
                <!-- End Frequently Asked Questioins Section -->

                <%--</div>--%>
                <!-- end of col -->
                
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </div> <!-- end of basic-4 -->
        <!-- end of download -->    

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
            
       
   

</asp:Content>
