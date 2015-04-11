<%--
  Created by IntelliJ IDEA.
  User: LU
  Date: 2015/4/6
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>比特能•专家搜索</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="css/searchPage.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">


    <!-- JavaScripts -->
    <script src="js/vendor/jquery-1.10.2.min.js"></script>
    <script src="js/vendor/modernizr.min.js"></script>

</head>
<body>
<c:import url="header.jsp"></c:import>

<div id="big-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12" id="search">
                <form class="form-horizontal">

                    <div class="form-group search-group">
                        <div class="search-input">
                            <input type="text" class="form-control input-lg " id="search_input1"
                                   placeholder="Search_Input">
                        </div>

                        <div class="btn-group search-btn-group" onclick="searchSelect() ">
                            <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown"
                                    aria-expanded="false"> 所有  <span class="caret "></span>
                            </button>
                            <ul class="dropdown-menu"  role="menu">
                                <li><a href="#">所有</a></li>
                                <li><a href="#">主题</a></li>
                                <li><a href="#">姓名</a></li>
                                <li><a href="#">行业</a></li>
                                <%--<li class="divider"></li>--%>
                            </ul>
                        </div>
                    </div>

                    <div class="form-group" id="search-add">
                        <p><i class="icon-plus icon-large"></i> 增加一个字段</p>
                    </div>

                    <div class="form-group" id="search-submit">
                        <button type="submit" class="btn btn-lg btn-primary"><i class="icon-search icon-1x"></i> 检索
                        </button>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>

<c:import url="footer.jsp"></c:import>


<!-- Javascripts -->
<script type="text/javascript" src="js/vendor/bootstrap.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/search.js"></script>
</body>
</html>
