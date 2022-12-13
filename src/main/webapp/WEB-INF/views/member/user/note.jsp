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
				<input type='hidden' name='gnum' value=2270024>
				<input type='hidden' name='cls' value='A'>
				<input type='hidden' name='grade' value=2>
				<input type='hidden' name='name' value='임성현'>
				<div class="form-group row mb-4">
					<label for="name"
						class="col-sm-3 col-form-label text-right tm-color-primary">제목</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name="title" required>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="form-group row mb-5">
					<label for="question"
						class="col-sm-3 col-form-label text-right tm-color-primary">건의사항</label>
					<div class="col-sm-7">
						<textarea class="form-control mr-0 ml-auto" name="contents"
							id="question" rows="10" required></textarea>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="text-center">
					<button type='submit' class="tm-btn tm-btn-primary tm-btn-small">전송</button>
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