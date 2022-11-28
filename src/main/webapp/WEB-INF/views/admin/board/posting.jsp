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
<title>SWAP Home-Admin | 게시글작성</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/resources/plugins/summernote/summernote-bs4.min.css">
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
							<h1>게시글 작성</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">게시글관리</a></li>
								<li class="breadcrumb-item active">게시글작성</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>


			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- /.col -->
					<div class="col-md-9">
						<form role="form" action="/admin/boardRegister" method="post">
							<div class="card card-primary card-outline">
								<!-- /.card-header -->
								<div class="card-body">
									<div class="form-group">
										<select name="category" class="from-control"
											style="margin-bottom: 15px; padding: 5px 7px 3px 7px; font-size: 15px;">
											<option hidden selected>게시글 선택</option>
											<option>공지사항</option>
											<option>활동 게시판</option>
											<option>홍보 게시판</option>
										</select> <input type='hidden' name='writer' value='Admin'> <input
											name='title' class="form-control" placeholder="제목:">
									</div>
									<div class="form-group">
										<div class="note-editor note-frame card">
											<div class="note-dropzone">
												<div class="note-dropzone-message"></div>
											</div>
											<%@ include file="../includes/adminPostToolBar.jsp"%>
										</div>
										<textarea name='contents' id="compose-textarea"
											class="form-control" style="height: 300px;"></textarea>
									</div>
								</div>

								<div class="form-group">
									<div class="btn btn-default btn-file"
										style='font-size: 13px; margin-left: 20px;'>
										<i class="fas fa-paperclip"></i> 첨부파일 <input type="file"
											name="boardAttachedBtn">
									</div>
									<div class="float-right">
										<button type="button" style='font-size: 15px;'
											class="btn btn-default">
											<i class="fas fa-pencil-alt"></i> 수정
										</button>
										<button type="submit"
											style='font-size: 15px; margin-right: 20px;'
											class="btn btn-primary">
											<i class="far fa-envelope"></i> 전송
										</button>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
					</div>
					</form>
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

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer no-print"> </footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="./resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/adminlte.min.js"></script>
	<!-- Summernote -->
	<script src="/resources/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/resources/dist/js/demo.js"></script>
	<!-- Page specific script -->

</body>
</html>