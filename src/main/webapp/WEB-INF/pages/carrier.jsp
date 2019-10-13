<!-- Раскомментировать для jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>












<html>
<head>
    <title>Logistic</title>

    <link rel="stylesheet" href="<c:url value="/resources/res/css/bootstrap.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/style.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/font-awesome.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/window.css" />"/>


    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/autor_style.css" />"/>

    <link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/modal.css" />" />
</head>
<body>
<div class="header">
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <h1><a href="index.html">Transporters</a></h1>
        </div>
        <div class="top-nav-text">
            <div class="nav-contact-w3ls"><i class="fa fa-phone" aria-hidden="true"></i><p>+375(44) 000-00-00</p></div>
        </div>
        <!-- navbar-header -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"><span data-hover="ShortCodes">Profile</span><span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <c:choose>
                            <c:when test="${user.login ne null}">
                                <li><a href="<c:url value="/exit"/>" target="_self"><span data-hover="Icons">Log out</span></a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="<c:url value="/autorization"/>" target="_self"><span data-hover="Icons">Log in</span></a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="<c:url value="/users"/>" target="_self"><span data-hover="Typograpghy">Sign in</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>

<div class="w3layouts-banner-top w3layouts-banner-top1">
    <div class="semilayer">
        <div class="mybody">
            <div class="container">
                <div class="article container">
                    <div class="row otstup">
                        <div class="col-md-8">
                            <h1 class="h2 page-header"
                                style="color:#8d1645; font-family: 'Lobster', cursive; margin-top: -1px;
                        text-align: center;">Wellcome to registration page</h1>
                            <section class="main">
                                <c:url var="addAction" value="/users/add"/>

                            </section>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script  src="${pageContext.request.contextPath}/resources/res/js/jquery-2.1.4.min.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/bootstrap.js"></script>


<script type="text/javascript">
    $(function(){
        $(".showpassword").each(function(index,input) {
            var $input = $(input);
            $("<p class='opt'/>").append(
                $("<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />").click(function() {
                    var change = $(this).is(":checked") ? "text" : "password";
                    var rep = $("<input placeholder='Password' type='" + change + "' />")
                        .attr("id", $input.attr("id"))
                        .attr("name", $input.attr("name"))
                        .attr('class', $input.attr('class'))
                        .val($input.val())
                        .insertBefore($input);
                    $input.remove();
                    $input = rep;
                })
            );
        });

        $('#showPassword').click(function(){
            if($("#showPassword").is(":checked")) {
                $('.icon-lock').addClass('icon-unlock');
                $('.icon-unlock').removeClass('icon-lock');
            } else {
                $('.icon-unlock').addClass('icon-lock');
                $('.icon-lock').removeClass('icon-unlock');
            }
        });
    });

    function checkPassword () {
        var pass = document.getElementById("password").value;
        var pass2 = document.getElementById("password2").value;
        if(pass !== pass2 ){
            alert('Passwords are different');
            return false;
        }
        return true;
    }

    function loginTest() {
        var login = document.getElementById('loginField').value;
        <c:forEach items="${loginList}" var="loginFromList">
        if (login === '${loginFromList}'){
            var text = document.getElementById('info');
            text.innerHTML = "Login already exists";
            var a = document.createElement('a');
            a.href = "#modal";
            a.click();
            return false;
        }
        </c:forEach>
        return true;
    }

    function check() {
        if (loginTest() === true){
            if (checkPassword() === true)
                return true;
        }
        return false;
    }
</script>
</body>
</html>