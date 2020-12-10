<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Olive Enterprise">
<!-- END META -->
<script src="<%=basePath%>/js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>/js/echarts.min.js"></script>
<script src="<%=basePath%>/js/china.js"></script>

<!-- BEGIN SHORTCUT ICON -->
<link rel="shortcut icon" href="<%=basePath%>/img/favicon.ico">
<!-- END SHORTCUT ICON -->
<title>气象温度分析</title>
<!-- BEGIN STYLESHEET-->
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="<%=basePath%>/css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="<%=basePath%>/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- FONT AWESOME ICON CSS -->
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
<!-- THEME BASIC CSS -->
<link href="<%=basePath%>/css/style-responsive.css" rel="stylesheet">
<!-- THEME RESPONSIVE CSS -->
<link href="<%=basePath%>/assets/morris.js-0.4.3/morris.css" rel="stylesheet">
<!-- MORRIS CHART CSS -->
<!--dashboard calendar-->
<link href="<%=basePath%>/css/clndr.css" rel="stylesheet">
<!-- CALENDER CSS -->
<!--[if lt IE 9]>
		<script src="<%=basePath%>/js/html5shiv.js">
		</script>
		<script src="<%=basePath%>/js/respond.min.js">
		</script>
		<![endif]-->
<!-- END STYLESHEET-->

</head>
<body>
	<!-- BEGIN SECTION -->
	<section id="container">
		<!-- BEGIN HEADER -->
		<header class="header white-bg">
			<!-- SIDEBAR TOGGLE BUTTON -->
			<div class="sidebar-toggle-box">
				<div data-placement="right" class="fa fa-bars tooltips"></div>
			</div>
			<!-- SIDEBAR TOGGLE BUTTON  END-->
			<a href="index.html" class="logo"> Sky <span> 数据展示平台 </span><span>
					2019年气象温度分析 </span>
			</a>
			<!-- START HEADER  NAV -->

			<nav class="nav notify-row" id="top_menu">

				<ul class="nav top-menu">
					<!-- START NOTIFY TASK BAR -->

					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i class="fa fa-tasks">
						</i> <span class="badge bg-success"> 6 </span>
					</a>

						<ul class="dropdown-menu extended tasks-bar">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 6 pending tasks</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Dashboard v1.3</div>
										<div class="percent">40%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success set-40"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 40% Complete (success) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Database Update</div>
										<div class="percent">60%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning set-60"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 60% Complete (warning) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Iphone Development</div>
										<div class="percent">87%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info set-87"
											role="progressbar" aria-valuenow="20" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 87% Complete </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Mobile App</div>
										<div class="percent">33%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger set-33"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100">
											<span class="sr-only"> 33% Complete (danger) </span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Dashboard v1.3</div>
										<div class="percent">45%</div>
									</div>
									<div class="progress progress-striped active">
										<div class="progress-bar set-45" role="progressbar"
											aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only"> 45% Complete </span>
										</div>

									</div>
							</a></li>
							<li class="external"><a href="#"> See All Tasks </a></li>
						</ul></li>
					<!-- END NOTIFY TASK BAR -->

					<!-- START NOTIFY INBOX BAR -->

					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-envelope-o"> </i> <span class="badge bg-important">
								5 </span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini.jpg">
								</span> <span class="subject"> <span class="from">
											Chintan Pandya </span> <span class="time"> Just now </span>
								</span> <span class="message"> Hello, this is an example msg. </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini2.jpg">
								</span> <span class="subject"> <span class="from"> Parth
											Jani </span> <span class="time"> 10 mins </span>
								</span> <span class="message"> Hi, Bro how are you ? </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini3.jpg">
								</span> <span class="subject"> <span class="from"> Jay
											Bardolia </span> <span class="time"> 3 hrs </span>
								</span> <span class="message"> This is awesome dashboard. </span>
							</a></li>
							<li><a href="#"> <span class="photo"> <img
										alt="avatar" src="./img/avatar-mini4.jpg">
								</span> <span class="subject"> <span class="from"> ADMIN
											BLACK </span> <span class="time"> Just now </span>
								</span> <span class="message"> Hello, this is metrolab </span>
							</a></li>
							<li><a href="#"> See all messages </a></li>
						</ul></li>
					<!-- END NOTIFY INBOX BAR -->

					<!-- START NOTIFY NOTIFICATION BAR -->

					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-bell-o"> </i> <span class="badge bg-warning">
								7 </span>
					</a>
						<ul class="dropdown-menu extended notification">
							<li class="notify-arrow notify-arrow-blue"></li>
							<li>
								<p class="blue">You have 7 new notifications</p>
							</li>
							<li><a href="#"> <span class="label label-danger">
										<i class="fa fa-bolt"> </i>
								</span> Server #3 overloaded. <span class="small italic"> 34
										mins </span>
							</a></li>
							<li><a href="#"> <span class="label label-warning">
										<i class="fa fa-bell"> </i>
								</span> Server #10 not respoding. <span class="small italic"> 1
										Hours </span>
							</a></li>
							<li><a href="#"> <span class="label label-danger">
										<i class="fa fa-bolt"> </i>
								</span> Database overloaded 24%. <span class="small italic"> 4
										hrs </span>
							</a></li>
							<li><a href="#"> <span class="label label-success">
										<i class="fa fa-plus"> </i>
								</span> New user registered. <span class="small italic"> Just
										now </span>
							</a></li>
							<li><a href="#"> <span class="label label-primary">
										<i class="fa fa-bullhorn"> </i>
								</span> Application error. <span class="small italic"> 10 mins </span>
							</a></li>
							<li><a href="#"> See all notifications </a></li>
						</ul></li>
					<!-- END NOTIFY NOTIFICATION BAR -->

				</ul>


			</nav>
			<!-- END HEADER NAV -->

			<!-- START USER LOGIN DROPDOWN  -->

			<div class="top-nav ">
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder="Search"></li>
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="img/avatar1_small.jpg"> <span class="username">
								ADMIN BLACK </span> <b class="caret"> </b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li class="log-arrow-up"></li>
							<li><a href="#"> <i class=" fa fa-suitcase"> </i>
									Profile
							</a></li>
							<li><a href="#"> <i class="fa fa-cog"> </i> Settings
							</a></li>
							<li><a href="#"> <i class="fa fa-bell-o"> </i>
									Notification
							</a></li>
							<li><a href="login.html"> <i class="fa fa-key"> </i> Log
									Out
							</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- END USER LOGIN DROPDOWN  -->
		</header>
		<!-- END HEADER -->
		<!-- BEGIN SIDEBAR -->
		<aside>
			<div id="sidebar" class="nav-collapse">
				<ul class="sidebar-menu" id="nav-accordion">
					<li><a href="index.html" class="active"> <i
							class="fa fa-dashboard"> </i> <span> 流量概况 </span>
					</a></li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"> </i> <span> 温度分析 </span>
					</a>
						<ul class="sub">
							<li><a href="flow-trend.html"> 趋势分析 </a></li>
							<li><a href="flow-contract.html"> 对比分析 </a></li>
							<li><a href="flow-online.html"> 当前在线 </a></li>
							<li><a href="flow-detail.html"> 访问明细 </a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"> </i> <span> 湿度分析 </span>
					</a>
						<ul class="sub">
							<li><a href="#"> 来源分类 </a></li>
							<li><a href="#"> 搜索引擎 </a></li>
							<li><a href="#"> 搜索词 </a></li>
							<li><a href="#"> 来路域名 </a></li>
							<li><a href="#"> 来路页面 </a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"> </i> <span> PM2.5分析 </span>
					</a>
						<ul class="sub">
							<li><a href="#"> 受访分析 </a></li>
							<li><a href="#"> 受访域名 </a></li>
							<li><a href="#"> 受访页面 </a></li>
							<li><a href="#"> 受访升降榜 </a></li>
							<li><a href="#"> 热点图 </a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"> </i> <span> 海平面压力分析 </span>
					</a>
						<ul class="sub">
							<li><a href="basic_table.html"> 地区/运营商 </a></li>
							<li><a href="responsive_table.html">终端详情 </a></li>
							<li><a href="dynamic_table.html"> 新老访客</a></li>
							<li><a href="advanced_table.html"> 忠诚度 </a></li>
							<li><a href="editable_table.html"> 活跃度 </a></li>
						</ul></li>
				</ul>
			</div>
		</aside>
		<!-- END SIDEBAR -->


		<!-- BEGIN MAIN CONTENT -->
		<section id="main-content">
			<!-- BEGIN WRAPPER  -->
			<section class="wrapper">

				<!-- 流量概况表 开始 -->
				<div class="row">
					<div class="col-lg-12 col-sm-12">
						<section class="panel">
							<div class="panel-body">
								<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
								<div>
									<span><h3>2019年度中国气象温度信息概况</h3></span>
								</div>
								<div id="trendtable" style="width: 90%;">
									<table id='pv_table' class="table table-bordered" margin=auto>
											<tr>
												<td>总天数</td>
												<td>365天（平年）</td>
												<td>全年总平均温度</td>
												<td>3.46 摄氏度</td>
											</tr>
											<tr>
												<td>高于平均温度的天数</td>
												<td>196</td>
												<td>低于平均温度的天数</td>
												<td>169</td>
											</tr>
											<tr>
												<td>高于平均温度比率</td>
												<td>53.7%</td>
												<td>低于平均温度比率</td>
												<td>46.3%</td>
											</tr>
									</table>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- 流量概况表 结束-->


				<!-- BEGIN ROW  最近7天日平均PV量-->
				<div class="row">
					<div class="col-lg-6 col-sm-6">
						<section class="panel">
							<div class="panel-body">
								<div id="main1" style="width: 100%; height: 400px;"></div>
								<script type="text/javascript">
									$(document).ready(
													function() {
														var myChart = echarts.init(document.getElementById('main1'));
														// 显示标题，图例和空的坐标轴
														myChart.setOption({
																	title : {
																		text : '2019年中国平均气温温度',
																			subtext: '动态数据'
																	},
																	tooltip : {},
																	legend : {
																		data : [ '日平均气温温度' ]
																	},
																	xAxis : {
																		data : []
																	},
																	yAxis : {},
																	series : [ {
																		name : '日平均气温温度',
																		type : 'bar',
																		data : []
																	} ]
																});
														//loading 动画
														myChart.showLoading();

                                                        $.ajax({
                                                            type:"post",
                                                            url:"<%=basePath%>getTemperature.action",
                                                            dataType:"json",
                                                            success:function(data) {
                                                                myChart.setOption({
                                                                    xAxis : {
                                                                        data : data.tem_Dates
                                                                    },
                                                                    series : [ {
                                                                        // 根据名字对应到相应的系列
                                                                        name : '日平均气温温度',
                                                                        data : data.tem_Avgs
                                                                    } ]
                                                                });
                                                                //数据加载完成后再调用 hideLoading 方法隐藏加载动画
                                                                myChart.hideLoading();

                                                            }
                                                        });




													});
								</script>

							</div>
						</section>
					</div>
					<div class="col-lg-6 col-sm-6">
						<section class="panel">
							<div class="panel-body">

								<div id="main2" style="width: 600px; height: 400px;"
									align="center"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document
											.getElementById('main2'));

									myChart
											.setOption({
												series : [ {
													name : '访问来源',
													type : 'pie',
													radius : '55%',
													data : [ {
														value : 196,
														name : '高于平均气温天数'
													}, {
														value : 169,
														name : '低于平均气温天数'
													}]
												} ],
												itemStyle : {
													normal : {
														// 阴影的大小
														shadowBlur : 200,
														// 阴影水平方向上的偏移
														shadowOffsetX : 0,
														// 阴影垂直方向上的偏移
														shadowOffsetY : 0,
														// 阴影颜色
														shadowColor : 'rgba(0, 0, 0, 0.5)'
													}
												}
											})
								</script>
							</div>
						</section>
					</div>

				</div>
				<!-- END ROW  -->

				<!-- 折线图 row 开始 -->
				<div class="row">
					<div class="col-lg-12 col-sm-12">
						<section class="panel">
							<div class="panel-body">
								<div id="main3" style="width: 100%; height: 500px;">
								</div>
								<script type="text/javascript">
								// 基于准备好的dom，初始化echarts实例
								var myChart3 = echarts.init(document.getElementById('main3'));
								option = {
									    title : {
									        text: '2019年中国热力分布图',
									        subtext: '模拟数据',
									        x:'center'
									    },
									    tooltip : {
									        trigger: 'item'
									    },
									    legend: {
									        orient: 'vertical',
									        x:'left',
									        data:['气温数据']
									    },
									    dataRange: {
									        min: 0,
									        max: 2500,
									        x: 'left',
									        y: 'bottom',
									        text:['高','低'],           // 文本，默认为数值文本
									        calculable : true
									    },
									    toolbox: {
									        show: true,
									        orient : 'vertical',
									        x: 'right',
									        y: 'center',
									        feature : {
									            mark : {show: true},
									            dataView : {show: true, readOnly: false},
									            restore : {show: true},
									            saveAsImage : {show: true}
									        }
									    },
									    roamController: {
									        show: true,
									        x: 'right',
									        mapTypeControl: {
									            'china': true
									        }
									    },
									    series : [
									        {
									            name: '全国气温热力图',
									            type: 'map',
									            mapType: 'china',
									            roam: false,
									            itemStyle:{
									                normal:{label:{show:true}},
									                emphasis:{label:{show:true}}
									            },
									            data:[
									                {name: '北京',value: Math.round(Math.random()*1000)},
									                {name: '天津',value: Math.round(Math.random()*1000)},
									                {name: '上海',value: Math.round(Math.random()*1000)},
									                {name: '重庆',value: Math.round(Math.random()*1000)},
									                {name: '河北',value: Math.round(Math.random()*1000)},
									                {name: '河南',value: Math.round(Math.random()*1000)},
									                {name: '云南',value: Math.round(Math.random()*1000)},
									                {name: '辽宁',value: Math.round(Math.random()*1000)},
									                {name: '黑龙江',value: Math.round(Math.random()*1000)},
									                {name: '湖南',value: Math.round(Math.random()*1000)},
									                {name: '安徽',value: Math.round(Math.random()*1000)},
									                {name: '山东',value: Math.round(Math.random()*1000)},
									                {name: '新疆',value: Math.round(Math.random()*1000)},
									                {name: '江苏',value: Math.round(Math.random()*1000)},
									                {name: '浙江',value: Math.round(Math.random()*1000)},
									                {name: '江西',value: Math.round(Math.random()*1000)},
									                {name: '湖北',value: Math.round(Math.random()*1000)},
									                {name: '广西',value: Math.round(Math.random()*1000)},
									                {name: '甘肃',value: Math.round(Math.random()*1000)},
									                {name: '山西',value: Math.round(Math.random()*1000)},
									                {name: '内蒙古',value: Math.round(Math.random()*1000)},
									                {name: '陕西',value: Math.round(Math.random()*1000)},
									                {name: '吉林',value: Math.round(Math.random()*1000)},
									                {name: '福建',value: Math.round(Math.random()*1000)},
									                {name: '贵州',value: Math.round(Math.random()*1000)},
									                {name: '广东',value: Math.round(Math.random()*1000)},
									                {name: '青海',value: Math.round(Math.random()*1000)},
									                {name: '西藏',value: Math.round(Math.random()*1000)},
									                {name: '四川',value: Math.round(Math.random()*1000)},
									                {name: '宁夏',value: Math.round(Math.random()*1000)},
									                {name: '海南',value: Math.round(Math.random()*1000)},
									                {name: '台湾',value: Math.round(Math.random()*1000)},
									                {name: '香港',value: Math.round(Math.random()*1000)},
									                {name: '澳门',value: Math.round(Math.random()*1000)}
									            ]
									        },
									        
									    ]
									};
								
									myChart3.setOption(option);
								
								</script>
							</div>
						</section>
					</div>
				</div>


				<!-- 折线图 row 结束 -->
				<!-- 动态加载数据示例 开始-->
				<div class="row">
					<div class="col-lg-12 col-sm-12">
						<section class="panel">
							<div class="panel-body">
								<div id="main4" style="width: 100%; height: 400px;"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart4 = echarts.init(document
											.getElementById('main4'));

									// 指定图表的配置项和数据
									option = {
										title : {
											text : '2019年温度变化趋势',
											subtext : '动态数据'
										},
										tooltip : {
											trigger : 'axis'
										},
										legend : {
											data : [ '日最高温度','日平均温度', '日最低温度']
										},
										toolbox : {
											show : true,
											feature : {
												mark : {
													show : true
												},
												dataView : {
													show : true,
													readOnly : false
												},
												magicType : {
													show : true,
													type : [ 'line', 'bar' ]
												},
												restore : {
													show : true
												},
												saveAsImage : {
													show : true
												}
											}
										},
										calculable : true,
										xAxis : [ {
											type : 'category',
											boundaryGap : false,
											data : []
										} ],
										yAxis : [ {
											type : 'value',
											axisLabel : {
												formatter : '{value} °C'
											}
										} ],
										series : [
												{
													name : '最高温度',
													type : 'line',
													data : [],
													markPoint : {
														data : [ {
															type : 'max',
															name : '最大值'
														}, {
															type : 'min',
															name : '最小值'
														} ]
													},
													markLine : {
														data : [ {
															type : 'average',
															name : '平均值'
														} ]
													}
												},
                                            {
                                                name : '平均温度',
                                                type : 'line',
                                                data : [],
                                                markPoint : {
                                                    data : [ {
                                                        type : 'max',
                                                        name : '最大值'
                                                    }, {
                                                        type : 'min',
                                                        name : '最小值'
                                                    } ]
                                                },
                                                markLine : {
                                                    data : [ {
                                                        type : 'average',
                                                        name : '平均值'
                                                    } ]
                                                }
                                            },
                                            {
                                                name : '最低温度',
                                                type : 'line',
                                                data : [],
                                                markPoint : {
                                                    data : [ {
                                                        type : 'max',
                                                        name : '最大值'
                                                    }, {
                                                        type : 'min',
                                                        name : '最小值'
                                                    } ]
                                                },
                                                markLine : {
                                                    data : [ {
                                                        type : 'average',
                                                        name : '平均值'
                                                    } ]
                                                }
                                            }
                                            ]
									};

									// 使用刚指定的配置项和数据显示图表。
									myChart4.setOption(option);
									myChart4.showLoading();
									// 异步加载数据




                                    $.ajax({
                                        type:"post",
                                        url:"<%=basePath%>getTemperature.action",
                                        dataType:"json",
                                        success:function(data) {

                                            myChart4.setOption({
                                                xAxis: {
                                                    data: data.tem_Dates
                                                },
                                                series: [{
                                                    name: '日最高温度',
                                                    data: data.tem_Maxs
                                                },
                                                    {
                                                        name: '日平均温度',
                                                        data: data.tem_Avgs
                                                    },
                                                    {
                                                        name: '日最低温度',
                                                        data: data.tem_Mins
                                                    },

                                                ]
                                            });
                                            myChart4.hideLoading();
                                            }


                                    });


								</script>
							</div>
						</section>
					</div>
				</div>
				<!-- 动态加载数据示例 结束-->


				<!-- BEGIN ROW  -->
				<%--<div class="row">--%>
					<%--<div class="col-lg-6">--%>
						<%--<div class="panel">--%>
							<%--<div class="panel-body">--%>
								<%--<footer class="project-category">--%>
									<%--<ul>--%>
										<%--<li class="active">--%>
											<%--<h5>Project 1</h5>--%>
											<%--<div id="work-progress6"></div>--%>
										<%--</li>--%>
										<%--<li>--%>
											<%--<h5>Project 2</h5>--%>
											<%--<div id="work-progress7"></div>--%>
										<%--</li>--%>
										<%--<li>--%>
											<%--<h5>Project 3</h5>--%>
											<%--<div id="work-progress8"></div>--%>
										<%--</li>--%>
									<%--</ul>--%>
									<%--<h1>Projects accomplished</h1>--%>
								<%--</footer>--%>
								<%--<!-- END  FOOTER -->--%>
							<%--</div>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="col-lg-6">--%>
						<%--<div class="panel">--%>
							<%--<div class="panel-body">--%>
								<%--<div class="bio-chart">--%>
									<%--<input class="knob" data-width="100" data-height="100"--%>
										<%--data-displayPrevious=true data-thickness=".2" value="78"--%>
										<%--data-fgColor="#f9a3a3" data-bgColor="#e8e8e8">--%>
									<%--<h4 class="red">Profit</h4>--%>
								<%--</div>--%>
								<%--<div class="bio-chart">--%>
									<%--<input class="knob" data-width="100" data-height="100"--%>
										<%--data-displayPrevious=true data-thickness=".2" value="63"--%>
										<%--data-fgColor="#fcce54" data-bgColor="#e8e8e8">--%>
									<%--<h4 class="yellow">Expansion</h4>--%>
								<%--</div>--%>
							<%--</div>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
				<!-- END ROW  -->
			</section>
			<!-- END WRAPPER  -->
		</section>
		<!-- END MAIN CONTENT -->
		<!-- BEGIN FOOTER -->
		<footer class="site-footer">
			<div class="text-center">
				2020 &copy; CREATED by Sky <i
					class="fa fa-angle-up"> </i>
				</a>
			</div>
		</footer>
		<!-- END  FOOTER -->
	</section>
	<!-- END SECTION -->
	<!-- BEGIN JS -->

	<!-- BASIC JQUERY 1.8.3 LIB. JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS -->
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- ACCORDIN JS -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<!-- SCROLLTO JS -->
	<script src="js/jquery.nicescroll.js"></script>
	<!-- NICESCROLL JS -->
	<script src="js/respond.min.js"></script>
	<!-- RESPOND JS -->
	<script src="js/jquery.sparkline.js"></script>
	<!-- SPARKLINE JS -->
	<script src="js/sparkline-chart.js"></script>
	<!-- SPARKLINE CHART JS -->
	<script src="js/common-scripts.js"></script>
	<!-- BASIC COMMON JS -->
	<script src="js/count.js"></script>
	<!-- COUNT JS -->
	<!--Morris-->
	<script src="assets/morris.js-0.4.3/morris.min.js"></script>
	<!-- MORRIS JS -->
	<script src="assets/morris.js-0.4.3/raphael-min.js"></script>
	<!-- MORRIS  JS -->
	<script src="js/chart.js"></script>
	<!-- CHART JS -->
	<!--Calendar-->
	<script src="js/calendar/clndr.js"></script>
	<!-- CALENDER JS -->
	<script src="js/calendar/evnt.calendar.init.js"></script>
	<!-- CALENDER EVENT JS -->
	<script src="js/calendar/moment-2.2.1.js"></script>
	<!-- CALENDER MOMENT JS -->
	<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script> -->
	<!-- UNDERSCORE JS -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<!-- JQUERY KNOB JS -->
	<script>
		//knob
		$(".knob").knob();
	</script>

	<!-- END JS -->
</body>
</html>


