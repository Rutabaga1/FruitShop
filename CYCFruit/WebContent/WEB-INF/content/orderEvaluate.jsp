<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>订单评价</title>
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
                        <li><a class="active-icon c1" href="cart.html"><i>3</i></a>
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
                        <li class="active"><a href="index.html">首页</a></li> |
                        <li><a href="classify.html">水果分类</a></li> |
                        <li><a href="other.html">热带水果</a></li> |
                        <li><a href="classify.html">温带水果</a></li> |
                        <li><a href="other.html">春季水果</a></li> |
                        <li><a href="classify.html">夏季水果</a></li> |
                        <li><a href="other.html">秋季水果</a></li> |
                        <li><a href="classify.html">冬季水果</a></li> |
                        <li><a href="other.html">进口水果</a></li> |
                        <li><a href="classify.html">精选优惠</a></li>
                    </ul> -->
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- start main -->
    <div id="container">
        <div class="w">
            <div class="orderinfo" style="text-align:center;margin-top: 30px;font-size: 20px;">
                <h3 class="o-title">评价订单</h3>
            </div>
            <s:form action="addComment" enctype="multipart/form-data">  <!--  -->
            <div class="mycomment-detail">
                <div class="mycomment-form">
                    <div class="form-part1">
                        <div class="f-item f-goods product-10132518643" voucherstatus="0" catefi="670" catese="729" cateth="2603">
                            <div class="fi-info">
                                <div class="comment-goods">
                                    <div class="p-img">
                                        <a href="#"><img src="images/<s:property value='fruit.picture' />" alt=""></a>
                                    </div>
                                    <div class="p-name"><a href="#"><s:property value="fruit.fruitName" /></a></div>
                                    <div class="p-price"><strong>￥ <s:property value="fruit.price" /></strong></div>
                                    <div class="p-attr">数量：<s:property value="orderEvaluate.quantity" /> </div>
                                </div>
                            </div>
                            <div class="fi-operate">
                              
                                <div class="fop-item fop-star   z-tip-warn">
                                    <div class="fop-label">质量满意度</div>
                                    <div class="fop-main">
                                        
                                        <select name="quality">
                                        <option value="5">5分</option>
                                        <option value="4">4分</option>
                                        <option value="3">3分</option>
                                        <option value="2">2分</option>
                                        <option value="1">1分</option>
                                        </select>
                                       
                                    </div>
                                    <div class="fop-label">物流满意度</div>
                                    <div class="fop-main">
                                        
                                        <select name="logistics">
                                        <option value="5">5分</option>
                                        <option value="4">4分</option>
                                        <option value="3">3分</option>
                                        <option value="2">2分</option>
                                        <option value="1">1分</option>
                                        </select>
                                        
                                    </div>
                                </div>
                                <div class="fop-item fop-star   z-tip-warn">
                                    
                                    <div class="fop-label">服务满意度</div>
                                    <div class="fop-main">
                                        
                                        <select name="service">
                                        <option value="5">5分</option>
                                        <option value="4">4分</option>
                                        <option value="3">3分</option>
                                        <option value="2">2分</option>
                                        <option value="1">1分</option>
                                        </select>
                                        
                                    </div>
                                </div>
                                <div class="fop-item ">
                                    <div class="fop-label">评价晒单</div>
                                    <div class="fop-main">
                                        <div class="f-textarea">
                                            <textarea name="" id="" placeholder="商品是否给力？快分享你的购买心得吧~" style="height: 80px;"></textarea>
                                            <div class="textarea-ext"><span class="tips">（请如实评价哦~）</span>
                                            </div>
                                        </div>
                                       	 <s:file name="upload" lable="晒图:" class="span5" style="width:322px;" />
                                    </div>
                                    <div class="fop-tip"><i class="tip-icon"></i><em class="tip-text"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="f-btnbox">
                        <s:submit class="btn-submit" value="提交评价" />
                    </div>
                </div>
            </div></s:form>
           
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
