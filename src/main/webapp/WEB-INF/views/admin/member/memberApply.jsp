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
<title>AdminLTE 3 | Read Mail</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">

<style>
.mem-ap-info {
	height: 40px;
	width: auto;
	background-color: white;
	border: solid 1px;
	margin-top: 0px;
}

.mem-ap-intro {
	height: 130px;
	width: auto;
	background-color: white;
	border: solid 1px;
	margin-top: 0px;
}
</style>
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
								<li class="breadcrumb-item"><a href="#">가입신청서</a></li>
								<li class="breadcrumb-item active">수신함</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-3">
							<!--<a href="mailbox.html" class="btn btn-primary btn-block mb-3">Back to Inbox</a>-->
							<div class="card card-primary card-outline">
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
												class="fas fa-inbox"> 수신함</i> <span
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
							<div class="card card-primary card-outline">
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
										<li class="nav-item" name="MAdminMessagePage"><a
											href="/admin/member/memberAllMessage" class="nav-link"> <i
												class="fas fa-inbox"> 수신함</i> <span
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
									<h3 class="card-title">Read Mail(수신한 가입신청서)</h3>
								</div>
								<!-- /.card-header -->

								<div class="card-body p-0">
									<div class="mailbox-read-info">
										<h5>Message Subject Is Placed Here(제목)</h5>
										<h6>
											From: support@adminlte.io(쓴 사람) <span
												class="mailbox-read-time float-right">15 Feb. 2015
												11:03 PM(날짜)</span>
										</h6>
									</div>
									<!-- /.mailbox-read-info -->
									<section class="content">
										<div class="container-fluid">
											<form action="/admin/register" method="POST">
												<div class="row">
													<!-- left column -->
													<div class="col-md-6">
														<!-- general form elements -->
														<!-- form start -->
														<div class="card card-primary card-outline">
															<div class="card-header">
																<h3 class="card-title">인원 정보</h3>
																<div class="card-tools">
																	<button type="button" class="btn btn-tool"
																		data-card-widget="collapse">
																		<i class="fas fa-minus"></i>
																	</button>
																</div>
																<!-- /.card-tools -->
															</div>
															<!-- /.card-header -->
															<div class="card-body" name="memberSelectNameTb">
																<h5>이름</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="name"
																		value=<c:out value='${member.name}' />>
																	<c:out value='${member.name}' />
																</div>
																<br>
																<h5>학번</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="gnum"
																		value=<c:out value="${member.gnum}" />>
																	<c:out value="${member.gnum}" />
																</div>
																<br>
																<h5>전화번호</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="phone"
																		value="<c:out value='${member.phone}' />">
																	<c:out value="${member.phone}" />
																</div>
																<br>
																<h5>학년</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="grade"
																		value="<c:out value='${member.grade}' />">
																	<c:out value="${member.grade}" />
																</div>
																<br>
																<h5>반</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="cls"
																		value=<c:out value="${member.cls}" />>
																	<c:out value="${member.cls}" />
																</div>
																<br>
																<h5>주민번호 앞7자리</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="regnum"
																		value="<c:out value='${member.regnum}' />">
																	<c:out value="${member.regnum}" />
																</div>
																<br>
																<h5>주소</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="address"
																		value="<c:out value='${member.address}' />">
																	<c:out value="${member.address}" />
																</div>
																<br>
																<h5>학적</h5>
																<div class="form-control mem-ap-info">
																	<input type="hidden" name="academic"
																		value="<c:out value='${member.academic}' />">
																	<c:out value="${member.academic}" />
																</div>
															</div>
															<!-- /.card-body -->
														</div>
													</div>
													<!--/.col (left) -->
													<!-- right column -->
													<div class="col-md-6">
														<!-- Form Element sizes -->
														<div class="card card-primary card-outline">
															<div class="card-header">
																<h3 class="card-title">인원 소개</h3>

																<div class="card-tools">
																	<button type="button" class="btn btn-tool"
																		data-card-widget="collapse">
																		<i class="fas fa-minus"></i>
																	</button>
																</div>
																<!-- /.card-tools -->
															</div>
															<!-- /.card-header -->
															<div class="card-body" name="memberSelectNameTb">
																<h5>자기소개</h5>
																<div class="form-control mem-ap-intro">
																	<input type="hidden" name="myself"
																		value="<c:out value='${member.myself}' />">
																	<c:out value="${member.myself}" />
																</div>
																<br>
																<h5>지원동기</h5>
																<div class="form-control mem-ap-intro">
																	<input type="hidden" name="motive"
																		value="<c:out value='${member.motive}' />">
																	<c:out value="${member.motive}" />
																</div>
																<br>
																<h5>동아리에서 하고싶은 활동</h5>
																<div class="form-control mem-ap-intro">
																	<input type="hidden" name="action"
																		value="<c:out value='${member.action}' />">
																	<c:out value="${member.action}" />
																</div>
																<br>
																<h5>자신의 장점</h5>
																<div class="form-control mem-ap-intro">
																	<input type="hidden" name="advantages"
																		value="<c:out value='${member.advantages}' />">
																	<c:out value="${member.advantages}" />
																</div>
															</div>
															<!-- /.card-body -->
														</div>
														<div class="mailbox-controls with-border text-right">
															<button type="submit" class="btn btn-primary">
																<i class="far fa-envelope"></i>수 락
															</button>
															<button type="submit" class="btn btn-primary">
																<i class="far fa-envelope"></i>거 절
															</button>
														</div>
													</div>
											</form>
									</section>
								</div>
								<!-- /.card -->
							</div>
							<!--/.col (right) -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
			</section>

			<!-- /.mailbox-read-message -->
		</div>
	</div>
	<!-- /.card -->
	</div>
	<!-- /.col -->
	</div>
	<!-- /.row -->
	</div>
	<!-- /.container-fluid -->

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

</body>

</html>