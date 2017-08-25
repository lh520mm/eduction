<%--
  Created by IntelliJ IDEA.
  User: SAMA
  Date: 2017/7/27
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
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

        .tp {
            width: 100%;
        }

        .title {
            width: 50%;
            float: left;
            margin-top: 10px;
            margin-left: 20px;
        }

        .title li {
            float: left;
            list-style-type: none;
            margin-right: 30px;
            font-size: 16px;
            color: #4D555D;
            display: block;
        }

        .title li:hover {
            cursor: pointer;
            color: #14191e;
        }

        .msg {
            width: 10%;
            float: right;
        }

        .msg li {
            float: left;
            margin-right: 30px;
            list-style-type: none;
            display: block;
        }

        #content {
            clear: both;
            z-index: 1000;
            width: 100%;
            position: absolute;
            top: 60px;
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

        #bt ul {
            width: 100%;
            padding: 10px;
            height: 100%;
        }

        #bt ul li {
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
            height: 90px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="panel panel-default" style="border: none;padding: 0px;margin-bottom: 0px;">
    <div class="panel-heading" style="height: 60px;background: rgb(255, 255, 255) !important;">
        <div class="tp">
            <ul class="title">
                <li>课程</li>
                <li>课件</li>
                <li>题库</li>
                <li>手记</li>
                <li>提问</li>
                <li>社区</li>
            </ul>
            <ul class="msg">
                <li><img src="image/remind_fill.png" style="height: 90%"></li>
                <li><img src="image/mine_fill.png" style="height:90%;"></li>
            </ul>
        </div>
    </div>
    <div class="panel-body" style="padding:0px;background-color:#f8fff7;clear: both; ">
        <div id="content">
            <div id="main">
                <div id="bt">
                    <ul>
                        <li><span style="font-size: 16px;">考研</span><img src="image/more.png"
                                                                         style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">四六级</span><img src="image/more.png"
                                                                          style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">中小学</span><img src="image/more.png"
                                                                          style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">新概念</span><img src="image/more.png"
                                                                          style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">助力高考</span><img src="image/more.png"
                                                                           style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">雅思托福</span><img src="image/more.png"
                                                                           style="width: 20px;float: right"></li>
                        <li><span style="font-size: 16px;">职业教育</span><img src="image/more.png"
                                                                           style="width: 20px;float: right"></li>
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
                 <div style="height:30px;">
                 </div>
                <div style="background-color:#e9e9e9;height: 60px; border-top: 2px solid #ddd"></div>
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
</body>
</html>
