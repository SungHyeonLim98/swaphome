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
			<hr class="tm-hr-primary tm-mt-55 tm-mb-40">
			<div class="col-12">
				<h2 class="tm-color-primary tm-post-title tm-mb-60">가입신청서</h2>
			</div>
			<div class="row tm-row tm-mb-120">
				<div class="col-lg-5 tm-contact-left">
					<div class="form-group row mb-4">
						<label for="name"
							class="col-sm-3 col-form-label text-right tm-color-primary">이름</label>
						<div class="col-sm-9">
							<input type="text" class="form-control mr-0 ml-auto" id="name"
								required>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="hbun"
							class="col-sm-3 col-form-label text-right tm-color-primary">학번</label>
						<div class="col-sm-9">
							<input type="text" class="form-control mr-0 ml-auto" id="hbun"
								required>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="pnum"
							class="col-sm-3 col-form-label text-right tm-color-primary"><h6>전화번호</h6></label>
						<div class="col-sm-9">
							<input type="text" class="form-control mr-0 ml-auto" id="pnum"
								required>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="grade"
							class="col-sm-3 col-form-label text-right tm-color-primary">학년</label>
						<div class="col-sm-9">
							<select class="select">
								<option value="selectGrade" hidden>---</option>
								<option value="first">1학년</option>
								<option value="second">2학년</option>
								<option value="third">3학년</option>
							</select>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="class"
							class="col-sm-3 col-form-label text-right tm-color-primary">반</label>
						<div class="col-sm-9">
							<select class="select">
								<option value="selectClass" hidden>---</option>
								<option value="aClass">A반</option>
								<option value="bClass">B반</option>
								<option value="cClass">C반</option>
							</select>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="snum"
							class="col-sm-3 col-form-label text-right tm-color-primary"><h6>주민번호</h6></label>
						<div class="col-sm-9">
							<input type="text" class="form-control mr-0 ml-auto" id="snum"
								required>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="addr"
							class="col-sm-3 col-form-label text-right tm-color-primary">주소</label>
						<div class="col-sm-9">
							<textarea class="form-control mr-0 ml-auto" name="addr" id="addr"
								rows="3" required></textarea>
						</div>
					</div>
				</div>
				<div class="col-lg-7 tm-contact-right">
					<div class="form-group row mb-4">
						<label for="intro"
							class="col-sm-3 col-form-label text-right tm-color-primary">자기소개</label>
						<div class="col-sm-9">
							<textarea class="form-control mr-0 ml-auto" name="intro"
								id="intro" rows="5" required></textarea>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="motive"
							class="col-sm-3 col-form-label text-right tm-color-primary">지원동기</label>
						<div class="col-sm-9">
							<textarea class="form-control mr-0 ml-auto" name="motive"
								id="motive" rows="5" required></textarea>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="act"
							class="col-sm-3 col-form-label text-right tm-color-primary">동아리에서
							하고싶은 <br>활동
						</label>
						<div class="col-sm-9">
							<textarea class="form-control mr-0 ml-auto" name="act" id="act"
								rows="5" required></textarea>
						</div>
					</div>
					<div class="form-group row mb-4">
						<label for="adventage"
							class="col-sm-3 col-form-label text-right tm-color-primary">자신의
							장점</label>
						<div class="col-sm-9">
							<textarea class="form-control mr-0 ml-auto" name="adventage"
								id="adventage" rows="5" required></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="tm-prev-next-wrapper text-center tm-mt-55">
				<button class="tm-btn tm-btn-primary tm-btn-small">전송</button>
				<button class="tm-btn tm-btn-primary tm-btn-small">취소</button>
			</div>
			<%@ include file="../includes/footer.jsp"%>
		</main>
	</div>
	<script src="/resources/mem_js/js/jquery.min.js"></script>
	<script src="/resources/mem_js/js/templatemo-script.js"></script>
</body>
</html>