<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Swap Home | 활동게시판</title>
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- https://fontawesome.com/ -->
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"
	rel="stylesheet">
<!-- https://fonts.google.com/ -->
<link href="/resources/mem_css/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/mem_css/css/templatemo-xtra-blog.css"
	rel="stylesheet">
<link href="/resources/mem_css/css/kkj.css" rel="stylesheet">
<link href="/resources/mem_css/css/style_copy.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="container-fluid">
		<main class="tm-main">
			<hr class="tm-hr-primary tm-mb-55">
			<div class="col-12">
				<h2 class="tm-color-primary tm-post-title tm-mb-60">쪽지</h2>
			</div>
			<form role="form" action="/member/messageRegister" method="post">
				<input type='hidden' name='gnum' value=2270024> <input
					type='hidden' name='cls' value='A'> <input type='hidden'
					name='grade' value=2> <input type='hidden' name='name'
					value='임성현'>
				<div class="form-group col-10 row tm-mb-40">
					<div class="col-lg-6 row mb-2">
						<label for="grade"
							class="col-form-label text-right tm-color-primary ml-auto">학년</label>
						<div class="col-sm-3">
							<select class="select text-center">
								<option value="aClass">1학년</option>
								<option value="bClass">2학년</option>
								<option value="cClass">3학년</option>
								<option value="cClass">4학년</option>
							</select>
						</div>
					</div>
					<div class="col-lg-6 row mb-2">
						<label for="gnum"
							class="col-form-label text-right tm-color-primary ml-auto">학번</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="gnum" maxlength="7" required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>
						</div>
					</div>
					<div class="col-lg-6 row mb-2">
						<label for="cls"
							class="col-form-label text-right tm-color-primary ml-auto">반</label>
						<div class="col-sm-3">
							<select class="select text-center">
								<option value="aClass">A반</option>
								<option value="bClass">B반</option>
								<option value="cClass">C반</option>
							</select>
						</div>
					</div>
					<div class="col-lg-6 row mb-2">
						<label for="name"
							class="col-form-label text-right tm-color-primary ml-auto">이름</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="name" maxlength="5" required onkeyup="this.value=this.value.replace(/[^-ㄱ-힣a-zA-Z]/g,'');"/>
						</div>
					</div>
				</div>
				<div class="form-group row mb-4">
					<label for="name"
						class="col-sm-3 col-form-label text-right tm-color-primary">제목</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="title" maxlength="40" required>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="form-group row mb-5">
					<label for="question"
						class="col-sm-3 col-form-label text-right tm-color-primary">건의사항</label>
					<div class="col-sm-7">
						<textarea class="form-control mr-0 ml-auto" name="contents"
							id="question" rows="10" maxlenght="800" required></textarea>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="text-center">
					<button type='submit' class="tm-btn tm-btn-primary tm-btn-small">전송</button>
					<button type="reset" class="tm-btn tm-btn-primary tm-btn-small">취소</button>
				</div>
			</form>
			<%@ include file="../includes/footer.jsp"%>
		</main>
	</div>
	<script src="/resources/mem_js/js/jquery.min.js"></script>
	<script src="/resources/mem_js/js/templatemo-script.js"></script>
</body>
</html>
</body>
</html>