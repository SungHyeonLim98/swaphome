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
<title>SWAP Home-Admin | 회원정보</title>
<style>
label, textarea {
	font-size: .8rem;
	letter-spacing: 1px;
}

textarea {
	padding: 10px;
	max-width: 100%;
	line-height: 1.5;
	border-radius: 5px;
	border: 1px solid #ccc;
	box-shadow: 1px 1px 1px #999;
}

label {
	display: block;
	margin-bottom: 10px;
}
</style>
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
							<h1>회원정보<h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">회원 정보 관리</a></li>
								<li class="breadcrumb-item"><a href="#">동아리원 관리</a></li>
								<li class="breadcrumb-item active">회원정보</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<div class="card-header"></div>
			<div class="card-body">
				<table id="example2"
					class="table table-bordered table-striped text-center">
					<tbody>
						<form>
							<tr>
								<td name="memberSelectNameTb"><b>이름</b></td>
								<td><c:out value="${member.name}" /></td>
								<td name="memberSelectClassInTb"><b>학번</b></td>
								<td><c:out value="${member.gnum}" /></td>
								<td name="memberSelectYearTb"><b>학년</b></td>
								<td><c:out value="${member.grade}" /></td>
								<td name="memberSelectClassNumTb"><b>반</b></td>
								<td><c:out value="${member.cls}" /></td>
							</tr>
							<tr>
								<td name="memberSelectRegistNumTb"><b>주민번호</b></td>
								<td><c:out value="${member.regnum}" /></td>
								<td name="memberSelectPhoneTb"><b>핸드폰</b></td>
								<td><c:out value="${member.phone}" /></td>
							</tr>
							<tr>
								<td name="memberSelectAddressTb"><b>주소</b></td>
								<td colspan="3"><c:out value="${member.address}" /></td>
								<td name="memberSelectRecordTb"><b>학적</b></td>
								<td colspan="3"><c:out value="${member.academic}" /></td>
							</tr>
						</form>
					</tbody>
				</table>
				<table>
					<tr>
						<td>
							<h6 style="margin-top: 20px;">자기소개</h6>
						</td>
						<td>
							<h6 style="margin-top: 20px; margin-left: 40px;">지원동기</h6>
						</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="70" readonly><c:out
									value="${member.myself}" /></textarea></td>
						<td><textarea rows="5" cols="70" style="margin-left: 40px"
								readonly><c:out value="${member.motive}" /></textarea></td>
					</tr>
					<tr>
						<td>
							<h6 style="margin-top: 20px;">동아리에서 하고싶은 활동</h6>
						</td>
						<td>
							<h6 style="margin-top: 20px; margin-left: 40px;">자신의 장점</h6>
						</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="70" readonly><c:out
									value="${member.action}" /></textarea></td>
						<td><textarea rows="5" cols="70" style="margin-left: 40px"
								readonly><c:out value="${member.advantages}" /></textarea></td>
					</tr>
				</table>
				<div class="p-0 float-right mt-2">
					<div class="btn-group">
						<a
							href="/admin/member/membersInfo?pagenum=<c:out value='${cri.pagenum}'/>&amount=<c:out value='${cri.amount}' />">
							<button type="reset" class="btn btn-outline-secondary"
								style="width: 150px; height: 40px;">목록으로</button>
						</a>
						<button data-oper='modify' type="submit"
							class="btn btn-outline-secondary"
							style="width: 150px; height: 40px;">회원정보 수정</button>
						<form id='operForm' action="/admin/member/memberModify"
							method="get">
							<input type='hidden' id='mnum' name='mnum'
								value='<c:out value="${member.mnum}"/>'> <input
								type='hidden' id='pagenum' name='pagenum'
								value='<c:out value="${cri.pagenum}"/>'> <input
								type='hidden' id='amount' name='amount'
								value='<c:out value="${cri.amount}"/>'> <input
								type='hidden' id='keyword' name='keyword'
								value='<c:out value="${cri.keyword}"/>'> <input
								type='hidden' id='type' name='type'
								value='<c:out value="${cri.type}"/>'>
						</form>
						<form action="/admin/remove?mnum=<c:out value='${member.mnum}' />"
							method="POST">
							<button type="submit" class="btn btn-outline-secondary"
								style="width: 150px; height: 40px;">회원정보 삭제</button>
						</form>
					</div>
				</div>
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<%@ include file="../includes/footer.jsp" %>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<script type="text/javascript">
		$(document).ready(function() {

			var operForm = $("#operForm");

			$("button[data-oper='modify']").on("click", function(e) {

				operForm.attr("action", "/admin/member/memberModify").submit();

			});
		});
	</script>
</body>
</html>