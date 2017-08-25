<%--
  Created by IntelliJ IDEA.
  User: SAMA
  Date: 2017/7/26
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>英语天地</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <style type="text/css">
        #bay{
            height: 100%;
            background: url(image/header-bg.jpg) center top  no-repeat;
        }
        #in{
            width: 25%;
            position: absolute;
            top: 30%;
            right: 20%;
            margin-left: auto;
            margin-right: auto;
            background-color:rgba(255,255,255,0.9);
        }
    </style>
</head>
<body>
<div class="panel" style="height: 100%;border: none;padding: 0px;margin-bottom: 0px;">
    <div class="panel-heading" style="height: 40px;">
        <h3 class="panel-title" style="text-align: center;font-size: 16px;color: red;"><img src="image/logo1.png" style="height: 20px;"> FRIEND</h3>
    </div>
    <div class="panel-body" style="padding:0px;">
        <div id="bay">
         <div id="in">
             <div style="margin-top: 5%;margin-bottom:20%;width: 100%;">
                 <h3 style="color: red;text-align: center;font-weight: 700;">I BELIEVE I CAN FLY </h3>
             <div class="input-group"style="width: 80%;height:30px;margin: 20px auto;">
                 <span class="input-group-addon">账号</span>
                 <input type="text" class="form-control" placeholder="账号/手机号码">
             </div>
             <div class="input-group" style="width: 80%;height:30px;margin: 20px auto;">
                 <span class="input-group-addon">密码</span>
                 <input type="text" class="form-control" placeholder="请输入你的密码">
             </div>
                 <button type="button" class="btn btn-danger" style="width: 80%;position: relative;left:10%;">登 录</button>
                 <div style="margin-top: 20px;width: 80%;left: 10%;position: relative;">
                    <p style="float: left;width: 50%;"> <input type="checkbox" style="vertical-align: -2px;"><span > 记住密码</span></p>
                    <p style="float: right;width: 50%;"><button type="button" class="btn btn-link" style="float: right;margin-top: -5px;">忘记密码</button></p>
                 </div>
         </div>

        </div>
    </div>
</div>
</div>
<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
