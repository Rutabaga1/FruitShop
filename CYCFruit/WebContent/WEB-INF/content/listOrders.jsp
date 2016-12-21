<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/user-style.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">

    </style>
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
    <!-- start main -->
    <div class="container">
        <div class="row">
            <div class="catbox">
                <div class="cart-mainBody">
                    <h2>我的订单</h2></div>
                <table id="cartTable">
                    <thead>
                        <tr>
                            
                            <th>商品信息</th>
                            <th>金额</th>
                            <th>订单状态</th>
                            <th>订单评价</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                      <s:iterator value="fruits" var="f">
                      <s:iterator value="orders" status="sc">  
 							<s:if test="f.id == sc.fruitID">
                        <tr>
                            
                            <td class="goods">
                                <img src="images/${f.picture }">
                                <span>${f.fruitName }新鲜清甜多汁！每份6个</span>
                            </td>
                            <td class="unit-price">${f.price }</td>
                            <td class="count">
                                ${sc.quantity }
                            </td>
                            <td class="operation">
                                <a href="orderEvaluate">评价</a>
                            </td>
                            
                        </tr>
                        
                        </s:if>
                        </s:iterator>
                        </s:iterator>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- start footer -->
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
    <!-- start footer-top -->
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
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
</body>

</html>

