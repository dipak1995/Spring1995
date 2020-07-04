<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>


<html>

<head>
    <title>首页</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="task9.1.css">

</head>

<body>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/task9.1.css">

<!--header-->
<header>
    <div class="container-fluid header">
        <div class="row">
            <div class="col-10 offset-1 d-flex justify-content-between">
                <p class="header-p">客服热线:010-594-78634</p>
                 <div ${user}${msg}></div>

                <div class="d-flex">
                    <div class="header-logo-container">
                        <img src="${pageContext.request.contextPath}/img/3.png" />
                    </div>
                    <div class="header-logo-container">
                        <img class="header-logo" src="${pageContext.request.contextPath}/img/2.png" />
                    </div>
                    <div class="header-logo-container">
                        <img class="header-logo" src="${pageContext.request.contextPath}/img/1.png" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--nav-->
    <div class="container-fluid  nav-container">
        <div class="row">
            <div class="col-sm-10 offset-sm-1">
                <nav class="navbar navbar-expand-md navbar-dark" style="padding:0">
                    <a class="navbar-brand" href="#">
                        <p style="font-size:2.3rem;margin:0;">技能树</p>
                        <p style="font-size:1rem;">www.jnshu.com</p>
                    </a>
                    <a href="${pageContext.request.contextPath}/logout">注销</a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#collapsiblejnshu">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsiblejnshu">
                        <ul class="navbar-nav justify-content-end nav-center" style="width:100%">
                            <!--链接组(导航组)-->
                            <li class="nav-item">

                                <a class="nav-link nav-a" href="../xzy/t10">首页 </a>
                                <div class="nav-li"></div>

                                <!--链接-->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="../xzy/t11">职业</a>
                                <div class="nav-li"></div>
                                <!--链接-->
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link nav-a" href="../user/allBmb">学员信息</a>
                                <div class="nav-li"></div>
                                <!--链接-->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="task9.2.html">关于</a>
                                <div class="nav-li"></div>
                                <!--链接-->
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>

</body>
</html>