

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



<!-- //js-scripts -->
</body>
</html>