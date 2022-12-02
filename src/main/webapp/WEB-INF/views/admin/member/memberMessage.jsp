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
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-3">
							<!--<a href="mailbox.html" class="btn btn-primary btn-block mb-3">Back to Inbox</a>-->
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
										<li class="nav-item active"><a
											href="/admin/member/memberAllApply" class="nav-link"> <i
												class="fas fa-inbox"></i> 수신함 <span
												class="badge bg-primary float-right">Data</span>
										</a></li>

										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-trash-alt">휴지통</i>
										</a></li>
									</ul>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">쪽지함</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body p-0">
									<ul class="nav nav-pills flex-column">
										<li class="nav-item"><a class="nav-link"
											href="/admin/member/memberAllMessage"><i
												class="fas fa-inbox">수신함</i> <span
												class="badge bg-primary float-right">Data</span> </a></li>
										<li class="nav-item"><a class="nav-link" href="#"><i
												class="far fa-trash-alt">휴지통</i> </a></li>
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
									<h3 class="card-title">Read Mail(수신한 쪽지)</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body p-0">
									<div class="mailbox-read-info">
										<h5>
											<c:out value='${message.title}' />
										</h5>
										<h6>
											From:
											<c:out value='${message.name}' />
											<span class="mailbox-read-time float-right"><c:out
													value='${message.regdate}' /></span>
										</h6>
									</div>
									<c:out value='${message.contents}' />
									<!-- /.mailbox-read-info -->
									<div class="mailbox-controls with-border text-center">
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm"
												data-container="body" title="Delete" name="DropRequestbtn">
												<i class="far fa-trash-alt"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm"
												data-container="body" title="Reply" name="ReRequestbtn">
												<i class="fas fa-reply"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm"
												data-container="body" title="Forward" name="ForwRequestbtn">
												<i class="fas fa-share"></i>
											</button>
										</div>
										<!-- /.btn-group -->

									</div>
									<!-- /.mailbox-controls -->
									<div class="mailbox-read-message" name="UserMessageTb">
										<p>Message name</p>

									</div>
									<!-- /.mailbox-read-message -->
								</div>

								<!-- /.card-footer -->
								<div class="card-footer">
									<div class="float-right">
										<button type="button" class="btn btn-default"
											name="ReRequestbtn">
											<i class="fas fa-reply"></i> Reply
										</button>
										<button type="button" class="btn btn-default"
											name="ForwRequestbtn">
											<i class="fas fa-share"></i> Forward
										</button>
									</div>
									<button type="button" class="btn btn-default"
										name="DropRequestbtn">
										<i class="far fa-trash-alt"></i> Delete
									</button>
								</div>
								<!-- /.card-footer -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<%@ include file="../includes/footer.jsp"%>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

</body>

</html>