<%-- 
    파일명: index.jsp
    설명: 모든 사원 로그인 시 표시되는 대쉬보드 컨텐츠 페이지
    작성일: 2020-12-26
    작성자: 백희승
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Project_HR</title>

<!-- 스타일시트, CDN 모듈화 -->

<!-- 날씨 css -->
<link href="/resources/css/weather.css" rel="stylesheet" type="text/css">
</head>

<body id="page-top">
	<input
		value='<spring:eval expression="@weather.getProperty('weatherkey')"></spring:eval>'
		hidden id="weatherkey">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar 모듈화 -->
		<jsp:include page="/WEB-INF/views/inc/Sidebar.jsp"></jsp:include>
		<!-- End Of Sidebar 모듈화 -->


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="/WEB-INF/views/inc/Topbar.jsp"></jsp:include>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">대쉬보드</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i>&nbsp;어떤 버튼?</a>
					</div>

					<!-- 날씨 API + 뉴스 API 파트 row -->
					<div class="row">

						<!-- 날씨 API -->
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">오늘의 날씨</h6>
									<!-- 옵션 버튼 : -->
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>
								<!-- 날씨 컨텐츠 :  -->
								<div class="card-body weather-here div-min-height">
									<jsp:include page="/WEB-INF/views/inc/preloadingWeather.jsp"/>
								</div>
							</div>
						</div>

						<!-- 뉴스 API -->
						<div class="col-xl-8 col-lg-7 ">
							<div class="card shadow mb-4 height-fix">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">데일리 뉴스</h6>
								</div>

								<!-- 데일리 뉴스 컨텐츠 -->
								<div class="card-body">
									<div id="myCarousel" class="carousel slide">
										<!-- The slideshow-->
										<div class="carousel-inner">
											<div id="news1" class="carousel-item active"></div>
											<div id="news2" class="carousel-item"></div>
											<div id="news3" class="carousel-item"></div>
											<div id="news4" class="carousel-item"></div>
											<div id="news5" class="carousel-item"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- xl3 md6 카드들 row -->
					<div class="row">
						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												Earnings (Monthly)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Annual) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">
												Earnings (Annual)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Tasks Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-info shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks
											</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
												</div>
												<div class="col">
													<div class="progress progress-sm mr-2">
														<div class="progress-bar bg-info" role="progressbar"
															style="width: 70%" aria-valuenow="40" aria-valuemin="0"
															aria-valuemax="52"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Pending Requests Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1">
												Pending Requests</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-comments fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 차트 row -->
					<div class="row">

						<!-- Area Chart -->
						<div class="col-xl-8 col-lg-7">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Earnings
										Overview</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
									</div>
								</div>
							</div>
						</div>

						<!-- Pie Chart -->
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Revenue
										Sources</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-pie pt-4 pb-2">
										<canvas id="myPieChart"></canvas>
									</div>
									<div class="mt-4 text-center small">
										<span class="mr-2"> <i
											class="fas fa-circle text-primary"></i> Direct
										</span> <span class="mr-2"> <i
											class="fas fa-circle text-success"></i> Social
										</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
											Referral
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 긴 카드 -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-lg-6 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Projects</h6>
								</div>
								<div class="card-body">
									<h4 class="small font-weight-bold">
										Server Migration <span class="float-right">20%</span>
									</h4>
									<div class="progress mb-4">
										<div class="progress-bar bg-danger" role="progressbar"
											style="width: 20%" aria-valuenow="20" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<h4 class="small font-weight-bold">
										Sales Tracking <span class="float-right">40%</span>
									</h4>
									<div class="progress mb-4">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 40%" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<h4 class="small font-weight-bold">
										Customer Database <span class="float-right">60%</span>
									</h4>
									<div class="progress mb-4">
										<div class="progress-bar" role="progressbar"
											style="width: 60%" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<h4 class="small font-weight-bold">
										Payout Details <span class="float-right">80%</span>
									</h4>
									<div class="progress mb-4">
										<div class="progress-bar bg-info" role="progressbar"
											style="width: 80%" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<h4 class="small font-weight-bold">
										Account Setup <span class="float-right">Complete!</span>
									</h4>
									<div class="progress">
										<div class="progress-bar bg-success" role="progressbar"
											style="width: 100%" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>

							<!-- Color System -->
							<div class="row">
								<div class="col-lg-6 mb-4">
									<div class="card bg-primary text-white shadow">
										<div class="card-body">
											Primary
											<div class="text-white-50 small">#4e73df</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-success text-white shadow">
										<div class="card-body">
											Success
											<div class="text-white-50 small">#1cc88a</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-info text-white shadow">
										<div class="card-body">
											Info
											<div class="text-white-50 small">#36b9cc</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-warning text-white shadow">
										<div class="card-body">
											Warning
											<div class="text-white-50 small">#f6c23e</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-danger text-white shadow">
										<div class="card-body">
											Danger
											<div class="text-white-50 small">#e74a3b</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-secondary text-white shadow">
										<div class="card-body">
											Secondary
											<div class="text-white-50 small">#858796</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-light text-black shadow">
										<div class="card-body">
											Light
											<div class="text-black-50 small">#f8f9fc</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mb-4">
									<div class="card bg-dark text-white shadow">
										<div class="card-body">
											Dark
											<div class="text-white-50 small">#5a5c69</div>
										</div>
									</div>
								</div>
							</div>

						</div>

						<div class="col-lg-6 mb-4">

							<!-- Illustrations -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
								</div>
								<div class="card-body">
									<div class="text-center">
										<img class="img-fluid px-3 px-sm-4 mt-3 mb-4"
											style="width: 25rem;"
											src="resources/img/undraw_posting_photo.svg" alt="">
									</div>
									<p>
										Add some quality, svg illustrations to your project courtesy
										of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>,
										a constantly updated collection of beautiful svg images that
										you can use completely free and without attribution!
									</p>
									<a target="_blank" rel="nofollow" href="https://undraw.co/">Browse
										Illustrations on unDraw &rarr;</a>
								</div>
							</div>

							<!-- Approach -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Development
										Approach</h6>
								</div>
								<div class="card-body">
									<p>SB Admin 2 makes extensive use of Bootstrap 4 utility
										classes in order to reduce CSS bloat and poor page
										performance. Custom CSS classes are used to create custom
										components and custom utility classes.</p>
									<p class="mb-0">Before working with this theme, you should
										become familiar with the Bootstrap framework, especially the
										utility classes.</p>
								</div>
							</div>

						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer 모듈화 -->
			<jsp:include page="/WEB-INF/views/inc/Footer.jsp"></jsp:include>
			<!-- End of Footer 모듈화 -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<jsp:include page="/WEB-INF/views/inc/LogOutModal.jsp"/>

	<!-- 모든 스크립트 모듈화 -->
	<jsp:include page="/WEB-INF/views/inc/BottomLink.jsp"></jsp:include>
	<script src="/resources/js/skycons.js"></script>
	<script src="/resources/js/openweatherAPIuse.js"></script>
	<script src="/resources/js/newsAPI.js"></script>
	<script src="/resources/js/startWork.js"></script>
</body>

</html>