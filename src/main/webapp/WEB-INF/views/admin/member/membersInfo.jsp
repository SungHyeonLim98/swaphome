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
<title>memberManagePage</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="/resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
<style>
.search-form {
	margin-top: 7px;
	margin-left: 15px;
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
							<h1>회원 정보 관리</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">회원 정보 관리</a></li>
								<li class="breadcrumb-item active">동아리원 관리</li>
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
						<div class="col-12">
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h3 class="card-title">동아리원 관리</h3>
								</div>
								<div class='row'>
									<div class="col-lg-12 search-form">

										<form id='searchForm' action="/admin/member/membersInfo"
											method='get'>
											<%@ include file="../includes/memberSearchOption.jsp"%>
										</form>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table id="example2" class="table table-bordered table-hover">
											<thead>
												<tr>
													<th class="sorting" tabindex="0" aria-controls="example2"
														rowspan="1" colspan="1"
														aria-label="이름: activate to sort column ascending">이름
														<button type='button' onclick='sortTable()'></button>
													</th>
													<th>학번</th>
													<th>학년</th>
													<th>반</th>
													<th>전화번호</th>
													<th>가입날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${list}" var="member">
													<tr class='move' id="<c:out value="${member.mnum}"/>">
														<td><c:out value="${member.name}" /></td>
														<td><c:out value="${member.gnum}" /></td>
														<td><c:out value="${member.grade}" /></td>
														<td><c:out value="${member.cls}" /></td>
														<td><c:out value="${member.phone}" /></td>
														<td><c:out value="${member.regdate}" /></td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>

												</tr>
											</tfoot>
										</table>

										<%@ include file="../includes/paging.jsp"%>
									</div>
									<!-- /.card-body -->
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
		<footer class="main-footer">
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>

	<form id='actionForm' action="/admin/member/membersInfo" method='get'>
		<input type='hidden' name='pagenum' value='${pageMaker.cri.pagenum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='type'
			value='<c:out value="${ pageMaker.cri.type }"/>'> <input
			type='hidden' name='keyword'
			value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	</form>
	<!-- ./wrapper -->

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
														.append("<input type='hidden' name='mnum' value='"
																+ $(this).attr(
																		"id")
																+ "'>");
												actionForm
														.attr("action",
																"/admin/member/memberInfo");
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
