 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>订单处理</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/tasp.css" />
<link href="css/orderconfirm.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/user-style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body data-spm="1">
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
<!-- 4.start main -->
<div id="page">
 <div id="content" class="grid-c">
 
  <%-- <div id="address" class="address" style="margin-top: 20px;" data-spm="2">
  <ul id="address-list" class="address-list">
    <li class="J_Addr J_MakePoint clearfix  J_DefaultAddr " data-point-url="">
        
        <div class="address-info">
            <input name="address" class="J_MakePoint " type="radio" value="674944241" id="addrId_674944241"  checked="checked">
            <label for="addrId_674944241" class="user-address">
                江苏省 中国矿业大学${order.address } ( ${sessionScope.customerName} 收) 
            </label>
        </div>
    </li>
    
</ul> 
</div>--%>

 <h3 class="dib">确认订单信息</h3>
 
 <s:form name="addrForm" id="addrForm" action="addOrder">
 <table cellspacing="0" cellpadding="0" class="order-table" id="J_orderTable" summary="统一下单订单信息区域">
 <caption style="display: none">统一下单订单信息区域</caption>
 <thead>
    <tr>
        <th class="s-title">店铺宝贝
            <hr/>
        </th>
        <th class="s-price">单价(元)
            <hr/>
        </th>
        <th class="s-amount">数量
            <hr/>
        </th>
        <th class="s-agio">优惠方式(元)
            <hr/>
        </th>
        <th class="s-total">小计(元)
            <hr/>
        </th>
    </tr>
</thead>
<tbody data-spm="3" class="J_Shop" data-tbcbid="0" data-outorderid="47285539868" data-isb2c="false" data-postMode="2" data-sellerid="1704508670">
   <s:iterator value="orders" var="order">
    <!-- <tr class="first">
        <td colspan="5"></td>
    </tr>
    <tr class="shop blue-line">
        
        <td colspan="2" class="promo">
            <div>
                <ul class="scrolling-promo-hint J_ScrollingPromoHint">
                </ul>
            </div>
        </td>
    </tr> -->
  
    <tr class="item" data-lineid="19614514619:31175333266:35612993875" data-pointRate="0">
        <td class="s-title">
            <a href="#" target="_blank" title="${order.fruitName }" class="J_MakePoint" data-point-url="">
                <img src="images/${order.picture }" class="itempic"><span class="title J_MakePoint" data-point-url="">${order.fruitName }</span></a>
            <div class="props">
                <span>天然有营养 </span>
                
            </div>
            
        </td>
        <td class="s-price">
            <span class='price '>
 <em class="style-normal-small-black J_ItemPrice"  >${order.price }</em>
  </span>
            <input type="hidden" name="costprice" value="${order.price }" class="J_CostPrice" />
        </td>
        <td class="s-amount" data-point-url="">
            <input type="hidden" class="J_Quantity" value="1" name="19614514619_31175333266_35612993875_quantity" />${order.quantity }
        </td>
        <td class="s-agio">
            <div class="J_Promotion promotion" data-point-url="">无优惠</div>
        </td>
        <td class="s-total">
            <span class='price '>
 <em class="style-normal-bold-red J_ItemTotal "  >${order.price*order.quantity}</em>
  </span>
            <input id="furniture_service_list_b_47285539868" type="hidden" name="furniture_service_list_b_47285539868" />
        </td>
    </tr>
    <tr class="blue-line" style="height: 2px;">
        <td colspan="5"></td>
    </tr>
    
    </s:iterator>
    
    <tr>
        <td colspan="5">
            <div class="order-go" data-spm="4">
                <div class="J_AddressConfirm address-confirm">
                    <div class="kd-popup pop-back" style="margin-bottom: 20px;">
                        <div class="box">
                            <div class="bd">
                                <div class="point-in">
                                    <em class="t">实付款：</em> <span class='price g_price ' style="margin-bottom: 0px;">
 <span>&yen;</span><em class="style-large-bold-red" id="J_ActualFee">${requestScope.subPrice}</em>
                                    </span>
                                </div>
                                <ul>
                                    <li><em>寄送至:</em><span id="J_AddrConfirm" style="word-break: break-all;">
${requestScope.defaultAddress}
   </span></li>
                                    <li><em>收货人:</em><span id="J_AddrNameConfirm">${sessionScope.customerName}</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="msg" style="clear: both;">
                </div>
            </div>
        </td>
    </tr>
     
</tbody>

 <tfoot>
    <tr>
        <td colspan="5">
            <div class="order-go" data-spm="4">
                <div class="J_AddressConfirm address-confirm">
                    <div class="kd-popup pop-back" style="margin-bottom: 40px;">
                        <a href="listShoppingCars" class="back J_MakePoint" target="_top" data-point-url="">返回购物车</a>
                        <a href="addOrder" id="J_Go" class=" btn-go" data-point-url="" tabindex="0" title="点击此按钮，提交订单。">提交订单<b class="dpl-button"></b></a>
                    </div>
                </div>
                
                <div class="msg" style="clear: both;">
                </div>
            </div>
        </td>
    </tr>
</tfoot>
 </table>
</s:form>
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
