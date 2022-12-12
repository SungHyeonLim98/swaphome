<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SWAP Home-Admin</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/resources/plugins/summernote/summernote-bs4.min.css">

<link rel="stylesheet" href="/resources/plugins/fullcalendar/main.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<link rel="stylesheet" href="/resources/dist/css/gt.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->

		<!-- Navbar -->

		<!-- /.sidebar-menu -->

		<!-- /.sidebar -->
		<%@ include file="./includes/header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">SWAP - Admin</h1>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>
										<c:out value='${mbCount}' />
									</h3>

									<p>S.W.A.P 부원</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="/admin/member/membersInfo" class="small-box-footer">자세히
									보기 <i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>
										<c:out value='${msCount}' />
										<sup style="font-size: 20px"></sup>
									</h3>

									<p>쪽지 목록</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="/admin/member/memberAllMessage"
									class="small-box-footer">자세히 보기 <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>
										<c:out value='${reqCount}' />
									</h3>

									<p>가입신청 목록</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="/admin/member/memberAllApply" class="small-box-footer">자세히
									보기 <i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>
										<c:out value='${boCount}' />
									</h3>

									<p>게시물 목록</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="/admin/board/postsInfo" class="small-box-footer">자세히
									보기 <i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<!-- Left col -->
						<section class="col-lg-7 connectedSortable">
							<!-- Custom tabs (Charts with tabs)-->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="fas fa-chart-pie mr-1"></i> 게시물
									</h3>
									<div class="card-tools">
										<ul class="nav nav-pills ml-auto">
											<li class="nav-item"><a class="nav-link active"
												href="#revenue-chart" data-toggle="tab">활 동</a></li>
											<li class="nav-item"><a class="nav-link"
												href="#sales-chart" data-toggle="tab">홍 보</a></li>
										</ul>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="tab-content p-0">
										<!-- Morris chart - Sales -->
										<table class="table table-hover table-striped">
											<thead>
												<tr>
													<td class="mailbox">카테고리</td>
													<td class="mailbox" style="text-align: center;"><b>게시번호</b></td>
													<td class="mailbox" style="text-align: center;"><b>제목</b></td>
													<td class="mailbox" style="text-align: center;">내용</td>
													<td class="mailbox" style="text-align: center;">작성자</td>
													<td class="mailbox" style="text-align: center;">작성날짜</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${boList}" var="board">
													<tr class='move' id="<c:out value="${board.bno}"/>">
														<td><c:out value="${board.category}" /></td>
														<td><c:out value="${board.bno}" /></td>
														<td><c:out value="${board.title}" /></td>
														<td><c:out value="${board.contents}" /></td>
														<td><c:out value="${board.writer}" /></td>
														<td><fmt:formatDate pattern="yyyy-MM-dd"
																value="${board.updatedate}" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->

							<!-- DIRECT CHAT -->
							<div class="card direct-chat direct-chat-primary">
								<div class="card-header">
									<h3 class="card-title">미확인 쪽지</h3>

									<div class="card-tools">
										<span title="3 New Messages" class="badge badge-primary">3</span>
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<!-- Conversations are loaded here -->
									<div class="direct-chat-messages">
										<!-- Message. Default to the left -->
										<c:forEach items="${msList}" var="message">
											<div class="direct-chat-msg">
												<div class="direct-chat-infos clearfix">
													<span class="direct-chat-name float-left"><c:out value="${message.name}" /></span> <span
														class="direct-chat-timestamp float-right"><c:out value="${message.regdate}" /></span>
												</div>
												<!-- /.direct-chat-infos -->
												<div class="direct-chat-img">
													<button type="button" class="btn btn-primary">
														<i class="fas fa-chart-pie mr-1"></i>
													</button>
												</div>
												<!-- /.direct-chat-img -->
												<div class="direct-chat-text"><c:out value="${message.title}" /></div>
												<!-- /.direct-chat-text -->
											</div>
										</c:forEach>

									</div>
									<!--/.direct-chat-messages-->

									<!-- Contacts are loaded here -->

									<!-- /.direct-chat-pane -->
								</div>
								<!-- /.card-body -->
								<div class="card-footer">
									<form action="#" method="post">
										<div class="input-group">
											<input type="text" name="message" placeholder="답글 남기기...."
												class="form-control"> <span
												class="input-group-append">
												<button type="button" class="btn btn-primary">Send</button>
											</span>
										</div>
									</form>
								</div>
								<!-- /.card-footer-->
							</div>
							<!--/.direct-chat -->

							<!-- TO DO List -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="ion ion-clipboard mr-1"></i> 체크리스트
									</h3>

									<div class="card-tools">
										<ul class="pagination pagination-sm">
											<li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
											<li class="page-item"><a href="#" class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item"><a href="#" class="page-link">3</a></li>
											<li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
										</ul>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<ul class="todo-list" data-widget="todo-list">
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist1"
													id="checklist1"> <label for="checklist1"></label>
											</div> <!-- todo text --> <span class="text">동아리 신환회 술집예약하기</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist2"
													id="checklist2"> <label for="checklist2"></label>
											</div> <!-- todo text --> <span class="text">동아리 등록신청서 제출하기</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist3"
													id="checklist3"> <label for="checklist3"></label>
											</div> <!-- todo text --> <span class="text">교양 레포트 작성하기</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist4"
													id="checklist4"> <label for="checklist4"></label>
											</div> <!-- todo text --> <span class="text">부원 숙청명단 정리하기</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist5"
													id="checklist5"> <label for="checklist5"></label>
											</div> <!-- todo text --> <span class="text">휴학예정인원 종합하기</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist6"
													id="checklist6"> <label for="checklist6"></label>
											</div> <!-- todo text --> <span class="text">내가 뭐를 할려고
												했지....</span>
										</li>
									</ul>
								</div>
								<!-- /.card-body -->
								<div class="card-footer clearfix">
									<div class="input-group">
										<input type="text" name="message" placeholder="리스트 목록 입력...."
											class="form-control"> <span
											class="input-group-append">
											<button type="button" class="btn btn-primary float-right">
												<i class="fas fa-plus"></i> Add item
											</button>
										</span>
									</div>

								</div>
							</div>
							<!-- /.card -->
						</section>
						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-5 connectedSortable">

							<div class="card bg-gradient-info">
								<div class="card-header border-0">
									<h3 class="card-title">
										<i class="fas fa-th mr-1"></i> 부원현황
									</h3>

									<div class="card-tools">
										<button type="button" class="btn bg-info btn-sm"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn bg-info btn-sm"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="chart-responsive">
												<canvas id="pie-chart" width="200" height="150"></canvas>
											</div>
											<!-- ./chart-responsive -->
										</div>
										<!-- /.col -->

										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.card-footer -->
							</div>

							<!-- Map card -->
							<div class="card bg-gradient-primary">
								<div class="card-header border-0">
									<h3 class="card-title">
										<i class="fas fa-map-marker-alt mr-1"></i> 컴퓨터소프트웨어학과 전임교수
									</h3>
									<!-- card tools -->
									<div class="card-tools">
										<button type="button" class="btn btn-primary btn-sm daterange"
											title="Date range">
											<i class="far fa-calendar-alt"></i>
										</button>
										<button type="button" class="btn btn-primary btn-sm"
											data-card-widget="collapse" title="Collapse">
											<i class="fas fa-minus"></i>
										</button>
									</div>
									<!-- /.card-tools -->
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table m-0">
											<thead>
												<tr>
													<th>교수명</th>
													<th>연구실</th>
													<th>연구실번호</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>서동린 교수</td>
													<td>1211</td>

													<td>031-720-2097</td>
												</tr>
												<tr>
													<td>임경철 교수</td>
													<td>1205</td>

													<td>031-720-2094</td>
												</tr>
												<tr>
													<td>서장원 교수</td>
													<td>1213</td>

													<td>031-720-2269</td>
												</tr>
												<tr>
													<td>염세훈 교수</td>
													<td>1206</td>

													<td>031-720-2091</td>
												</tr>
												<tr>
													<td>이재희 교수</td>
													<td>8307</td>

													<td>031-720-2088</td>
												</tr>
												<tr>
													<td>김두상 교수</td>
													<td>1207</td>

													<td>031-720-2152</td>
												</tr>
												<tr>
													<td>문혜경 교수</td>
													<td>1212</td>

													<td>031-720-2033</td>
												</tr>
												<tr>
													<td>조민양 교수</td>
													<td>2309-8</td>

													<td>031-720-2276</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- /.card-body-->

							</div>
							<!-- /.card -->

							<!-- solid sales graph -->

							<!-- /.card -->

							<!-- Calendar -->
							<div class="card">
								<div class="card-header border-0">

									<h3 class="card-title">
										<i class="far fa-calendar-alt"></i> 달력
									</h3>
									<!-- tools card -->
									<div class="card-tools">
										<!-- button with a dropdown -->

										<button type="button" class="btn btn-success btn-sm"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-success btn-sm"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
									<!-- /. tools -->
								</div>
								<!-- /.card-header -->
								<div class="card-body pt-0">
									<!--The calendar -->
									<div class="sec_cal">
										<div class="cal_nav">
											<a href="javascript:;" class="nav-btn go-prev">prev</a>
											<div class="year-month"></div>
											<a href="javascript:;" class="nav-btn go-next">next</a>
										</div>
										<div class="cal_wrap">
											<div class="days">
												<div class="day">MON</div>
												<div class="day">TUE</div>
												<div class="day">WED</div>
												<div class="day">THU</div>
												<div class="day">FRI</div>
												<div class="day">SAT</div>
												<div class="day">SUN</div>
											</div>
											<div class="dates"></div>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</section>
						<!-- right col -->
					</div>
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include file="./includes/footer.jsp"%>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/resources/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>







	<!-- Bootstrap 4 -->
	<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>


	<!-- jQuery Knob Chart -->

	<!-- daterangepicker -->
	<script src="/resources/plugins/moment/moment.min.js"></script>

	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="/resources/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script src="/resources/plugins/fullcalendar/main.js"></script>

	<script src="/resources/plugins/chart.js/Chart.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/resources/dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/resources/dist/js/dashboard.js"></script>

	<script>
		new Chart(document.getElementById("pie-chart"), {
			type : 'pie',
			data : {
				labels : [ "1학년", "2학년", "3학년", "4학년" ],
				datasets : [ {
					label : "Population (millions)",
					backgroundColor : [ "red", "green", "yellow", "blue" ],
					data : [ 25, 15, 2, 2 ]
				} ]
			},

		});
	</script>
	<script>
		$(document).ready(function() {
			calendarInit();
		});
		/*
		 달력 렌더링 할 때 필요한 정보 목록 

		 현재 월(초기값 : 현재 시간)
		 금월 마지막일 날짜와 요일
		 전월 마지막일 날짜와 요일
		 */

		function calendarInit() {

			// 날짜 정보 가져오기
			var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
			var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
			var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
			var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

			var thisMonth = new Date(today.getFullYear(), today.getMonth(),
					today.getDate());
			// 달력에서 표기하는 날짜 객체

			var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
			var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
			var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

			// kst 기준 현재시간
			// console.log(thisMonth);

			// 캘린더 렌더링
			renderCalender(thisMonth);

			function renderCalender(thisMonth) {

				// 렌더링을 위한 데이터 정리
				currentYear = thisMonth.getFullYear();
				currentMonth = thisMonth.getMonth();
				currentDate = thisMonth.getDate();

				// 이전 달의 마지막 날 날짜와 요일 구하기
				var startDay = new Date(currentYear, currentMonth, 0);
				var prevDate = startDay.getDate();
				var prevDay = startDay.getDay();

				// 이번 달의 마지막날 날짜와 요일 구하기
				var endDay = new Date(currentYear, currentMonth + 1, 0);
				var nextDate = endDay.getDate();
				var nextDay = endDay.getDay();

				// console.log(prevDate, prevDay, nextDate, nextDay);

				// 현재 월 표기
				$('.year-month').text(currentYear + '.' + (currentMonth + 1));

				// 렌더링 html 요소 생성
				calendar = document.querySelector('.dates')
				calendar.innerHTML = '';

				// 지난달
				for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day prev disable">' + i + '</div>'
				}
				// 이번달
				for (var i = 1; i <= nextDate; i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day current">' + i + '</div>'
				}
				// 다음달
				for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day next disable">' + i + '</div>'
				}

				// 오늘 날짜 표기
				if (today.getMonth() == currentMonth) {
					todayDate = today.getDate();
					var currentMonthDate = document
							.querySelectorAll('.dates .current');
					currentMonthDate[todayDate - 1].classList.add('today');
				}
			}

			// 이전달로 이동
			$('.go-prev').on('click', function() {
				thisMonth = new Date(currentYear, currentMonth - 1, 1);
				renderCalender(thisMonth);
			});

			// 다음달로 이동
			$('.go-next').on('click', function() {
				thisMonth = new Date(currentYear, currentMonth + 1, 1);
				renderCalender(thisMonth);
			});
		}
	</script>
</body>
</html>
