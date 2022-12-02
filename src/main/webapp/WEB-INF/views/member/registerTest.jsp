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
		<%@ include file="../admin/includes/header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>
								<b>사용자페이지 임시 등록 페이지</b>
							</h1>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<form role="form" action="/member/register" method="post">
				<div class="card-body">
					<table id="example2"
						class="table table-bordered table-striped text-center">
						<tbody>
							<tr>
								<td><b>이름</b></td>
								<td><input type="text" name="name" class="form-control-sm"></td>
								<td><b>학번</b></td>
								<td><input type="text" name="gnum" class="form-control-sm"></td>
								<td><b>학년</b></td>
								<td><select name="grade" class="from-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
								</select></td>
								<td><b>반</b></td>
								<td><select name="cls" class="from-control">
										<option>A</option>
										<option>B</option>
										<option>C</option>
										<option>D</option>
								</select></td>
							</tr>
							<tr>
								<td><b>주민번호</b></td>
								<td><input type="text" name="regnum"
									class="form-control-sm"></td>
								<td><b>핸드폰</b></td>
								<td><input type="text" name="phone" class="form-control-sm"></td>
							</tr>
							<tr>
								<td><b>주소</b></td>
								<td colspan="3"><input type="text" name="address"
									class="form-control"></td>
								<td><b>학적</b></td>
								<td colspan="3">
									<input type="radio" name="academic" checked="checked" value="재학">&nbsp;&nbsp;&nbsp;재학&nbsp;&nbsp;&nbsp;
									<input type="radio" name="academic" value="휴학">&nbsp;&nbsp;&nbsp;휴학&nbsp;&nbsp;&nbsp;
									<input type="radio" name="academic" value="졸업">&nbsp;&nbsp;&nbsp;졸업&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<table class="table text-center">
					<div class="card-body row">
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								
							</td>
							<td>
								<Button type="submit"
									class="btn btn-block btn-outline-secondary"
									style="width: 150px; height: 40px;">저장</Button>
							</td>
							<td>
								
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
					</div>
				</table>

				<table>
					<tr>
						<td>
							<h6 style="margin-top: 20px; margin-left: 40px;">자기소개</h6>
						</td>
						<td>
							<h6 style="margin-top: 20px; margin-left: 80px;">지원동기</h6>
						</td>
					</tr>
					<tr>
						<td><textarea name="myself" rows="5" cols="70"
								class="form-control" style="margin-left: 30px">
            	
          </textarea></td>
						<td><textarea name="motive" rows="5" cols="70"
								class="form-control" style="margin-left: 70px">
          		
          </textarea></td>
					</tr>
					<tr>
						<td>
							<h6 style="margin-top: 20px; margin-left: 40px;">동아리에서 하고싶은
								활동</h6>
						</td>
						<td>
							<h6 style="margin-top: 20px; margin-left: 80px;">자신의 장점</h6>
						</td>
					</tr>
					<tr>
						<td><textarea name="action" rows="5" cols="70"
								class="form-control" style="margin-left: 30px">
          		
          </textarea></td>
						<td><textarea name="advantages" rows="5" cols="70"
								class="form-control" style="margin-left: 70px">
          		
          </textarea></td>
					</tr>
				</table>
			</form>
			<!-- /.content -->
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

</body>