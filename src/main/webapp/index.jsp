

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Logistic system</title>
  <!-- Meta tag Keywords -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Transporters web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web Designs" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
  function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!--// Meta tag Keywords -->

  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/res/css/flexslider.css" />"/>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/res/css/bootstrap.css" />"/>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/res/css/style.css" />"/>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/res/css/font-awesome.css" />"/>

  <!-- web-fonts -->
  <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
  <!-- //web-fonts -->
</head>
<body>
<div class="header">
  <nav class="navbar navbar-default">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Menu</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <h1><a href="index.jsp">Logistic System</a></h1>
    </div>
    <div class="top-nav-text">
      <div class="nav-contact-w3ls"><i class="fa fa-phone" aria-hidden="true"></i><p>+375(44)000-00-00</p></div>
    </div>
    <!-- navbar-header -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">Profile</span><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<c:url value="/autorization"/>" target="_self"><span data-hover="Icons">Log in</span></a></li>
          <li><a href="<c:url value="/users"/>" target="_self"><span data-hover="Typograpghy">Sign In</span></a></li>
        </ul>
      </li>
      </ul>
    </div>

    <div class="clearfix"> </div>
  </nav>

</div>
<!-- Slider -->
<div class="slider">
  <div class="callbacks_container">
    <ul class="rslides" id="slider">
      <li>
        <div class="w3layouts-banner-top w3layouts-banner-top1">
          <div class="banner-dott">
            <div class="container">
              <div class="slider-info">
                <div class="col-md-8">
                  <h2>Automobile</h2>
                  <h4>Transportation</h4>

                </div>

              </div>
            </div>
          </div>
        </div>
      </li>
      <li>
        <div class="w3layouts-banner-top">
          <div class="banner-dott">
            <div class="container">
              <div class="slider-info">
                <div class="col-md-8">
                  <h3>Aircraft</h3>
                  <h4>Transportation</h4>

                </div>

              </div>
            </div>
          </div>
        </div>
      </li>
      <li>
        <div class="w3layouts-banner-top w3layouts-banner-top3">
          <div class="banner-dott">
            <div class="container">
              <div class="slider-info">
                <div class="col-md-8">
                  <h3>Watercraft</h3>
                  <h4>Transportation</h4>

                </div>

              </div>
            </div>
          </div>
        </div>
      </li>

      <li>
        <div class="w3layouts-banner-top w3layouts-banner-top4">
          <div class="banner-dott">
            <div class="container">
              <div class="slider-info">
                <div class="col-md-8">
                  <h3>Railed</h3>
                  <h4>Transportation</h4>

                </div>

              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
  <div class="clearfix"></div>
</div>


<script  src="${pageContext.request.contextPath}/resources/res/js/jquery-2.1.4.min.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/bootstrap.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/SmoothScroll.min.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/move-top.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/easing.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/responsiveslides.min.js"></script>


<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager:false,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });
</script>
<!-- //Baneer-js -->



<div class="banner-bottom">
  <div class="col-md-7 bannerbottomleft">
    <div class="video-grid-single-page-agileits">
      <div data-video="d3q5mRA5djY" id="video"> <img src="resources/res/images/bg2.jpg" alt="" class="img-responsive" /> </div>
    </div>
  </div>
  <div class="col-md-5 bannerbottomright">
    <h3>How Does We Work?</h3>
    <p>Logistic System is a leading worldwide provider of transportation,
      logistics and supply chain solutions.</p>
    <h4><i class="fa fa-taxi" aria-hidden="true"></i>International Transport Deliver System</h4>
    <h4><i class="fa fa-shield" aria-hidden="true"></i>Fast & Best Deliver Service</h4>
    <h4><i class="fa fa-ticket" aria-hidden="true"></i>Standard Courier value</h4>
    <h4><i class="fa fa-space-shuttle" aria-hidden="true"></i>Easy And Auto Shipping Service</h4>
    <h4><i class="fa fa-truck" aria-hidden="true"></i>Packaging & Storage</h4>
  </div>
  <div class="clearfix"></div>
</div>
<!-- //banner-bottom -->

<!-- team -->
<div class="team" id="team">
  <div class="container">
    <div class="heading">
      <h3>Our Dealers</h3>
    </div>
    <div class="wthree_team_grids">
      <div class="col-md-3 wthree_team_grid">
        <div class="hovereffect">
          <img src="resources/res/images/team1.jpg" alt=" " class="img-responsive" />
          <div class="overlay">
            <h6>Transporters</h6>
            <div class="rotate">
              <p class="group1">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </p>
              <hr>
              <hr>
              <p class="group2">
                <a href="#">
                  <i class="fa fa-instagram"></i>
                </a>
                <a href="#">
                  <i class="fa fa-dribbble"></i>
                </a>
              </p>
            </div>
          </div>
        </div>
        <h4>Max Payne</h4>
        <p>Transport Dealer</p>
      </div>
      <div class="col-md-3 wthree_team_grid">
        <div class="hovereffect">
          <img src="resources/res/images/team2.jpg" alt=" " class="img-responsive" />
          <div class="overlay">
            <h6>Transporters</h6>
            <div class="rotate">
              <p class="group1">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </p>
              <hr>
              <hr>
              <p class="group2">
                <a href="#">
                  <i class="fa fa-instagram"></i>
                </a>
                <a href="#">
                  <i class="fa fa-dribbble"></i>
                </a>
              </p>
            </div>
          </div>
        </div>
        <h4>Michael Lii</h4>
        <p>Transport Dealer</p>
      </div>
      <div class="col-md-3 wthree_team_grid">
        <div class="hovereffect">
          <img src="resources/res/images/team3.jpg" alt=" " class="img-responsive" />
          <div class="overlay">
            <h6>Transporters</h6>
            <div class="rotate">
              <p class="group1">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </p>
              <hr>
              <hr>
              <p class="group2">
                <a href="#">
                  <i class="fa fa-instagram"></i>
                </a>
                <a href="#">
                  <i class="fa fa-dribbble"></i>
                </a>
              </p>
            </div>
          </div>
        </div>
        <h4>Mark</h4>
        <p>Transport Dealer</p>
      </div>
      <div class="col-md-3 wthree_team_grid">
        <div class="hovereffect">
          <img src="resources/res/images/team4.jpg" alt=" " class="img-responsive" />
          <div class="overlay">
            <h6>Transporters</h6>
            <div class="rotate">
              <p class="group1">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </p>
              <hr>
              <hr>
              <p class="group2">
                <a href="#">
                  <i class="fa fa-instagram"></i>
                </a>
                <a href="#">
                  <i class="fa fa-dribbble"></i>
                </a>
              </p>
            </div>
          </div>
        </div>
        <h4>John smith</h4>
        <p>Transport Dealer</p>
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!-- //team -->

<!-- Clients -->
<div class=" col-md-6 clients">
  <h3>Testimonials</h3>
  <section class="slider">
    <div class="flexslider">
      <ul class="slides">
        <li>
          <div class="client">
            <img src="resources/res/images/t1.jpg" alt="" />
            <h5>Brian Fantana</h5>
            <div class="clearfix"> </div>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>

        </li>
        <li>
          <div class="client">
            <img src="resources/res/images/t2.jpg" alt="" />
            <h5>Brick Tamland</h5>
            <div class="clearfix"> </div>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>

        </li>
        <li>
          <div class="client">
            <img src="resources/res/images/t3.jpg" alt="" />
            <h5>Ron Burgundy</h5>
            <div class="clearfix"> </div>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>

        </li>
        <li>
          <div class="client">
            <img src="resources/res/images/t4.jpg" alt="" />
            <h5>Arturo Mendez</h5>
            <div class="clearfix"> </div>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>

        </li>
      </ul>
    </div>
  </section>
</div>
<!-- //Clients -->
<!-- Counter -->
<div class="col-md-6 services-bottom">
  <div class="col-md-6 agileits_w3layouts_about_counter_left">
    <div class="countericon">
      <i class="fa fa-truck" aria-hidden="true"></i>
    </div>
    <div class="counterinfo">
      <p class="counter">1126</p>
      <h3>Transport vehicles</h3>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="col-md-6 agileits_w3layouts_about_counter_left">
    <div class="countericon">
      <i class="fa fa-fighter-jet" aria-hidden="true"></i>
    </div>
    <div class="counterinfo">
      <p class="counter">180</p>
      <h3>International Service</h3>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="clearfix"> </div>
  <div class="col-md-6 agileits_w3layouts_about_counter_left">
    <div class="countericon">
      <i class="fa fa-calendar" aria-hidden="true"></i>
    </div>
    <div class="counterinfo">
      <p class="counter">20</p>
      <h3>Years Of Service</h3>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="col-md-6 agileits_w3layouts_about_counter_left">
    <div class="countericon">
      <i class="fa fa-user" aria-hidden="true"></i>
    </div>
    <div class="counterinfo">
      <p class="counter">800</p>
      <h3>Happy clients</h3>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="clearfix"> </div>
</div>
<div class="clearfix"> </div>
<!-- //Counter -->


<!-- our blog -->
<section class="blog" id="blog">
  <div class="container">
    <div class="heading">
      <h3>Latest News</h3>
    </div>
    <div class="blog-grids">
      <div class="col-md-4 blog-grid">
        <a href="#" data-toggle="modal" data-target="#myModal"><img src="resources/res/images/bg4.jpg" alt="" /></a>
        <h5>June 10,2017</h5>
        <h4><a href="#" data-toggle="modal" data-target="#myModal">Road Way Transport</a></h4>
        <p> Lorem ipsum dolor sit amet, consectetur adipi scingelit. Vestibulum orci justo, vehicula vel sapien et, feugiat sapien. Integer sit amet.</p>
        <div class="readmore-w3">
          <a class="readmore" href="#" data-toggle="modal" data-target="#myModal">Read More</a>
        </div>
      </div>
      <div class="col-md-4 blog-grid">
        <a href="#" data-toggle="modal" data-target="#myModal"><img src="resources/res/images/bg7.jpg" alt="" /></a>
        <h5>June 17,2017</h5>
        <h4><a href="#" data-toggle="modal" data-target="#myModal">Water Way Transport</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipi scingelit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique.</p>
        <div class="readmore-w3">
          <a class="readmore" href="#" data-toggle="modal" data-target="#myModal">Read More</a>
        </div>
      </div>
      <div class="col-md-4 blog-grid">
        <a href="#" data-toggle="modal" data-target="#myModal"><img src="resources/res/images/bg8.jpg" alt="" /></a>
        <h5>June 26,2017</h5>
        <h4><a href="#" data-toggle="modal" data-target="#myModal">Rail Transport</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipi scingelit. Vestibulum orci justo, vehicula vel sapien et, feugiat sapien. Integer sit amet.</p>
        <div class="readmore-w3">
          <a class="readmore" href="#" data-toggle="modal" data-target="#myModal">Read More</a>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</section>
<!-- //our blog -->

<!-- footer -->
<footer>
  <div class="agileits-w3layouts-footer">
    <div class="container">
      <div class="col-md-4 w3-agile-grid">
        <h5>About Us</h5>
        <p>Logistic System is a leading worldwide provider of transportation, logistics and supply chain solutions.</p>
        <div class="footer-agileinfo-social">
          <ul>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-rss"></i></a></li>
            <li><a href="#"><i class="fa fa-vk"></i></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-4 w3-agile-grid">
        <h5>Address</h5>
        <div class="w3-address">
          <div class="w3-address-grid">
            <div class="w3-address-left">
              <i class="fa fa-phone" aria-hidden="true"></i>
            </div>
            <div class="w3-address-right">
              <h6>Phone Number</h6>
              <p>+0(12) 000-00-00</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="w3-address-grid">
            <div class="w3-address-left">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </div>
            <div class="w3-address-right">
              <h6>Email Address</h6>
              <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="w3-address-grid">
            <div class="w3-address-left">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
            </div>
            <div class="w3-address-right">
              <h6>Location</h6>
              <p> SE10 8JQ, Greenwich Road, London.
                Telephone : +0(12) 444 262 399
              </p>
            </div>
            <div class="clearfix"> </div>
          </div>
        </div>
      </div>
      <div class="col-md-4 w3-agile-grid">
        <h5>Recent Posts</h5>
        <div class="w3ls-post-grids">
          <div class="w3ls-post-grid">
            <div class="w3ls-post-img">
              <a href="#"><img src="resources/res/images/p1.jpg" alt="" /></a>
            </div>
            <div class="w3ls-post-info">
              <h6><a href="#" data-toggle="modal" data-target="#myModal">Donec vel sapien in erat</a></h6>
              <p>June 10,2017</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="w3ls-post-grid">
            <div class="w3ls-post-img">
              <a href="#"><img src="resources/res/images/p2.jpg" alt="" /></a>
            </div>
            <div class="w3ls-post-info">
              <h6><a href="#" data-toggle="modal" data-target="#myModal">Donec vel sapien in erat</a></h6>
              <p>June 17,2017</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="w3ls-post-grid">
            <div class="w3ls-post-img">
              <a href="#"><img src="resources/res/images/p3.jpg" alt="" /></a>
            </div>
            <div class="w3ls-post-info">
              <h6><a href="#" data-toggle="modal" data-target="#myModal">Donec vel sapien in erat</a></h6>
              <p>June 26,2017</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="w3ls-post-grid">
            <div class="w3ls-post-img">
              <a href="#"><img src="resources/res/images/p1.jpg" alt="" /></a>
            </div>
            <div class="w3ls-post-info">
              <h6><a href="#" data-toggle="modal" data-target="#myModal">Donec vel sapien in erat</a></h6>
              <p>June 26,2017</p>
            </div>
            <div class="clearfix"> </div>
          </div>
        </div>
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <p>© 2019 Minsk Logistic System </p>
    </div>
  </div>
</footer>
<!-- //footer -->



<!-- js-scripts -->
<!-- start-smoth-scrolling -->
<script src="resources/res/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="resources/res/js/move-top.js"></script>
<script type="text/javascript" src="resources/res/js/easing.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $(".scroll").click(function(event){
      event.preventDefault();
      $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
    });
  });
</script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
  $(document).ready(function() {
    /*
        var defaults = {
        containerID: 'toTop', // fading element id
        containerHoverID: 'toTopHover', // fading element hover id
        scrollSpeed: 1200,
        easingType: 'linear'
        };
    */

    $().UItoTop({ easingType: 'easeOutQuart' });

  });
</script>
<!-- //here ends scrolling icon -->
<!-- start-smoth-scrolling -->

<!-- Baneer-js -->
<script src="resources/res/js/responsiveslides.min.js"></script>
<script>
  $(function () {
    $("#slider").responsiveSlides({
      auto: true,
      pager:false,
      nav: true,
      speed: 1000,
      namespace: "callbacks",
      before: function () {
        $('.events').append("<li>before event fired.</li>");
      },
      after: function () {
        $('.events').append("<li>after event fired.</li>");
      }
    });
  });
</script>
<!-- //Baneer-js -->

<!-- banner bottom video script -->
<script src="resources/res/js/simplePlayer.js"></script>
<script>
  $("document").ready(function() {
    $("#video").simplePlayer();
  });
</script>
<!-- //banner bottom video script -->

<!-- Stats-Number-Scroller-Animation-JavaScript -->
<script src="resources/res/js/waypoints.min.js"></script>
<script src="resources/res/js/counterup.min.js"></script>
<script>
  jQuery(document).ready(function( $ ) {
    $('.counter').counterUp({
      delay: 100,
      time: 1000
    });
  });
</script>
<!-- //Stats-Number-Scroller-Animation-JavaScript -->


<!-- FlexSlider-JavaScript -->
<script defer src="resources/res/js/jquery.flexslider.js"></script>
<script type="text/javascript">
  $(function(){
    SyntaxHighlighter.all();
  });
  $(window).load(function(){
    $('.flexslider').flexslider({
      animation: "slide",
      start: function(slider){
        $('body').removeClass('loading');
      }
    });
  });
</script>
<!-- //FlexSlider-JavaScript -->

<!-- //js-scripts -->
</body>
</html>