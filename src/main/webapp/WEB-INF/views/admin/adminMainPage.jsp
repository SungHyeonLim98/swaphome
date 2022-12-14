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

									<p>S.W.A.P ??????</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="/admin/member/membersInfo" class="small-box-footer">?????????
									?????? <i class="fas fa-arrow-circle-right"></i>
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

									<p>?????? ??????</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="/admin/member/memberAllMessage"
									class="small-box-footer">????????? ?????? <i
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

									<p>???????????? ??????</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="/admin/member/memberAllApply" class="small-box-footer">?????????
									?????? <i class="fas fa-arrow-circle-right"></i>
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

									<p>????????? ??????</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="/admin/board/postsInfo" class="small-box-footer">?????????
									?????? <i class="fas fa-arrow-circle-right"></i>
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
										<i class="fas fa-chart-pie mr-1"></i> ?????????
									</h3>
									<div class="card-tools">
										<ul class="nav nav-pills ml-auto">
											<li class="nav-item"><a class="nav-link active"
												href="#revenue-chart" data-toggle="tab">??? ???</a></li>
											<li class="nav-item"><a class="nav-link"
												href="#sales-chart" data-toggle="tab">??? ???</a></li>
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
													<td class="mailbox">????????????</td>
													<td class="mailbox" style="text-align: center;"><b>????????????</b></td>
													<td class="mailbox" style="text-align: center;"><b>??????</b></td>
													<td class="mailbox" style="text-align: center;">??????</td>
													<td class="mailbox" style="text-align: center;">?????????</td>
													<td class="mailbox" style="text-align: center;">????????????</td>
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
									<h3 class="card-title">????????? ??????</h3>

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
											<div class="direct-chat-msg" 
											OnClick="location.href='/admin/member/memberMessage?pnum=<c:out value="${message.pnum}"/>'" style="cursor:pointer;">
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
								
								
							</div>
							<!--/.direct-chat -->

							<!-- TO DO List -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="ion ion-clipboard mr-1"></i> ???????????????
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
											</div> <!-- todo text --> <span class="text">????????? ????????? ??????????????????</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist2"
													id="checklist2"> <label for="checklist2"></label>
											</div> <!-- todo text --> <span class="text">????????? ??????????????? ????????????</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist3"
													id="checklist3"> <label for="checklist3"></label>
											</div> <!-- todo text --> <span class="text">?????? ????????? ????????????</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist4"
													id="checklist4"> <label for="checklist4"></label>
											</div> <!-- todo text --> <span class="text">?????? ???????????? ????????????</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist5"
													id="checklist5"> <label for="checklist5"></label>
											</div> <!-- todo text --> <span class="text">?????????????????? ????????????</span>
										</li>
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="checklist6"
													id="checklist6"> <label for="checklist6"></label>
											</div> <!-- todo text --> <span class="text">?????? ?????? ?????????
												??????....</span>
										</li>
									</ul>
								</div>
								<!-- /.card-body -->
								<div class="card-footer clearfix">
									<div class="input-group">
										<input type="text" name="message" placeholder="????????? ?????? ??????...."
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
										<i class="fas fa-th mr-1"></i> ????????????
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
										<i class="fas fa-map-marker-alt mr-1"></i> ?????????????????????????????? ????????????
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
													<th>?????????</th>
													<th>?????????</th>
													<th>???????????????</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>????????? ??????</td>
													<td>1211</td>

													<td>031-720-2097</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>1205</td>

													<td>031-720-2094</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>1213</td>

													<td>031-720-2269</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>1206</td>

													<td>031-720-2091</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>8307</td>

													<td>031-720-2088</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>1207</td>

													<td>031-720-2152</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
													<td>1212</td>

													<td>031-720-2033</td>
												</tr>
												<tr>
													<td>????????? ??????</td>
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
										<i class="far fa-calendar-alt"></i> ??????
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
				labels : [ "1??????", "2??????", "3??????", "4??????" ],
				datasets : [ {
					label : "Population (millions)",
					backgroundColor : [ "red", "green", "yellow", "blue" ],
					data : [ <c:out value="${grade1}"/>, 
							<c:out value="${grade2}"/>, 
							<c:out value="${grade3}"/>, 
							<c:out value="${grade4}"/>]
				} ]
			},

		});
	</script>
	<script>
		$(document).ready(function() {
			calendarInit();
		});
		/*
		 ?????? ????????? ??? ??? ????????? ?????? ?????? 

		 ?????? ???(????????? : ?????? ??????)
		 ?????? ???????????? ????????? ??????
		 ?????? ???????????? ????????? ??????
		 */

		function calendarInit() {

			// ?????? ?????? ????????????
			var date = new Date(); // ?????? ??????(?????? ??????) ????????????
			var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct ????????? ??????
			var kstGap = 9 * 60 * 60 * 1000; // ?????? kst ???????????? ?????????
			var today = new Date(utc + kstGap); // ?????? ???????????? date ?????? ?????????(??????)

			var thisMonth = new Date(today.getFullYear(), today.getMonth(),
					today.getDate());
			// ???????????? ???????????? ?????? ??????

			var currentYear = thisMonth.getFullYear(); // ???????????? ???????????? ???
			var currentMonth = thisMonth.getMonth(); // ???????????? ???????????? ???
			var currentDate = thisMonth.getDate(); // ???????????? ???????????? ???

			// kst ?????? ????????????
			// console.log(thisMonth);

			// ????????? ?????????
			renderCalender(thisMonth);

			function renderCalender(thisMonth) {

				// ???????????? ?????? ????????? ??????
				currentYear = thisMonth.getFullYear();
				currentMonth = thisMonth.getMonth();
				currentDate = thisMonth.getDate();

				// ?????? ?????? ????????? ??? ????????? ?????? ?????????
				var startDay = new Date(currentYear, currentMonth, 0);
				var prevDate = startDay.getDate();
				var prevDay = startDay.getDay();

				// ?????? ?????? ???????????? ????????? ?????? ?????????
				var endDay = new Date(currentYear, currentMonth + 1, 0);
				var nextDate = endDay.getDate();
				var nextDay = endDay.getDay();

				// console.log(prevDate, prevDay, nextDate, nextDay);

				// ?????? ??? ??????
				$('.year-month').text(currentYear + '.' + (currentMonth + 1));

				// ????????? html ?????? ??????
				calendar = document.querySelector('.dates')
				calendar.innerHTML = '';

				// ?????????
				for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day prev disable">' + i + '</div>'
				}
				// ?????????
				for (var i = 1; i <= nextDate; i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day current">' + i + '</div>'
				}
				// ?????????
				for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
					calendar.innerHTML = calendar.innerHTML
							+ '<div class="day next disable">' + i + '</div>'
				}

				// ?????? ?????? ??????
				if (today.getMonth() == currentMonth) {
					todayDate = today.getDate();
					var currentMonthDate = document
							.querySelectorAll('.dates .current');
					currentMonthDate[todayDate - 1].classList.add('today');
				}
			}

			// ???????????? ??????
			$('.go-prev').on('click', function() {
				thisMonth = new Date(currentYear, currentMonth - 1, 1);
				renderCalender(thisMonth);
			});

			// ???????????? ??????
			$('.go-next').on('click', function() {
				thisMonth = new Date(currentYear, currentMonth + 1, 1);
				renderCalender(thisMonth);
			});
		}
	</script>
</body>
</html>
