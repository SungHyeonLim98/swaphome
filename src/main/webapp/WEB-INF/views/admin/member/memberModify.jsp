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
<title>SWAP Home-Admin | 회원정보 수정</title>
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
							<h1>회원정보 수정<h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">회원 정보 관리</a></li>
								<li class="breadcrumb-item"><a href="#">동아리원 관리</a></li>
								<li class="breadcrumb-item"><a href="#">회원정보</a></li>
								<li class="breadcrumb-item active">회원정보 수정</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<form role="form" action="/admin/modify" method="post">
				<div class="card-body">
					<table id="example2"
						class="table table-bordered table-striped text-center">
						<tbody>
							<tr>
								<input type="hidden" value=<c:out value="${member.mnum}" />
									name="mnum">
								<input type="hidden" value=<c:out value="${cri.pagenum}" />
									name="pagenum">
								<input type="hidden" value=<c:out value="${cri.amount}" />
									name="amount">
								<input type="hidden" value=<c:out value="${cri.type}" />
									name="type">
								<input type="hidden" value=<c:out value="${cri.keyword}" />
									name="keyword">
								<td><b>이름</b></td>
								<td><input type="text"
									value=<c:out value="${member.name}" /> name="name"
									class="form-control-sm"></td>
								<td><b>학번</b></td>
								<td><input type="text"
									value=<c:out value="${member.gnum}" /> name="gnum"
									class="form-control-sm"></td>
								<td><b>학년</b></td>
								<from>
								<td><select name="grade" class="from-control">
										<option <c:if test="${member.grade == 1}">selected</c:if>>1</option>
										<option <c:if test="${member.grade == 2}">selected</c:if>>2</option>
										<option <c:if test="${member.grade == 3}">selected</c:if>>3</option>
										<option <c:if test="${member.grade == 4}">selected</c:if>>4</option>
								</select></td>
								<td><b>반</b></td>
								<td><select name="cls" class="from-control">
										<option <c:if test="${member.cls == 'A'}">selected</c:if>>A</option>
										<option <c:if test="${member.cls == 'B'}">selected</c:if>>B</option>
										<option <c:if test="${member.cls == 'C'}">selected</c:if>>C</option>
										<option <c:if test="${member.cls == 'D'}">selected</c:if>>D</option>
								</select></td>
								</from>
							</tr>
							<tr>
								<td><b>주민번호</b></td>
								<td><input type="text"
									value=<c:out value="${member.regnum}" /> name="regnum"
									class="form-control-sm"></td>
								<td><b>핸드폰</b></td>
								<td><input type="text"
									value=<c:out value="${member.phone}" /> name="phone"
									class="form-control-sm"></td>
							</tr>
							<tr>
								<td><b>주소</b></td>
								<td colspan="3"><input type="text"
									value=<c:out value="${member.regnum}" /> name="address"
									class="form-control"></td>
								<td name="memberSelectRecordTb"><b>학적</b></td>
								<td colspan="3"><input type="radio"
									<c:if test='${member.academic == "재학"}'>checked="checked"</c:if>
									name="academic">&nbsp;&nbsp;&nbsp;재학&nbsp;&nbsp;&nbsp;
									<input type="radio"
									<c:if test='${member.academic == "휴학"}'>checked="checked"</c:if>
									name="academic">&nbsp;&nbsp;&nbsp;휴학&nbsp;&nbsp;&nbsp;
									<input type="radio"
									<c:if test='${member.academic == "졸업"}'>checked="checked"</c:if>
									name="academic">&nbsp;&nbsp;&nbsp;졸업&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
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
							<td><textarea name="myself" rows="5" cols="70"
									class="form-control"><c:out value="${member.myself}" /></textarea></td>
							<td><textarea name="motive" rows="5" cols="70"
									class="form-control" style="margin-left: 40px"><c:out
										value="${member.motive}" /></textarea></td>
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
							<td><textarea name="action" rows="5" cols="70"
									class="form-control"><c:out value="${member.action}" /></textarea></td>
							<td><textarea name="advantages" rows="5" cols="70"
									class="form-control" style="margin-left: 40px"><c:out
										value="${member.advantages}" /></textarea></td>
						</tr>
					</table>
					<div class="p-0 float-right mt-2">
						<div class="btn-group">
							<button type="reset" class="btn btn-outline-secondary"
								style="width: 150px; height: 40px;">초기화</button>
							<button type="submit" class="btn btn-outline-secondary"
								style="width: 150px; height: 40px;">저장</button>
							<button type="button" class="btn btn-outline-secondary"
								style="width: 150px; height: 40px;">정보 삭제</button>
						</div>
					</div>
				</div>
			</form>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer no-print">
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

</body>

</html>