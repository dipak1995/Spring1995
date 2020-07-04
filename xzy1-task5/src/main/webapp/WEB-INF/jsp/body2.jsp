<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/task9.3.css">

<!--main-->
<main class="main-container">
    <div class="container">
        <!--main-header-->
        <h2 id="000" class="m-0 main-h">首页><span style="color:rgb(41,176,120);">职业</span></h2>
        <!--main-nav-->
        <nav class="navbar navbar-expand-sm bg-success navbar-dark">
            <a class="navbar-brand main-nav-a" href="#">方向</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsiblefangxiang">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsiblefangxiang">
                <ul class="navbar-nav main-nav-a">
                    <li class="nav-item main-nav-a">
                        <a class="nav-link" href="#000">全部</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#aaa">前端开发</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#bbb">后端开发</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#ccc">运营维护</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#ddd">产品经理</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--main-WEB-->
        <div class="main-web">
            <h2 id="aaa" class="m-0 main-h">前端方向</h2>
            <div class="row">

                <c:forEach items="${professions}" varStatus="now">
                <div class="col-lg-4 col-md-6">
                    <!--main中的盒子-->
                    <div class="main-box">
                        <div class="main-box-111 p-4">
                            <h4 class="main-box-111-h">IOS工程师</h4>
                            <p>${professions.get(now.index).content}</p>
                        </div>
                        <!--box-1-->
                        <div class="d-flex p-2">
                            <img src="${pageContext.request.contextPath}/${professions.get(now.index).img}" />
                            <div class="p-2">
                                <h4>${professions.get(now.index).professions}</h4>
                                <p>${professions.get(now.index).description}</p>
                            </div>
                        </div>
                        <!--box-2-->
                        <div class="d-flex">
                            <!--box-2-box-->
                            <div class="main-box-2-box">
                                <div class="d-flex main-box-2-box-container">
                                    <p class="m-0 p-2">云门</p>

                                    <c:forEach begin="1" end="${professions.get(now.index).sill}">
                                    <img class="p-2" src="${pageContext.request.contextPath}/img/wujiao.png" />
                                    </c:forEach>


                                </div>
                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span
                                        class="main-box-2-span">1-3</span>年</p>
                            </div>
                            <div></div>
                            <div class="main-box-2-box">
                                <div class="d-flex main-box-2-box-container">
                                    <p class="m-0 p-2">难易程度</p>

                                    <c:forEach begin="1" end="${professions.get(now.index).difficult}">
                                    <img class="p-2" src="${pageContext.request.contextPath}/img/wujiao.png" />
                                    </c:forEach>

                                </div>
                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span
                                        class="main-box-2-span">345</span>家公司需要</p>
                            </div>
                        </div>
                        <!--box-3-->
                        <div class="d-flex">
                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>
                            <div class="main-box-3-R">
                                <div class="d-flex main-box-3-R-box">
                                    <span>0-1年</span>
                                    <span>5k-10k/月</span>
                                </div>
                                <div class="d-flex main-box-3-R-box">
                                    <span>1-3年</span>
                                    <span>10k-20k/月</span>
                                </div>
                                <div class="d-flex main-box-3-R-box">
                                    <span>3-5年</span>
                                    <span>20k-50k/月</span>
                                </div>
                            </div>
                        </div>
                        <!--box-4-->
                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>
                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>
                    </div>
                </div>
                </c:forEach>

<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-222 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="${pageContext.request.contextPath}img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="${pageContext.request.contextPath}img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="${pageContext.request.contextPath}img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="${pageContext.request.contextPath}img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-333 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!--main-JAVA-->--%>
<%--        <div class="main-java">--%>
<%--            <h2 id="bbb" class="m-0 main-h">后端方向</h2>--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-111 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。</p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-222 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-333 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-222 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-333 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!--main-QA-->--%>
<%--        <div class="main-qa">--%>
<%--            <h2 id="ccc" class="m-0 main-h">运维方向</h2>--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-111 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。</p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-222 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-333 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!--main-PM-->--%>
<%--        <div class="main-pm">--%>
<%--            <h2 id="ddd" class="m-0 main-h">产品方向</h2>--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-4 col-md-6">--%>
<%--                    <!--main中的盒子-->--%>
<%--                    <div class="main-box">--%>
<%--                        <div class="main-box-111 p-4">--%>
<%--                            <h4 class="main-box-111-h">IOS工程师</h4>--%>
<%--                            <p>iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OSX操作系统一样，也是以Darwin为基础的，--%>
<%--                                因此同样属于类Unix的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度。--%>
<%--                                有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，--%>
<%--                                人才培养机制更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。</p>--%>
<%--                        </div>--%>
<%--                        <!--box-1-->--%>
<%--                        <div class="d-flex p-2">--%>
<%--                            <img src="img/box.png" />--%>
<%--                            <div class="p-2">--%>
<%--                                <h4>Web前端工程师</h4>--%>
<%--                                <p>Web前端开发工程师，主要职责是利用（X）HTML/CSS/JavaScript/flash等各种Web技术进行产品的开发。</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-2-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <!--box-2-box-->--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">云门</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">成长周期 <span--%>
<%--                                        class="main-box-2-span">1-3</span>年</p>--%>
<%--                            </div>--%>
<%--                            <div></div>--%>
<%--                            <div class="main-box-2-box">--%>
<%--                                <div class="d-flex main-box-2-box-container">--%>
<%--                                    <p class="m-0 p-2">难易程度</p>--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                    <img class="p-2" src="img/wujiao.png" />--%>
<%--                                </div>--%>
<%--                                <p class="m-0 p-2 main-box-2-box-container">稀缺程度 <span--%>
<%--                                        class="main-box-2-span">345</span>家公司需要</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-3-->--%>
<%--                        <div class="d-flex">--%>
<%--                            <p class="main-box-3-L d-flex m-0">薪资待遇</p>--%>
<%--                            <div class="main-box-3-R">--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>0-1年</span>--%>
<%--                                    <span>5k-10k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>1-3年</span>--%>
<%--                                    <span>10k-20k/月</span>--%>
<%--                                </div>--%>
<%--                                <div class="d-flex main-box-3-R-box">--%>
<%--                                    <span>3-5年</span>--%>
<%--                                    <span>20k-50k/月</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!--box-4-->--%>
<%--                        <p class="m-0 p-2 main-box-4-p1">有<span style="color:red;">286</span>人正在学</p>--%>
<%--                        <p class="m-0 p-2 main-box-4-p2">提示：在你学习之前你应该掌握xxxx、xxxx、xx、等语言基础</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>

</main>
</body>
</html>