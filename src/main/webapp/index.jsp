<%--
  Created by IntelliJ IDEA.
  User: 林进华
  Date: 2017/7/5
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>奥德科技开发公司官方网站</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/font-awesome.min.css">                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/hero-slider-style.css">                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   
    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
        
        <!-- Content -->
        <div class="cd-hero">

            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">
                        
                        <a class="navbar-brand text-uppercase" href="#"><i class="fa fa-send-o tm-brand-icon"></i>ODYSSEUS</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">成立历史 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">关于我们</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">项目成果展示1</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">项目成果展示2</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="5">Testimonials</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="6">报名</a>
                                </li>
                            </ul>
                        </div>                        
                    </div>

                </nav>
            </div> 

            <ul class="cd-hero-slider">  <!-- autoplay -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-1" data-page-no="1">

                            <div class="cd-bg-video-wrapper" data-video="video/moving-cloud">
                                <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->
                            
                            <div class="row">
                            
                                <div class="col-xs-12">
                                    <div class="tm-2-col-container tm-bg-white-translucent">

                                        <div class="row">
                                            <div class="col-xs-12">
                                                <h2 class="tm-text-title">Cool Video Backgrounds</h2>    
                                            </div>                                            
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-2-col-left">
                                                <div class="text-xs-left tm-textbox tm-2-col-textbox">                                            
                                                    <p class="tm-text">Motion web template integrates a very active video background for each page. Download and use this for your website and tell your friends about it.</p>
                                                    <p class="tm-text">This HTML CSS template is brought to you by <a href="http://plus.google.com/+templatemo" target="_blank">templatemo</a>. You can fully customize it to meet your website needs.</p>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-2-col-right">
                                                <div class="text-xs-left tm-textbox tm-2-col-textbox">
                                                    <p class="tm-text">Cras tempus, eros vel ultrices aliquam, velit tortor sodales risus, ac facilisis lectus tortor eget neque. Nam auctor dui ante. Curabitur tristique.</p>
                                                    <p class="tm-text">Quisque sagittis quam tortor, sit amet posuere justo tempor non. Nunc eu leo sit amet elit condimentum.</p>
                                                </div>          
                                            </div>
                                            
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div> <!-- .cd-full-width -->
                </li>

                <li>
                    <div class="cd-full-width">

                        <div class="container-fluid js-tm-page-content" data-page-no="2">

                            <div class="cd-bg-video-wrapper" data-video="video/red-flower">
                                <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->
                            
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-flex tm-2-col-container-2">
                            
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">我们只专注与技术</h2>
                                            <p class="tm-text">Nulla efficitur, ligula et imperdiet volutpat, lacus tortor tempus massa, eget tempus quam nibh vel nulla.</p>
                                            <p class="tm-text">Vivamus non molestie leo, non tincidunt diam. Mauris sagittis elit in velit ultricies aliquet sed in magna.</p>
                                            <p class="tm-text">Pellentesque semper, est nec consequat viverra, sem augue tincidunt nisi, a posuere nisi sapien sed sapien. Nulla facilisi.</p>
                                        </div>

                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">项目量稳居第一</h2>
                                            <p class="tm-text">Proin sagittis mauris dolor, vel efficitur lectus dictum nec. Sed ultrices placerat arcu, id malesuada metus cursus suscipit. Donex quis consectetur ligula. Proin accumsan eros id nisi porttitor, a facilisis quam cursus.</p>
                                            <p class="tm-text">Donec vitae bibendum est, et ultrices urna. Curabitur ac bibendum augue, a convallis mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris consequat metus hendrerit, tincidunt mi nec, euismod massa.</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        
                        </div>
                                                
                    </div> <!-- .cd-full-width -->

                </li>
                <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
                <!-- Page 3 -->
                <li>
                    
                    <div class="cd-full-width">

                        <div class="container-fluid js-tm-page-content" data-page-no="3">
                            
                            <div class="cd-bg-video-wrapper" data-video="video/sunset-cloud">
                                <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->
                            
                            <div class="tm-img-gallery-container">

                                <div class="tm-img-gallery gallery-one">
                                <!-- Gallery One pop up connected with JS code below -->
                                    
                                    <div class="tm-img-gallery-info-container">
                                    
                                        <h2 class="tm-text-title tm-gallery-title">项目成果展示1</h2>
                                        <p class="tm-text">Nulla efficitur, ligula et imperdiet volutpat, lacus tortor tempus massa, eget tempus quam 
                                        nibh vel nulla. Maecenas purus sem, lobortis id odio in, ultrices scelerisque sapien.
                                        </p>                                    
                                    
                                    </div>

                                    <div class="grid-item">
                                        <a href="img/tm-img-01.jpg">                                                
                                            <img src="img/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">                                              
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-02.jpg">                                                
                                            <img src="img/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-03.jpg">                                                
                                            <img src="img/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-04.jpg">                                                
                                            <img src="img/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-05.jpg">                                                
                                            <img src="img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-06.jpg">                                                
                                            <img src="img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>                                
                                    <div class="grid-item">
                                        <a href="img/tm-img-07.jpg">                                                
                                            <img src="img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-08.jpg">                                                
                                            <img src="img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>                                        
                                </div>
                                 
                            </div> <!-- .tm-img-gallery-container -->

                        </div> <!-- .container-fluid -->
                                                    
                    </div> <!-- .cd-full-width -->
                    
                </li>

                <!-- Page 4 -->
                <li>
                    
                    <div class="cd-full-width">

                        <div class="container-fluid js-tm-page-content" data-page-no="4">

                            <div class="cd-bg-video-wrapper" data-video="video/night-light-blur">
                                <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->
                            
                            <div class="tm-img-gallery-container">

                                <div class="tm-img-gallery gallery-two">
                                <!-- Gallery Two pop up connected with JS code below -->
                                    
                                    <div class="tm-img-gallery-info-container">
                                    
                                        <h2 class="tm-text-title tm-gallery-title"><span class="tm-white">项目成果展示2</span></h2>
                                        <p class="tm-text"><span class="tm-white">Nulla efficitur, ligula et imperdiet volutpat, lacus tortor tempus massa, eget tempus quam nibh vel nulla. Maecenas purus sem, lobortis id odio in, ultrices scelerisque sapien.</span>
                                        </p>                                    
                                    
                                    </div>

                                    <div class="grid-item">
                                        <a href="img/tm-img-09.jpg">                                                
                                            <img src="img/tm-img-09-tn.jpg" alt="Image" class="img-fluid tm-img">                                              
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-10.jpg">                                                
                                            <img src="img/tm-img-10-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-11.jpg">                                                
                                            <img src="img/tm-img-11-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-12.jpg">                                                
                                            <img src="img/tm-img-12-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-13.jpg">                                                
                                            <img src="img/tm-img-13-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-14.jpg">                                                
                                            <img src="img/tm-img-14-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>                                
                                    <div class="grid-item">
                                        <a href="img/tm-img-15.jpg">                                                
                                            <img src="img/tm-img-15-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>
                                    <div class="grid-item">
                                        <a href="img/tm-img-16.jpg">                                                
                                            <img src="img/tm-img-16-tn.jpg" alt="Image" class="img-fluid tm-img">                                                
                                        </a>
                                    </div>                                        
                                </div>
                                 
                            </div> <!-- .tm-img-gallery-container -->

                        </div> <!-- .container-fluid -->
                                                    
                    </div> <!-- .cd-full-width -->
                    
                </li>

                <li>

                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="5">
                        
                            <div class="cd-bg-video-wrapper" data-video="video/padaut-bee">
                                <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->

                            <div class="row">
                                
                                <div class="col-xs-12">
                                    <div class="tm-flex tm-3-col-container">
                                        
                                            <div class="tm-3-col-textbox tm-bg-white-translucent">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding">

                                                    <h2 class="tm-text-title">Testimonial One</h2>                                           
                                                    <p class="tm-text">Etiam vitae imperdiet magna. Vestibulum blandit vehicula metus, ac ornare eros elementum et. Pellentesque habitant morbi tristique senectus et ntus et malesuada fames ac turpis egestas.</p>

                                                    <p class="tm-text">Mauris lobortis lorem nulla, non tristique enim sollicitudin eu. Praesent tempus dapibus odio nec elementum.</p>

                                                </div>
                                            </div>

                                            <div class="tm-3-col-textbox tm-bg-white-translucent">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding">

                                                    <h2 class="tm-text-title">Testimonial Two</h2>

                                                    <p class="tm-text">Curabitur sodales, est auctor congue vulputate, nisl tellus finibus nunc, vitae consectetur enim erat vitae quam.</p>

                                                    <p class="tm-text">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc vitae tempor turpis.</p>
                                                </div>          
                                            </div>

                                            <div class="tm-3-col-textbox tm-bg-white-translucent">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding">

                                                    <h2 class="tm-text-title">Testimonial Three</h2>

                                                    <p class="tm-text">Mauris lobortis lorem nulla, non tristique enim sollicitudin eu. Praesent tempus dapibus odio nec elementum.</p>

                                                    <p class="tm-text">Sed elementum est quis tortor faucibus, et molestie nibh finibus. Mauris condimentum ex vestibulum fringilla consectetur.</p>
                                                </div>          
                                            </div>
                                        
                                    </div>
                                </div>

                            </div>

                        </div>         
                    </div>                                       

                </li>

                <li>
                    <div class="cd-full-width">

                        <div class="container-fluid js-tm-page-content" data-page-no="6">

                        <div class="cd-bg-video-wrapper" data-video="video/sunset-loop">
                            <!-- video element will be loaded using jQuery -->
                        </div> <!-- .cd-bg-video-wrapper -->
                            
                            <div class="tm-contact-page">
                                
                                <div class="row">

                                    <div class="col-xs-12">

                                        <div class="tm-flex tm-contact-container">
                                
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <p class="tm-text">Praesent tempus dapibus odio nec elementum. Sed elementum est quis tortor faucibus, et molestie nibh finibus. Mauris condimentum ex vestibulum fringilla consectetur.</p>

                                                <!-- contact form -->
                                                <form action="${pageContext.request.contextPath }/student/register.action" method="post" class="tm-contact-form">

                                                    <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">
                                                        <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="${student.contact_name == null ? "名字" : student.contact_name}"  required/>
                                                    </div>

                                                    <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">
                                                        <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="${student.contact_email == null ? "邮箱" : student.contact_email}"  required/>
                                                    </div>

                                                    <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">
                                                        <input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="${student.contact_subject == null ? "学号" : student.contact_subject}"  required/>
                                                    </div>

                                                    <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">
                                                        <input type="text" id="contact_phone" name="contact_phone" class="form-control" placeholder="${student.contact_phone == null ? "手机号" : student.contact_phone}"  min="7" max="11" required/>
                                                    </div>

                                                    <div class="form-group">
                                                        <input type="text" id="contact_major" name="contact_major" class="form-control" placeholder="专业"  required/>
                                                    </div>

                                                    <div class="form-group">

                                                        <select class="form-control" name="contact_department" >
                                                            <option value=".Net部">.Net部</option>
                                                            <option value="Java部">Java部</option>
                                                            <option value="美工部">美工部</option>
                                                            <option value="行政部">行政部</option>
                                                            <option value="php小组">php小组</option>
                                                        </select>

                                                    </div>

                                                    <div class="form-group">
                                                        <textarea id="contact_message" name="contact_message" class="form-control" rows="5" placeholder="为什么加入我们" required></textarea>
                                                    </div>

                                                    <button type="submit" class="pull-xs-right tm-submit-btn">提交</button>

                                                </form>
                                            </div>

                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-contact-info">123 New Street 11000, San Francisco, CA</h2>
                                                <!-- google map goes here -->
                                                <div id="">map</div>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>    

                        </div>
                        
                    </div> <!-- .cd-full-width -->
                </li>
            </ul> <!-- .cd-hero-slider -->
            
            <footer class="tm-footer">
            
                <div class="tm-social-icons-container text-xs-center">
                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-behance"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
                </div>
                
                <p class="tm-copyright-text">Copyright &copy; 2016 Your Company 
                
                - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>

            </footer>
                    
        </div> <!-- .cd-hero -->
        

        <!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js/masonry.pkgd.min.js"></script>          <!-- Masonry (http://masonry.desandro.com/) -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
        
        <script>

            function adjustHeightOfPage(pageNo) {

                var offset = 80;
                var pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();

                if($(window).width() >= 992) { offset = 120; }
                else if($(window).width() < 480) { offset = 40; }
               
                // Get the page height
                var totalPageHeight = 15 + $('.cd-slider-nav').height()
                                        + pageContentHeight + offset
                                        + $('.tm-footer').height();

                // Adjust layout based on page height and window height
                if(totalPageHeight > $(window).height()) 
                {
                    $('.cd-hero-slider').addClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                }
                else 
                {
                    $('.cd-hero-slider').removeClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                }
            }

            /*
                Everything is loaded including images.
            */
            $(window).load(function(){

                adjustHeightOfPage(1); // Adjust page height

                /* Gallery One pop up
                -----------------------------------------*/
                $('.gallery-one').magnificPopup({
                    delegate: 'a', // child items selector, by clicking on it popup will open
                    type: 'image',
                    gallery:{enabled:true}                
                });
				
				/* Gallery Two pop up
                -----------------------------------------*/
				$('.gallery-two').magnificPopup({
                    delegate: 'a',
                    type: 'image',
                    gallery:{enabled:true}                
                });

                /* Collapse menu after click 
                -----------------------------------------*/
                $('#tmNavbar a').click(function(){
                    $('#tmNavbar').collapse('hide');

                    adjustHeightOfPage($(this).data("no")); // Adjust page height       
                });

                /* Browser resized 
                -----------------------------------------*/
                $( window ).resize(function() {
                    var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
                    
                    // wait 3 seconds
                    setTimeout(function() {
                        adjustHeightOfPage( currentPageNo );
                    }, 1000);
                    
                });
        
                // Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
                $('body').addClass('loaded');
                           
            });

           
        
          

        </script>            

</body>
</html>