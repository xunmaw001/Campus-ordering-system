<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE;">

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> 个人中心 </p>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container">
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						                        						                                                                        <div class="layui-form-item">
							<label class="layui-form-label">商家编号</label>
							<div class="layui-input-block">
								<input type="text" name="shangjiabianhao" id="shangjiabianhao" placeholder="商家编号" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">商家名</label>
							<div class="layui-input-block">
								<input type="text" name="shangjiaming" id="shangjiaming" placeholder="商家名" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">美食名称</label>
							<div class="layui-input-block">
								<input type="text" name="meishimingcheng" id="meishimingcheng" placeholder="美食名称" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">菜品分类</label>
							<div class="layui-input-block">
								<input type="text" name="caipinfenlei" id="caipinfenlei" placeholder="菜品分类" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">学号</label>
							<div class="layui-input-block">
								<input type="text" name="xuehao" id="xuehao" placeholder="学号" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">姓名</label>
							<div class="layui-input-block">
								<input type="text" name="xingming" id="xingming" placeholder="姓名" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">电话</label>
							<div class="layui-input-block">
								<input type="text" name="dianhua" id="dianhua" placeholder="电话" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">地址</label>
							<div class="layui-input-block">
								<input type="text" name="dizhi" id="dizhi" placeholder="地址" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">价格</label>
							<div class="layui-input-block">
								<input type="text" name="jiage" id="jiage" placeholder="价格" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">份量</label>
							<div class="layui-input-block">
								<input type="text" name="fenliang" id="fenliang" placeholder="份量" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                                                                                        <div class="layui-form-item">
							<label class="layui-form-label">下单时间</label>
							<div class="layui-input-block">
								<input type="text" name="xiadanshijian" id="xiadanshijian" placeholder="下单时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">取餐时间</label>
							<div class="layui-input-block">
								<input type="text" name="qucanshijian" id="qucanshijian" placeholder="取餐时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">取餐方式</label>
							<div class="layui-input-block">
								<select name="qucanfangshi" id="qucanfangshi">
									<option value="">请选择</option>
									<option v-for="(item,index) in qucanfangshi" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                                                                                        <div class="layui-form-item">
							<label class="layui-form-label">审核回复</label>
							<div class="layui-input-block">
								<input type="text" name="shhf" id="shhf" placeholder="审核回复" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                                                        
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
																																																																																																																																																											qucanfangshi: [],
																																													centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../recharge/recharge.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                																																																																																																																								vue.qucanfangshi = '窗口自取,商家配送'.split(',')
																																				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
																																																																																																																																																																																													});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
