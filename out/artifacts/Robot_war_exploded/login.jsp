<%--
  Created by IntelliJ IDEA.
  User: LU
  Date: 2015/4/10
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/Login.css"/>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div id="login" class="col-lg-offset-4 col-lg-3">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">用户姓名：</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="name" placeholder="用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">登陆密码：</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="password" placeholder="用户密码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-9 col-sm-3">
                        <button type="submit" class="btn btn-primary">登陆</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>
