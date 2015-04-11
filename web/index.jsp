<%--
  Created by IntelliJ IDEA.
  User: LU
  Date: 2015/4/4
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en">
<![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en">
<![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <title>比特能•专家机器人</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <%--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">--%>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">

    <!-- JavaScripts -->
    <script src="js/vendor/jquery-1.10.2.min.js"></script>
    <script src="js/vendor/modernizr.min.js"></script>

</head>
<body>
<c:import url="header.jsp"></c:import>
<%--
<header class="site-header" id="top">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-header col-md-4">
                        <div class="logo-wrapper">
                            <a class="navbar-brand" href="#templatemo">
                                <p>比特能•专家机器人</p>
                            </a>
                        </div>
                    </div>
                    <div class="collapse navbar-collapse col-md-6" id="main-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><span></span><a href="#top" class="home"><i class="icon-home icon-large"></i>主页</a></li>
                            <li><span></span><a href="#first-section" class="about">最新动态</a></li>
                            <li><span></span><a href="#second-section" class="portfolio">用户帮助</a></li>
                            <li><span></span><a href="#third-section" class="contact">联系我们</a></li>
                        </ul>
                    </div>
                    <div class="navbar-user col-md-2" id="user-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><span></span><a href="#top" class="home"><i class="icon-user icon-large"></i>用户登录</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>--%>

<div id="big-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <ul class="main-icons">
                    <li><a href="#"><i class="icon-group icon-4x"></i>协同服务</a></li>
                    <li><a href="./search.jsp"><i class="icon-search icon-4x"></i>检索</a></li>
                    <li><a href="#"><i class="icon-stethoscope icon-4x"></i>关联网络</a></li>
                    <li><a href="#"><i class="icon-thumbs-up icon-4x"></i>智能推荐</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%--
<table id="section">
    <tr>
        <td>
            <div id="first-section">
            <div class="heading">
                <div class="container section-container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="header-section-title">最新动态</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </td>

        <td>
            <div id="second-section">
                <div class="heading">
                    <div class="container section-container">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>精彩瞬间</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div id="first-section1">
                <div class="container section-container">
                    <div class="row">
                        <div class="triangle"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <section id="cd-timeline" class="cd-container">
                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/first-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content service-box-content">
                                        <h2>比特能</h2>

                                        &lt;%&ndash;<p>Timeline is free responsive template by <span
                                                class="blue">template</span><span class="green">mo</span>. This layout
                                            is based on Bootstrap v3.1.1 and you may use this template for any website.
                                            Credit goes to <a rel="nofollow" href="#">Unsplash</a> for all images.</p>&ndash;%&gt;
                                        <p>
                                            “比特能”是一种集数据、信息和知识于一体的能量源，如同原子通过裂变爆发出巨大能量一般，大数据通过大链接产生“比特能”。
                                        </p>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-movie">
                                        <img src="images/second-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content service-box-content">
                                        <h2>中国工业淘堡网</h2>

                                        <p>
                                            中国工业淘堡网是面向我国工业企业提供大数据“比特能”的电子商务网站，用户在淘堡网上可以淘产品、淘技术、淘人才，本课题主要用于支撑淘人才服务
                                        </p>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-icon">
                                        <img src="images/third-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content service-box-content">
                                        <h2>大数据</h2>

                                        <p>大数据是当前人工智能领域研究的一个热点，人的行为数据是“大数据”的一个重要特征和研究价值所在。</p>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-location">
                                        <img src="images/fourth-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content service-box-content">
                                        <h2>比特能•专家机器人</h2>

                                        <p>通过对互联网信息的采集、过滤、挖掘、关联计算和组织存储构建专家在互联网上的虚拟存在，实现专家知识、智慧和影响力的延伸。</p>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </td>
        <td>

            <div id="second-section2">
                <div class="container section-container">
                    <div class="row">
                        <div class="triangle"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <section id="cd-timeline-2" class="cd-container">
                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/camera-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content projects">
                                        <img src="images/project-1.jpg" alt="">

                                        <div class="project-content">
                                            <h2>图片1</h2>
                                            <span>2015年1月9日</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/camera-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content projects">
                                        <img src="images/project-2.jpg" alt="">

                                        <div class="project-content">
                                            <h2>图片2</h2>
                                            <span>2015年3月12日</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/camera-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content projects">
                                        <img src="images/project-3.jpg" alt="">

                                        <div class="project-content">
                                            <h2>图片3</h2>
                                            <span>2015年4月9日</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/camera-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content projects">
                                        <img src="images/project-4.jpg" alt="">

                                        <div class="project-content">
                                            <h2>图片4</h2>
                                            <span>2015年5月10日</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cd-timeline-block">
                                    <div class="cd-timeline-img cd-picture">
                                        <img src="images/camera-icon.png" alt="Picture">
                                    </div>

                                    <div class="cd-timeline-content projects">
                                        <img src="images/project-5.jpg" alt="">

                                        <div class="project-content">
                                            <h2>图片5</h2>
                                            <span>2015年7月25日</span>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </tr>
</table>--%>

<div id="first-section">
    <div class="heading">
        <div class="container section-container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="header-section-title">最新动态</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="first-section1">
    <div class="container section-container">
        <div class="row">
            <div class="triangle"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <section id="cd-timeline" class="cd-container">
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/first-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content service-box-content">
                            <h2>比特能</h2>

                            <%--<p>Timeline is free responsive template by <span
                                    class="blue">template</span><span class="green">mo</span>. This layout
                                is based on Bootstrap v3.1.1 and you may use this template for any website.
                                Credit goes to <a rel="nofollow" href="#">Unsplash</a> for all images.</p>--%>
                            <p>
                                “比特能”是一种集数据、信息和知识于一体的能量源，如同原子通过裂变爆发出巨大能量一般，大数据通过大链接产生“比特能”。
                            </p>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-movie">
                            <img src="images/second-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content service-box-content">
                            <h2>中国工业淘堡网</h2>

                            <p>
                                中国工业淘堡网是面向我国工业企业提供大数据“比特能”的电子商务网站，用户在淘堡网上可以淘产品、淘技术、淘人才，本课题主要用于支撑淘人才服务
                            </p>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-icon">
                            <img src="images/third-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content service-box-content">
                            <h2>大数据</h2>

                            <p>大数据是当前人工智能领域研究的一个热点，人的行为数据是“大数据”的一个重要特征和研究价值所在。</p>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-location">
                            <img src="images/fourth-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content service-box-content">
                            <h2>比特能•专家机器人</h2>

                            <p>通过对互联网信息的采集、过滤、挖掘、关联计算和组织存储构建专家在互联网上的虚拟存在，实现专家知识、智慧和影响力的延伸。</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>


<div id="second-section">
    <div class="heading">
        <div class="container section-container">
            <div class="row">
                <div class="col-md-12">
                    <h2>精彩瞬间</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="second-section2">
    <div class="container section-container">
        <div class="row">
            <div class="triangle"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <section id="cd-timeline-2" class="cd-container">
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/camera-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content projects">
                            <img src="images/project-1.jpg" alt="">

                            <div class="project-content">
                                <h2>图片1</h2>
                                <span>2015年1月9日</span>
                            </div>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/camera-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content projects">
                            <img src="images/project-2.jpg" alt="">

                            <div class="project-content">
                                <h2>图片2</h2>
                                <span>2015年3月12日</span>
                            </div>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/camera-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content projects">
                            <img src="images/project-3.jpg" alt="">

                            <div class="project-content">
                                <h2>图片3</h2>
                                <span>2015年4月9日</span>
                            </div>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/camera-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content projects">
                            <img src="images/project-4.jpg" alt="">

                            <div class="project-content">
                                <h2>图片4</h2>
                                <span>2015年5月10日</span>
                            </div>
                        </div>
                    </div>

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="images/camera-icon.png" alt="Picture">
                        </div>

                        <div class="cd-timeline-content projects">
                            <img src="images/project-5.jpg" alt="">

                            <div class="project-content">
                                <h2>图片5</h2>
                                <span>2015年7月25日</span>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>


<%--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>--%>

<!--
<div id="cta">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Projects</h4>
                <p>What we have done</p>
            </div>
        </div>
    </div>
</div>
-->


<!--
<div id="map">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Visit Us</h4>
                <p>This is where we operate</p>
            </div>
        </div>
    </div>
</div>

<div id="third-section">
    <div class="heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Send Us A Message</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="third-section3">
    <div class="container">
        <div class="row">
            <div class="triangle"></div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <form class="form">
                    <div class="row">
                        <div class="name col-md-4">
                            <input type="text" name="name" id="name" placeholder="Name" />
                        </div>
                        <div class="email col-md-4">
                            <input type="text" name="email" id="email" placeholder="Email" />
                        </div>
                        <div class="subject col-md-4">
                            <input type="text" name="subject" id="subject" placeholder="Subject" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="text col-md-12">
                            <textarea name="text" placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="submit">
                        <input type="submit" value="Send Now" />
                    </div>
                </form>
            </div>
            <div class="col-md-4">
                <div class="contact-discription">
                    <h4>More About Us!</h4>
                    <p>Suspendisse sit amet tincidunt dolor, at elementum augue. In non diam nulla. Nulla sit amet ipsum finibus purus tempor pellentesque.
                        <br><br>
                        <strong>Mailing Address:</strong><br>
                        No 123, New street, Sed sit amet arcu ut quam, 10550.
                        <br><br>
                        Tel: 010 020 0340<br>
                        Email: info@company.com
                        <br><br>
                        Morbi tincidunt nibh ante, ut lacinia turpis euismod vel. Nam suscipit justo sit amet vehicula elementum.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
-->
<c:import url="footer.jsp"></c:import>


<!-- Javascripts -->
<script type="text/javascript" src="js/vendor/bootstrap.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>

</body>
</html>
