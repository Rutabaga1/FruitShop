<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>水果GO！</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
    <script type="text/javascript" src="js/jquery.cslider.js"></script>
    <link href="css/owl.carousel.css" rel="stylesheet">
    <script src="js/owl.carousel.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
</head>
<body>
    <!-- 1.start header -->
    <div id="shortcut-2014">
        <div class="w">
            <!-- 左边内容 -->
             <ul class="fl">
                <li class="dorpdown" id="ttbar-mycity">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i> 在线统计：
                        <span>${applicationScope.counter} 人</span>
                    </div>
                </li>
            </ul> 
            <!-- 右边内容              ?customerID=${sessionScope.customerID}-->
            <ul class="fr">
                <li class="fore1" id="ttbar-login">
                    <a href="${pageContext.request.contextPath}/login" class="link-login style-red">你好，请登录</a>&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/register" class="link-regist">免费注册</a>
                </li>
                <li class="spacer"></li>
                <li class="fore2" id="ttbar-login">
                    <a href="${pageContext.request.contextPath}/listOrders" class="link-login">&nbsp;&nbsp;&nbsp;我的订单</a>
                </li>
                <li class="spacer"></li>
                <li class="fore2" id="ttbar-login">
                    <a href="${pageContext.request.contextPath}/listCollections" class="link-login">&nbsp;&nbsp;&nbsp;我的收藏</a>
                </li>
                <li class="spacer"></li>
                <li class="spacer"></li>
                <li class="fore3" id="ttbar-login">
                    <a href="${pageContext.request.contextPath}/listShoppingCars" class="link-login">&nbsp;&nbsp;&nbsp;我的购物车</a>
                </li>
                <li class="spacer"></li>
            </ul>
        </div>
    </div>
    <!-- 2.start search -->
    <div class="header_bg">
        <div class="wrap">
            <div class="header">
                <div class="logo">
                    <div class="yj-logo">CYC-FRUIT</div>
                </div>
                <div class="h_icon">
                    <ul class="icon1 sub-icon1">
                        <li><a class="active-icon c1" href="cart"><i>3</i></a>
                        </li>
                    </ul>
                </div>
                <div class="h_search">
                    <form>
                        <input type="text" value="">
                        <input type="submit" value="">
                    </form>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- 3.start muen -->
    <div class="header_btm">
        <div class="wrap">
            <div class="header_sub">
                <div class="h_menu">
                    <!-- <ul>
                        <li class="active"><a href="index">首页</a></li> |
                        <li><a href="classify">水果分类</a></li> |
                        <li><a href="other">热带水果</a></li> |
                        <li><a href="classify">温带水果</a></li> |
                        <li><a href="other">春季水果</a></li> |
                        <li><a href="classify">夏季水果</a></li> |
                        <li><a href="other">秋季水果</a></li> |
                        <li><a href="classify">冬季水果</a></li> |
                        <li><a href="other">进口水果</a></li> |
                        <li><a href="classify">精选优惠</a></li>
                    </ul> -->
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>

    <!-- 4.start slider -->
    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2>欢迎来到CYC-Fruit</h2>
            <p>全球鲜果 最低价格 最快派送 等你来抢</p>
            <a href="${pageContext.request.contextPath}/fruitDetails" class="da-link">shop now</a>
            <div class="da-img"><img src="images/slider2.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>欢迎来到CYC-Fruit</h2>
            <p>全球鲜果 最低价格 最快派送 等你来抢</p>
            <a href="${pageContext.request.contextPath}/fruitDetails" class="da-link">shop now</a>
            <div class="da-img"><img src="images/slider1.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>欢迎来到CYC-Fruit</h2>
           <p>全球鲜果 最低价格 最快派送 等你来抢</p>
            <a href="${pageContext.request.contextPath}/fruitDetails" class="da-link">shop now</a>
            <div class="da-img"><img src="images/slider3.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>欢迎来到CYC-Fruit</h2>
            <p>全球鲜果 最低价格 最快派送 等你来抢</p>
            <a href="${pageContext.request.contextPath}/fruitDetails" class="da-link">shop now</a>
            <div class="da-img"><img src="images/slider4.png" alt="image01" /></div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>
    <!--5.start-curual-->
    <div class="wrap">
        <div id="owl-demo" class="owl-carousel">
          <s:iterator value="fruits" var="f">
           <%--  <s:if test="f.id <= 7"> --%>
            <div class="item" onClick="location.href='${pageContext.request.contextPath}/fruitDetails?id=${f.id}';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/${f.picture }" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="${pageContext.request.contextPath}/fruitDetails?id=${f.id}">${f.fruitName }</a></h4>
                    <a href="${pageContext.request.contextPath}/fruitDetails?id=${f.id}" class="btn">购买</a>
                </div>
            </div>
           <%--  </s:if> --%>
           </s:iterator>
           
        </div>
    </div>
    <!-- 6.start main1 -->
    <div class="main_bg1">
        <div class="wrap">
            <div class="main1">
                <h2>特色商品</h2>
            </div>
        </div>
    </div>
    <!-- 7.start main -->
    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <!-- start grids_of_3
                <div class="grids_of_3"> -->
                  <s:iterator value="fruits" var="f">
           		    <%-- <s:if test="f.id%3==0">
           		    	<div class="grids_of_3">
           		    </s:if> --%>
                    <div class="grid1_of_3">
                        <a href="${pageContext.request.contextPath}/fruitDetails?id=${f.id }">
                            <img src="images/${f.picture }" alt="" />
                            <h3>${f.fruitName }</h3>
                            <div class="price">
                                <h4>￥ ${f.price }<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div>
                   <%-- <s:if test="f.id%3==0">
           		    	</div>
           		    </s:if> --%>
                  </s:iterator>
                    
                   <%--  <div class="grid1_of_3">
                        <a href="fruitDetails">
                            <img src="images/pic2.jpg" alt="" />
                            <h3>正品红富士 12个</h3>
                            <div class="price">
                                <h4>$99<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div>
                    <div class="grid1_of_3">
                        <a href="fruitDetails">
                            <img src="images/pic3.jpg" alt="" />
                            <h3>黄金梨 天鹅花 25kg</h3>
                            <div class="price">
                                <h4>$300<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div>
                    <div class="clear"></div>
                </div>
                
                    <div class="grid1_of_3">
                        <a href="fruitDetails">
                            <img src="images/pic4.jpg" alt="" />
                            <h3>正品红富士 12个</h3>
                            <div class="price">
                                <h4>$300<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div>
                    <div class="grid1_of_3">
                        <a href="fruitDetails">
                            <img src="images/pic5.jpg" alt="" />
                            <h3>正品红富士 12个</h3>
                            <div class="price">
                                <h4>$300<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div>
                    <div class="grid1_of_3">
                        <a href="fruitDetails">
                            <img src="images/pic6.jpg" alt="" />
                            <h3>正品红富士 12个</h3>
                            <div class="price">
                                <h4>$300<span>立即购买</span></h4>
                            </div>
                            <span class="b_btm"></span>
                        </a>
                    </div> --%>
                    <div class="clear"></div>
                <!--  </div>
                 end grids_of_3 -->
            </div>
        </div>
    </div>


    <!-- 8.start footer -->
    <div class="footer_bg">
        <div class="wrap">
            <div class="footer">
                <!-- start grids_of_4 -->
                <div class="grids_of_4">
                    <div class="grid1_of_4">
                        <h4>购物指南</h4>
                        <ul class="f_nav">
                            <li><a href="">会员介绍</a></li>
                            <li><a href="">购物流程</a></li>
                            <li><a href="">上门自提</a></li>
                            <li><a href="">货到付款</a></li>
                            <li><a href="">在线支付</a></li>
                            <li><a href="">海外配送</a></li>
                            <li><a href="">售后服务</a></li>
                            <li><a href="">其他咨询</a></li>
                        </ul>
                    </div>
                    <div class="grid1_of_4">
                        <h4>配送方式</h4>
                        <ul class="f_nav">
                           <li><a href="">会员介绍</a></li>
                            <li><a href="">购物流程</a></li>
                            <li><a href="">上门自提</a></li>
                            <li><a href="">货到付款</a></li>
                            <li><a href="">在线支付</a></li>
                            <li><a href="">海外配送</a></li>
                            <li><a href="">售后服务</a></li>
                            <li><a href="">其他咨询</a></li>
                        </ul>
                    </div>
                    <div class="grid1_of_4">
                        <h4>支付方式</h4>
                        <ul class="f_nav">
                            <li><a href="">会员介绍</a></li>
                            <li><a href="">购物流程</a></li>
                            <li><a href="">上门自提</a></li>
                            <li><a href="">货到付款</a></li>
                            <li><a href="">在线支付</a></li>
                            <li><a href="">海外配送</a></li>
                            <li><a href="">售后服务</a></li>
                            <li><a href="">其他咨询</a></li>
                        </ul>
                    </div>
                    <div class="grid1_of_4">
                        <h4>售后服务</h4>
                        <ul class="f_nav">
                            <li><a href="">会员介绍</a></li>
                            <li><a href="">购物流程</a></li>
                            <li><a href="">上门自提</a></li>
                            <li><a href="">货到付款</a></li>
                            <li><a href="">在线支付</a></li>
                            <li><a href="">海外配送</a></li>
                            <li><a href="">售后服务</a></li>
                            <li><a href="">其他咨询</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- start footer -->
    <div class="footer_bg1">
        <div class="wrap">
            <div class="footer">
                <!-- scroll_top_btn -->
                <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
                <!--end scroll_top_btn -->
                <div class="copy">
                    <p class="link">Copyright &copy; 2016.CYC</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</body>
</html>
