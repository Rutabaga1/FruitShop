<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<title>商品详情 </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
 
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start fruitDetails -->
<link rel="stylesheet" type="text/css" href="css/productviewgallery.css" media="all" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/cloud-zoom.1.0.3.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-buttons.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-thumbs.js"></script>
<script type="text/javascript" src="js/productviewgallery.js"></script>
<!-- start top_js_button -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
<div class="main_bg">
<div class="wrap">	
	<div class="main">
	<!-- start content -->
	<div class="single">
			<!-- start span1_of_1 -->
			<div class="left_content">
			<div class="span1_of_1">
				<!-- start product_slider -->
				<div class="product-view">
				    <div class="product-essential">
				        <div class="product-img-box">
				    
				    <div class="product-image"> 
				        <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" 
				        	data-fancybox-group="thumb" href="images/<s:property value='fruit.picture' />" title="<s:property value='fruit.cagetory' />" alt="<s:property value='fruit.cagetory' />">
				           	<img src="images/<s:property value='fruit.picture' />" alt="<s:property value='fruit.cagetory' />" title="<s:property value='fruit.cagetory' />" />
				        </a>
				   </div>
					
				</div>
				</div>
				</div>
				<!-- end product_slider -->
			</div>
			<!-- start span1_of_1 -->
			<div class="span1_of_1_des">
				  <div class="desc1">
					<h3><s:property value="fruit.fruitName" />  </h3>
					<p>天然有营养！</p>
					<h5>￥ <s:property value="fruit.price" /> <!-- <a href="#">（降价通知）</a> --></h5>
					<div class="available">
					  <form action="addShoppingCar">
						<h4>配送至 :</h4>
						<ul>
							<li>江苏徐州:
								</li>
							<li>快递: 普通
								
							</li>
							<li>数量:
								<select name="shoppingCar.quantity">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</li>
						</ul>
						<div class="btn_form">
								<input type="hidden" name="shoppingCar.fruitID" value="<s:property value='fruit.id' />"/>
								 
								<input type="submit" value="加入购物车" title="" />
						</div>
					</form>
					
						<div class="btn_form">
							
							<form action="addCollection">
								<input type="hidden" name="shoppingCar.fruitID" value="<s:property value='fruit.id' />"/>
                                <input type="submit" value="收      藏" title="" />
							</form>
						</div>
						<div class="clear"></div>
					</div>
			   	 </div>
			   	</div>
			   	<div class="clear"></div>
			   	<!-- start tabs -->
				   	<section class="tabs">
		            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
			        <label for="tab-1" class="tab-label-1">商品详情</label>
			
		            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2">
			        <label for="tab-2" class="tab-label-2">商品评论</label>
			
		            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3">
			        <label for="tab-3" class="tab-label-3">售后保障</label>
	          
				    <div class="clear-shadow"></div>
					
			        <div class="content">
				        <div class="content-1">
				        	<p class="para top">
                                <span style="padding: 20px;font-size: 18px;">名称 :
                                </span><s:property value="fruit.fruitName" /> <br>
                                <span style="padding: 20px;font-size: 18px;">规格 :
                                </span>每份6个<br>
                                <span style="padding: 20px;font-size: 18px;">存储方式 :
                                </span>冷藏保存<br>
                                
                                <span style="padding: 20px;font-size: 18px;">营养价值 :
                                </span>天然维生素、矿物质等<br>
                               
                            </p>
                                <img src="images/<s:property value='fruit.picture'/>" width="400px" height="400px" >
							<div class="clear"></div>
						</div>
				        <div class="content-2">
							<table>
												
													<s:iterator value="comments" var="c">
														<tr>
															<td><s:property value="text"/></td>
															<td><s:property value="quality"/></td>
															<td><s:property value="service"/></td>
															<td><s:property value="logistics"/></td>
															<td><img src=<s:property value="logistics"/> ></td>
														</tr>
													</s:iterator>
												
											</table> 
							
							<ul class="qua_nav">
								
							</ul>
						</div>
				        <div class="content-3">
				        	<p class="para top"><span>安全认证，无后顾之忧！</span></p>
							<ul>
								
							</ul>
							<div class="clear"></div>
						</div>
			        </div>
			        </section>
		         	<!-- end tabs -->
			   	</div>
			   	<!-- start sidebar -->
			 <div class="left_sidebar">
					<div class="sellers">
						<h4>猜你喜欢</h4>
						<div class="single-nav">
			                <ul>
			                   <li><a href="#">唐果食光 美国新奇士脐橙 </a></li>
			                    <li><a href="#">树懒果园 南非进口脐橙 6个 2-2.4kg 精选大果 甜</a></li>
			                    <li><a href="#">大派山 南非进口葡萄柚新鲜西柚新鲜水果 6个 </a></li>
			                    <li><a href="#">天天果园 新奇士美国瓦伦西亚橙小个 12个装</a></li>
			                    <li><a href="#">汇果洲 美国脐橙 12个 总重约2.2kg 进口水果橙</a></li>
                                <li><a href="#">唐果食光 美国新奇士脐橙 </a></li>
                                <li><a href="#">树懒果园 南非进口脐橙 6个 2-2.4kg 精选大果 甜</a></li>
                                <li><a href="#">大派山 南非进口葡萄柚新鲜西柚新鲜水果 6个 </a></li>
                                <li><a href="#">天天果园 新奇士美国瓦伦西亚橙小个 12个装</a></li>
                                <li><a href="#">汇果洲 美国脐橙 12个 总重约2.2kg 进口水果橙</a></li>
                                <li><a href="#">唐果食光 美国新奇士脐橙 </a></li>
                                <li><a href="#">树懒果园 南非进口脐橙 6个 2-2.4kg 精选大果 甜</a></li>
                                <li><a href="#">大派山 南非进口葡萄柚新鲜西柚新鲜水果 6个 </a></li>
                                <li><a href="#">天天果园 新奇士美国瓦伦西亚橙小个 12个装</a></li>
                                <li><a href="#">汇果洲 美国脐橙 12个 总重约2.2kg 进口水果橙</a></li>
			                    			                    
			                </ul>
			              </div>
						 <div class="brands">
							 <h1>品牌</h1>
					  		 <div class="field">
				                 <select class="select1">
				                   <option>请选择</option>
										<option>青岛</option>
										<option>澳大利亚</option>
										<option>大牌山</option>
				                  </select>
				            </div>
			    		</div>
					</div>
				</div>
					<!-- end sidebar -->
          	    <div class="clear"></div>
	       </div>	
	<!-- end content -->
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
