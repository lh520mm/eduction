<%@ page import="model.Test" %>
<%@ page import="jdk.nashorn.api.scripting.JSObject" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %><%--
  Created by IntelliJ IDEA.
  User: SAMA
  Date: 2017/7/27
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>英语</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <style type="text/css">
        .nav-pills > li > a {
            border-radius: 0;
        }

        * {
            margin: 0;
            padding: 0;
        }

        .title {
            height: 100%;
            width: 100%;
            float: left;
            padding: 30px;
        }

        .title li {
            float: left;
            list-style-type: none;
            margin-right: 30px;
            font-size: 18px;
            color: #4D555D;
            display: block;
        }

        .title li:hover {
            cursor: pointer;
            color: red;
            font-weight: 200;
        }

        .msg {
            height: 100%;
            float: left;
            padding: 20px;
            cursor: pointer;
        }


        #content {
            clear: both;
            z-index: 1000;
            width: 100%;
            position: absolute;
            top:80px;
            background:#f3f3fa;
        }

        #main {
            width: 1080px;
            background-size: cover;
            height: 460px;
            margin: 20px auto;
        }

        #bt {
            width: 20%;
            height: 100%;
            float: left;
            background-color: #2b333b;
            border-bottom-left-radius: 4px;
            font-weight: 200;
            position: relative;
            z-index: 2;
            padding-top: 12px;
        }

        #btu {
            width: 100%;
            padding: 10px;
            height: 100%;
        }

        .btl{
            clear: both;
            list-style-type: none;
            margin-bottom: 40px;
            margin-left: 20px;
            font-size: 20px;
            line-height: 60px;
            color: rgba(255, 255, 255, .6);
            font-weight: 200;
            font: 14px/1.5 "PingFang SC", "微软雅黑", "Microsoft YaHei", Helvetica, "Helvetica Neue", Tahoma, Arial, sans-serif;
            cursor: pointer;
        }

        #lb {
            width: 80%;
            height: 100%;
            padding-right: 20px;
            float: left;
        }

        .xu {
            width: 100%;
            clear: both;
        }

        .xu ul {
            width: 100%;
        }

        .xu ul li {
            display: block;
            list-style-type: none;
            clear: both;
            padding-top: 20px;
        }

        .img {
            float: left;
            width: 270px;
            padding-right: 20px;
        }
        #tail{
            display: block;
            clear: both;
            width: 100%;
            height: 110px;
            padding-top: 30px;
        }
         .tailU{
             height:100%;
             width: 50%;
             float: left;
         }
        .tailU li{
            list-style-type: none;
            float: left;
            padding-top: 10px;
        }
        .tailU li a{
            color: #99a1a6;
            font-size: 14px;
        }
        .tailU li a:hover{
            color: #14191e;
            text-decoration: none;
            font-weight: 200;
        }
        .tailR{
            width: 50%;
            height: 100%;
            float: right;
        }

        .tailR li{
            float: left;
            margin-top: 10px;
            list-style-type: none;
            margin-right: 15px;
            color:#99a1a6;
            font-size: 14px;
        }
        .mb{
            width: 100%;
            height: 100%;
            padding: 10px;
        }
        .mb li{
            list-style-type:none ;
            font-size: 16px;
            color: #0f0f0f;
            padding: 10px;
            float: left;
        }
        .mb li a{
            color: #4D555D;
            text-decoration: none;
        }
        .mb li a:hover{
            font-weight: 200;
            color: red;
        }
        .mtk{
            height:100%;
            width: 350px;
            background:rgb(255, 255, 255) !important;
            position: absolute;
            top: 0px;
            left: 210px;
            display: none;
        }

    </style>

</head>
<body>

<div class="panel panel-default" style="border: none;">
    <div class="panel-heading" style="height:80px;padding:0;background: rgb(255, 255, 255) !important;">
        <div style="height: 100%;width: 15%;float: left;">
            <img src="image/logo_new.png" style="height: 100%;margin-left: 30px;">
        </div>
        <div style="height: 100%;width: 50%;float: left;">
            <ul class="title">
                <li>课程</li>
                <li>课件</li>
                <li>题库</li>
                <li>手记</li>
                <li>提问</li>
                <li>社区</li>
            </ul>
        </div>

        <div style="height: 100%;width: 35%;float: right;">
            <div style="width:40%;float: left;height: 100%;">
                <input type="text" style="width:90%;padding: 5px;margin-top: 20px;border-left: none;border-top: none;
                border-right: none;font-size: 16px;color:#4D555D; " placeholder="搜索">
            </div>
            <div style="width: 60%;height: 100%;float: left">
                <p class="msg">
                    <img src="image/cart.png" style="height:90%;">
                    <i style="position: relative;top: -10px; color: beige;font-size: 12px;background-color: red;text-align: center;
                        width: 15px;border-radius: 15px;display: inline-block;">1</i>
                </p>
                <p class="msg">
                    <img src="image/remind_fill.png" style="height:100%;">
                </p>
                <p class="msg"><img src="image/mine_fill.png" style="height:100%;"></p>
            </div>
        </div>
    </div>
    <div class="panel-body" style="padding:0px;background-color:#f8fff7;clear: both; ">
        <div id="content">
            <div id="main">
                <div id="bt">
                    <ul id="btu">
                        <li class="btl">
                            <span style="font-size: 16px;">考研</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>

                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">四六级</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">英语四六级</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">四级全程VIP</a></li>
                                    <li class="mbl"><a href="#">四级单项突破</a></li>
                                    <li class="mbl"><a href="#">四级短期通过</a></li>
                                    <li class="mbl"><a href="#">六级全程VIP</a></li>
                                    <li class="mbl"><a href="#">六级单项突破</a></li>
                                    <li class="mbl"><a href="#">六级短期通过</a></li>
                                    <li class="mbl"><a href="#">专业四级</a></li>
                                    <li class="mbl"><a href="#">专业八级</a></li>
                                </ul>
                            </div>

                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">中小学</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">新概念</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">助力高考</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">雅思托福</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 18px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="btl">
                            <span style="font-size: 16px;">职业教育</span>
                            <img src="image/more.png" style="width: 20px;float: right">
                            <%--模态框--%>
                            <div class="mtk">
                                <h3 style="font-size: 18px;margin-left: 15px;color:#4D555D;line-height: 14px;">2018 考研</h3>
                                <ul class="mb">
                                    <li class="mbl"><a href="#">考研公开课</a></li>
                                    <li class="mbl"><a href="#">考研英语</a></li>
                                    <li class="mbl"><a href="#">考研英语二</a></li>
                                    <li class="mbl"><a href="#">考研政治</a></li>
                                    <li class="mbl"><a href="#">考研数学</a></li>
                                    <li class="mbl"><a href="#">考研专业课</a></li>
                                    <li class="mbl"><a href="#">考研直通车</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                </div>

                <div id="lb">
                    <div id="myCarousel" class="carousel slide">
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="image/599a447fN0873907f.jpg!q90.jpg" style="height: 100%">
                            </div>
                            <div class="item">
                                <img src="image/5996b59eN0ebd9220.jpg!q90.jpg" style="height: 100%;">
                            </div>
                            <div class="item">
                                <img src="image/599e5004Nc4babf46.jpg!q90.jpg" style="width:100%;height: 100%;">
                            </div>
                        </div>
                        <!-- 轮播（Carousel）导航 -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev"
                           style="top: 200px;background-image:none;font-size: 30px;">‹</a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next"
                           style="top: 200px;background-image:none;font-size: 30px;">›</a>
                    </div>

                </div>

                <div class="xu">
                    <div style="width: 100%;">
                        <h5 style="font-size: 20px;padding-top: 20px;">强 烈 推 荐</h5>
                    </div>
                    <ul>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                    </ul>
                </div>

                <div class="xu">
                    <div style="width: 100%;">
                        <h5 style="font-size: 20px;padding-top: 20px;">名 师 讲 座</h5>
                    </div>
                    <ul>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                    </ul>
                </div>

                <div class="xu">
                    <div style="width: 100%;">
                        <h5 style="font-size: 20px;padding-top: 20px;">英 语 四 六 级</h5>
                    </div>
                    <ul>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                        <li>
                            <img src="image/1.JPG" class="img"><img src="image/2.JPG" class="img"><img src="image/2.JPG"
                                                                                                       class="img"><img
                                src="image/2.JPG" class="img">
                        </li>
                    </ul>
                </div>

            </div>

            <div id="tail">
                <div style="background-color:#e9e9e9;height: 100%; border-top: 2px solid #ddd">
                    <div style="width: 1080px;margin-left: auto;margin-right: auto;height:50px;padding: 5px;">
                        <ul class="tailU">
                            <li><a href="#">合作企业</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">加入我们</a></li>
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">意见反馈</a></li>
                            <li><a href="#">友情链接</a></li>
                        </ul>
                        <ul class="tailR">
                            <li><img src="image/phone.png" style="height: 35%;"> 183662625378</li>
                            <li><img src="image/email.png" style="height: 35%;"> 1551023283@qq.com</li>
                            <li><img src="image/team.png" style="height: 40%;"> PI团队</li>
                        </ul>
                    </div>
                    <div style="width: 1080px;margin-left: auto;margin-right: auto;height: 20px;margin-bottom: 10px;">
                         <span style="color:#99a1a6;font-size: 14px;text-align: center">© 2017 h52mm.com  京ICP备 138135694号-2</span>
                    </div>


                </div>


            </div>



        </div>



    </div>
</div>






<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
    $(function () {
        // 初始化轮播
        $(".start-slide").click(function () {
            $("#myCarousel").carousel('cycle');
        });
        // 停止轮播
        $(".pause-slide").click(function () {
            $("#myCarousel").carousel('pause');
        });
        // 循环轮播到上一个项目
        $(".prev-slide").click(function () {
            $("#myCarousel").carousel('prev');
        });
        // 循环轮播到下一个项目
        $(".next-slide").click(function () {
            $("#myCarousel").carousel('next');
        });
        // 循环轮播到某个特定的帧
        $(".slide-one").click(function () {
            $("#myCarousel").carousel(0);
        });
        $(".slide-two").click(function () {
            $("#myCarousel").carousel(1);
        });
        $(".slide-three").click(function () {
            $("#myCarousel").carousel(2);
        });
    });
</script>
<script type="application/javascript">
    $(document).ready(function () {

     $(".btl").hover(function () {
         $(this).css("color","#f3f3f3");
         $(this).children("img").attr("src","image/more_unfold.png");
         $(this).children(".mtk").show();
     },function () {
         $(this).css("color","rgba(255, 255, 255, .6)");
         $(this).children("img").attr("src","image/more.png");
         $(this).children(".mtk").hide();
     });





    });
</script>
</body>
</html>
