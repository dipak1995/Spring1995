<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/tags" prefix="date"%>

<html>
<body>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/task9.1.css">

<!--carousel-->
<div id="mycarousel" class="carousel slide " data-ride="carousel">
    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
        <li data-target="#mycarousel" data-slide-to="1"></li>
        <li data-target="#mycarousel" data-slide-to="2"></li>
    </ul>
    <!--data-target="#mycarousel"写在轮播器列表li标签里，将轮播绑定轮播器区域div的id-->
    <!--data-slide-to="0"写在轮播器列表li标签里，将轮播器列表编号，默认从0开始-->
    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="carousel-img" src="${pageContext.request.contextPath}/img/big.png" />
            <div class="carousel-caption">
                <p class="carousel-p-1 text-right">作为你一个初级菜鸟,你是否想要了解</p>
                <p class="carousel-p-2 text-center">50万年薪的程序员,都会那些技能呢?</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/img/big.png" class="carousel-img" />
            <!--在carousel-item中插<div class="carousel-caption">-->
            <div class="carousel-caption">
                <h1>第二张轮播图</h1>
            </div>
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/img/big.png" class="carousel-img" />
            <div class="carousel-caption">
                <h1>第三张轮播图</h1>
            </div>
        </div>
    </div>

<%--    <div class="carousel-inner">--%>
<%--        <div class="carousel-item active">--%>
<%--            <img class="carousel-img" src="img/1111.png" />--%>
<%--            <div class="carousel-caption">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <img src="img/ll.png" class="carousel-img" />--%>
<%--            <!--在carousel-item中插<div class="carousel-caption">-->--%>
<%--            <div class="carousel-caption">--%>

<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <img src="img/lll.jpeg" class="carousel-img" />--%>
<%--            <div class="carousel-caption">--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#mycarousel" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <!--carousel-control轮播器箭头样式-->
    <!--href="#mycarousel"写在轮播器箭头a标签里，将a标签连接href=轮播器区域div的id-->
    <!--data-slide="prev"写在轮播器箭头a标签里，设置箭头左点击事件-->
    <a class="carousel-control-next" href="#mycarousel" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>
</header>
<!--main-->
<main class="main-container">
    <!--main-1-->
    <div class="container-fluid main-1-container">
        <div class="row">
            <div class="col-8 offset-2">
                <div class="row">
                    <div class="col-sm-6 col-md-3 main-1-box">
                        <img class="main-ioc-1" src="${pageContext.request.contextPath}/img/4.png" />
                        <h4 class="main-1-caption">高效</h4>
                        <p class="main-p">将五到七年的成长时间,缩短到一年到三年.</p>
                    </div>
                    <div class="col-sm-6 col-md-3 main-1-box">
                        <img class="main-ioc-1" src="${pageContext.request.contextPath}/img/5.png" />
                        <h4 class="main-1-caption">规范</h4>
                        <p class="main-p">标准的实战教程,不会走弯路.</p>
                    </div>
                    <div class="col-sm-6 col-md-3 main-1-box">
                        <img class="main-ioc-1" src="${pageContext.request.contextPath}/img/66.png" />
                        <h4 class="main-1-caption">人脉</h4>
                        <p class="main-p">同班好友,同院学长,技术大师,入学就混入职脉圈,为以后铺平道路.</p>
                    </div>
                    <div class="col-sm-6 col-md-3 main-1-box-2">
                        <div class="d-flex main-h-box">
                            <img src="${pageContext.request.contextPath}/img/6.png" />
                            <h4 class="main-h">12400</h4>
                        </div>
                        <p class="main-h-p">累计在线学习人数</p>
                        <div class="d-flex main-h-box">
                            <img src="${pageContext.request.contextPath}/img/6.png" />
                            <h4 class="main-h">12400</h4>
                        </div>
                        <p class="main-h-p">学员已经找到满意工作</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--headline-->
    <div class="headline">
        <h4>如何学习</h4>
    </div>
    <!--main-2-->
    <div class="container-fluid main-caption-container">
        <div class="row">
            <div class="col-8 offset-2">
                <div class="row">
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">1</div>
                        <p class="mr-auto">匹配现在的个人情况，寻找适合自己的岗位</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">2</div>
                        <p class="mr-auto">了解职业前景薪金待遇竞争压力等</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">3</div>
                        <p class="mr-auto margin:0">掌握行业内顶级技能</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">4</div>
                        <p>查看职业目标任务</p>
                    </div>

                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">5</div>
                        <p class="mr-auto">参考学习资源，掌握技能点，逐个完成任务</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">6</div>
                        <p class="mr-auto">加入班级，和小伙伴们互帮互助，一块学习</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">7</div>
                        <p class="mr-auto">选择导师，一路引导， 加速自己成长</p>
                        <img class="main-2-ioc" src="${pageContext.request.contextPath}/img/7.png" />
                    </div>
                    <div class="col-sm-6 col-lg-3 p-2 d-flex align-items-center">
                        <div class="digit">8</div>
                        <p>完成职业技能，升级业界大牛</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="headline">
        <h4>优秀学员展示</h4>
    </div>
    <!--main-3-->
    <div class="container-fluid">
        <div class="row ">
            <div class="col-8 offset-2">
                <div class="row ">
                    <c:forEach items="${requestScope.students}" var="stu">

                        <div class="col-sm-6 col-lg-3 main-3-padding">
                            <div class="main-3-content">
                                <div class="main-3-ioc-container">
                                    <img class="main-3-ioc" src="${pageContext.request.contextPath}/${stu.img}" />
                                </div>
                                <h5 class="main-3-h">${stu.position}：${stu.name}</h5>
                                <p class="main-3-p">${stu.description}</p>

                                < date:date value =""/>
                            </div>
                        </div>

                    </c:forEach>


<%--                    <div class="col-sm-6 col-lg-3 main-3-padding">--%>
<%--                        <div class="main-3-content">--%>
<%--                            <div class="main-3-ioc-container">--%>
<%--                                <img class="main-3-ioc" src="img/9.png" />--%>
<%--                            </div>--%>
<%--                            <h5 class="main-3-h">技术顾问：罗大佑</h5>--%>
<%--                            <p class="main-3-p">百度技术总监：互联网基础服务领域，从事虚拟主机、--%>
<%--                                云服务器、域名。曾任新网高级技术经理，负责技术研发、团队管理与建设。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-6 col-lg-3 main-3-padding">--%>
<%--                        <div class="main-3-content">--%>
<%--                            <div class="main-3-ioc-container">--%>
<%--                                <img class="main-3-ioc" src="img/10.png" />--%>
<%--                            </div>--%>
<%--                            <h5 class="main-3-h">技术顾问：罗大佑</h5>--%>
<%--                            <p class="main-3-p">百度技术总监：互联网基础服务领域，从事虚拟主机、--%>
<%--                                云服务器、域名。曾任新网高级技术经理，负责技术研发、团队管理与建设。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-6 col-lg-3 main-3-padding">--%>
<%--                        <div class="main-3-content">--%>
<%--                            <div class="main-3-ioc-container">--%>
<%--                                <img class="main-3-ioc" src="img/11.png" />--%>
<%--                            </div>--%>
<%--                            <h5 class="main-3-h">技术顾问：罗大佑</h5>--%>
<%--                            <p class="main-3-p">百度技术总监：互联网基础服务领域，从事虚拟主机、--%>
<%--                                云服务器、域名。曾任新网高级技术经理，负责技术研发、团队管理与建设。--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</main>

        <div class="headline">
            <h4>战略合作企业</h4>
        </div>
        <!--main-4-->
        <div class="main-4">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-8 offset-2">
                        <div class="row">
                            <div class="col-lg main-4-box col-md-6 p-0 d-flex align-items-center">
                                <img class="main-4-img" src="${pageContext.request.contextPath}/img/a.png" />
                            </div>
                            <div class="col-lg main-4-box col-md-6 p-0 d-flex align-items-center">
                                <img class="main-4-img" src="${pageContext.request.contextPath}/img/b.png" />
                            </div>
                            <div class="col-lg main-4-box col-md-6 p-0 d-flex align-items-center">
                                <img class="main-4-img" src="${pageContext.request.contextPath}/img/c.png" />
                            </div>
                            <div class="col-lg main-4-box col-md-6 p-0 d-flex align-items-center">
                                <img class="main-4-img" src="${pageContext.request.contextPath}/img/d.png" />
                            </div>
                            <div class="col-lg main-4-box col-md-6 p-0 d-flex align-items-center ">
                                <img class="main-4-img" src="${pageContext.request.contextPath}/img/e.png" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<!--footer-->
<div class="footer">
    <!--footer-1-->
    <div class="footer-1">
        <h4 class="footer-h">友情链接</h4>

        <div class="container-fluid">
            <div class="row">
                <div class="col-8 offset-2 footer-1-flex">
                    <div class="row">
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1 footer-1-box">

                            <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>

                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘 </p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘 </p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;教师招聘</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;手机软件</p>
                            </div>
                        </div>
                        <div class="col-lg col-md-2 col-sm-5 m-1 p-1">
                            <div class="footer-1-box">
                                <p class="footer-1-p">·&nbsp;&nbsp;找工作</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>