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
<title>AdminLTE 3 | Mailbox</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<%@ include file="../includes/header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>회원소식</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">회원소식</a></li>
								<li class="breadcrumb-item active">쪽지</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-3">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">가입신청서</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="card-body p-0">
								<ul class="nav nav-pills flex-column">
									<li class="nav-item active" name="MAdminApplyPage"><a
										href="/admin/member/memberAllApply" class="nav-link"> <i
											class="fas fa-inbox">수신함</i> <span
											class="badge bg-primary float-right" name="NewApplyRequest">Data</span>
									</a></li>

									<li class="nav-item" name="MDropApplyPage"><a href="#"
										class="nav-link"> <i class="far fa-trash-alt"></i> 휴지통
									</a></li>
								</ul>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">쪽지</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="card-body p-0">
								<ul class="nav nav-pills flex-column">
									<li class="nav-item" name="MAdminMessagePage"><a href=""
										class="nav-link"> <i class="fas fa-inbox"> 수신함</i> <span
											class="badge bg-primary float-right" name="NewMessagge">Data</span>
									</a></li>
									<li class="nav-item" name="MDropMessagePage"><a href="#"
										class="nav-link"> <i class="far fa-trash-alt"> 휴지통</i>
									</a></li>
								</ul>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
					<div class="col-md-9">
						<div class="card card-primary card-outline">
							<div class="card-header">
								<h3 class="card-title">쪽지</h3>

								<div class='row'>
									<div class="col-lg-12">

										<form id='searchForm' action="/admin/member/memberAllMessage"
											method='get'>
											<select name='type'>
												<option value=""
													<c:out
													value="${pageMaker.cri.type == null?'selected':''}" />>--</option>
												<option value="N"
													<c:out
													value="${pageMaker.cri.type eq 'N'?'selected':''}" />>이름</option>
												<option value="G"
													<c:out
													value="${pageMaker.cri.type eq 'G'?'selected':''}" />>학번</option>
												<option value="T"
													<c:out
													value="${pageMaker.cri.type eq 'R'?'selected':''}" />>제목</option>
												<option value="R"
													<c:out
													value="${pageMaker.cri.type eq 'R'?'selected':''}" />>보낸날짜</option>
											</select> <input type='text' name='keyword'
												value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
												type='hidden' name='pagenum'
												value='<c:out value="${pageMaker.cri.pagenum}"/>' /> <input
												type='hidden' name='amount'
												value='<c:out value="${pageMaker.cri.amount}"/>' />
											<button class='btn btn-default'>Search</button>
										</form>
									</div>
									<div class="card-tools">
										<div class="input-group input-group-sm">
											<input type="text" class="form-control"
												placeholder="Search Mail" name="Search Request">
											<div class="input-group-append">
												<div class="btn btn-primary">
													<i class="fas fa-search"></i>
												</div>
											</div>
										</div>
									</div>
									<!-- /.card-tools -->
								</div>
								<!-- /.card-header -->
								<div class="card-body p-0">
									<div class="mailbox-controls">
										<!-- Check all button -->
										<button type="button"
											class="btn btn-default btn-sm checkbox-toggle"
											name="AllSelectbtn">
											<i class="far fa-square"></i>
										</button>
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm"
												name="DropRequestbtn">
												<i class="far fa-trash-alt"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm"
												name="RePagebtn">
												<i class="fas fa-reply"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm"
												name="ForwPagebtn">
												<i class="fas fa-share"></i>
											</button>
										</div>
										<!-- /.btn-group -->
										<button type="button" class="btn btn-default btn-sm"
											name="ReplyPagebtn">
											<i class="fas fa-sync-alt"></i>
										</button>
										<div class="float-right">
											1-50/200
											<div class="btn-group">
												<button type="button" class="btn btn-default btn-sm"
													name="Re50Data">
													<i class="fas fa-chevron-left"></i>
												</button>
												<button type="button" class="btn btn-default btn-sm"
													name="Forw50Data">
													<i class="fas fa-chevron-right"></i>
												</button>
											</div>
											<!-- /.btn-group -->
										</div>
										<!-- /.float-right -->
									</div>
									<div class="table-responsive mailbox-messages">
										<table class="table table-hover table-striped">
											<thead>
												<!-- 동아리부원 가입신청 받기(단위:1명)-->
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check1"
																name="SelectRequest"> <label for="check1"></label>
														</div>
													</td>
													<td class="mailbox-name"><a href="#">이름(D)</a></td>
													<td class="mailbox-subject"><b>학번</b></td>
													<td class="mailbox-subject"><b>학년</b></td>
													<td class="mailbox-subject"><b>반</b></td>
													<td class="mailbox-subject"><b>쪽지 제목</b></td>
													<td class="mailbox-date">보낸날짜</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${list}" var="message">
													<tr>
														<td class="mailbox-star"><a href="#"></a></td>
														<td><c:out value="${message.name}" /></td>
														<td><c:out value="${message.gnum}" /></td>
														<td><c:out value="${message.grade}" /></td>
														<td><c:out value="${message.cls}" /></td>
														<td><c:out value="${message.title}" /></td>
														<td><c:out value="${message.regdate}" /></td>
														<td><a class='move'
															href="<c:out value="${message.pnum}" />">확인</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- /.table -->
									</div>
									<!-- /.mail-box-messages -->
								</div>
								<!-- /.card-body -->
								<div class="card-footer p-0">

									<!-- /.btn-group -->


									<%@ include file="../includes/paging.jsp"%>
									<!-- /.float-right -->
								</div>
							</div>
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer"> </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<form id='actionForm' action="/admin/member/memberAllMessage"
		method='get'>
		<input type='hidden' name='pagenum' value='${pageMaker.cri.pagenum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	</form>
	<!-- Page specific script -->
	<script>
		$(function() {
			//Enable check and uncheck all functionality
			$('.checkbox-toggle').click(
					function() {
						var clicks = $(this).data('clicks')
						if (clicks) {
							//Uncheck all checkboxes
							$('.mailbox-messages input[type=\'checkbox\']')
									.prop('checked', false)
							$('.checkbox-toggle .far.fa-check-square')
									.removeClass('fa-check-square').addClass(
											'fa-square')
						} else {
							//Check all checkboxes
							$('.mailbox-messages input[type=\'checkbox\']')
									.prop('checked', true)
							$('.checkbox-toggle .far.fa-square').removeClass(
									'fa-square').addClass('fa-check-square')
						}
						$(this).data('clicks', !clicks)
					})

			//Handle starring for font awesome
			$('.mailbox-star').click(function(e) {
				e.preventDefault()
				//detect type
				var $this = $(this).find('a > i')
				var fa = $this.hasClass('fa')

				//Switch states
				if (fa) {
					$this.toggleClass('fa-star')
					$this.toggleClass('fa-star-o')
				}
			})
		})
	</script>

	<script>
		$(document)
				.ready(
						function() {
							var actionForm = $("#actionForm");

							$(".paginate_button a").on(
									"click",
									function(e) {

										e.preventDefault();

										console.log('click');

										actionForm
												.find("input[name='pagenum']")
												.val($(this).attr("href"));
										actionForm.submit();
									});

							$(".move")
									.on(
											"click",
											function(e) {

												e.preventDefault();
												actionForm
														.append("<input type='hidden' name='pnum' value='"
																+ $(this).attr(
																		"href")
																+ "'>");
												actionForm
														.attr("action",
																"/admin/member/memberMessage");
												actionForm.submit();
											});

							var searchForm = $("#searchForm");

							$("#searchForm button")
									.on(
											"click",
											function(e) {

												if (!searchForm.find(
														"option:selected")
														.val()) {
													alert("검색종류를 선택하세요");
													return false;
												}

												if (!searchForm
														.find(
																"input[name='keyword']")
														.val()) {
													alert("키워드를 입력하세요");
													return false;
												}

												searchForm
														.find(
																"input[name='pageNum']")
														.val("1");
												e.preventDefault();

												searchForm.submit();
											});

						});
	</script>
</body>

</html>