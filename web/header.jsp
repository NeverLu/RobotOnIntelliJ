<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--
  Created by IntelliJ IDEA.
  User: LU
  Date: 2015/4/9
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="<%=request.getContextPath() %>"/>
<%@ page import="data.domain.BkUser" %>
<%@ page import="util.sessionUtil" %>
<html>
<head>
    <title>Header</title>

    <link rel="stylesheet" href="css/Login.css"/>
    <%--<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css"/>--%>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>

    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/Login.js"></script>
</head>
<body>

<%
    BkUser bkUser = (BkUser) session.getAttribute(sessionUtil.USER_NAME);
%>

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
                            <li><span></span><a href="./index.jsp" class="home"><i
                                    class="icon-home icon-large"></i>主页</a></li>
                            <li><span></span><a href="#first-section" class="about">最新动态</a></li>
                            <li><span></span><a href="#second-section" class="portfolio">精彩瞬间</a></li>
                            <li><span></span><a href="#third-section" class="contact">联系我们</a></li>
                        </ul>
                    </div>
                    <div class="navbar-user col-md-2" id="user-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <% if (bkUser == null) { %>
                            <li><span></span><a id="login_click" href="#top" class="home"><i
                                    class="icon-user icon-large"></i>用户登录</a></li>
                            <li><span></span><a id="user_register" href="#top" class="home">用户注册</a></li>
                            <% } else {%>
                            <li><span></span><a id="user_in" href="#top" class="home"><i
                                    class="icon-user icon-large"></i><%=bkUser.getUname()%>
                            </a></li>
                            <li><span></span><a id="user_out" href="#top" class="home">注销</a></li>
                            <input type="hidden" id="ctx" value="${ctx}"/>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="login" class="" title="用户登录">
    <form class="form-horizontal" action="${ctx}/servlet/loginAct" method="post">
        <div class="form-group">
            <label for="name" class="col-sm-3 control-label">用户姓名：</label>

            <div class="col-sm-9">
                <input type="text" name="name" class="form-control" id="name" placeholder="用户名">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">登陆密码：</label>

            <div class="col-sm-9">
                <input type="password" name="password" class="form-control" id="password" placeholder="用户密码">
            </div>
        </div>
        <input type="hidden" name="act" value="login"/>

        <div class="form-group">
            <div class="col-sm-offset-9">
                <button type="submit" class="btn btn-default">登陆</button>
            </div>
        </div>
    </form>
</div>


<div id="register" class="" title="用户注册">
    <form class="form-horizontal" action="${ctx}/servlet/loginAct" method="post">
        <div class="form-group">
            <label for="name" class="col-sm-3 control-label">用户姓名：</label>

            <div class="col-sm-9">
                <input type="text" name="name" class="form-control" id="register_name" placeholder="用户名">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">登陆密码：</label>

            <div class="col-sm-9">
                <input type="password" name="password" class="form-control" id="register_password" placeholder="用户密码">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">登陆密码：</label>

            <div class="col-sm-9">
                <input type="password" name="password" class="form-control" id="register_repeat_password" placeholder="用户密码">
            </div>
        </div>
        <input type="hidden" name="act" value="register"/>

        <div class="form-group">
            <div class="col-sm-offset-9">
                <button type="submit" class="btn btn-default">注册</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
