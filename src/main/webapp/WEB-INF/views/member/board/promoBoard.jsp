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
<title>Swap Home | 홍보게시판</title>
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
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="container-fluid">
		<main class="tm-main">
			<!-- Search form -->
			<div class="row tm-row">
				<div class="col-12">
					<form method="GET" class="form-inline tm-mb-80 tm-search-form">
						<input class="form-control tm-search-input" name="query"
							type="text" placeholder="Search..." aria-label="Search">
						<button class="tm-search-button" type="submit">
							<i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
			<div class="row tm-row">
				<!--게시글 8개씩 나오게-->
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-01.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">첫 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">
						관리자 페이지에서 작성한 내용 여기에 표시<br> 안녕반가워
					</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">2022.11.21</span>
						<!--2022.11.21-->
						<span>댓글 36</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-02.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">두 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-03.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">세 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-04.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">네 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-05.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">다섯 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-06.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">여섯 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-01.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">일곱 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
				<article class="col-12 col-md-6 tm-post">
					<hr class="tm-hr-primary">
					<a href="#" class="effect-lily tm-post-link tm-pt-60">
						<div class="tm-post-link-inner">
							<img src="img/img-02.jpg" alt="Image" class="img-fluid">
						</div> <span class="position-absolute tm-new-badge">New</span>
						<h2 class="tm-pt-30 tm-color-primary tm-post-title">여덢 번째 게시글</h2>
					</a>
					<p class="tm-pt-30">관리자 페이지에서 작성한 내용 여기에 표시</p>
					<hr>
					<div class="d-flex justify-content-between tm-pt-45">
						<span class="tm-color-primary">여기에 날짜 표시</span>
						<!--2022.11.21-->
						<span>댓글 수 표시</span>
						<!--댓글 36-->
					</div>
				</article>
			</div>
			<div class="row tm-row tm-mt-100 tm-mb-75 text-center">
				<div class="tm-paging">
					<nav class="tm-paging-nav d-inline-block">
						<ul>
							<li class="tm-paging-link"><a href="#"
								class="mb-2 tm-btn tm-btn-primary disabled tm-mr-20"><<</a></li>
							<li class="tm-paging-item active"><a href="#"
								class="mb-2 tm-btn tm-paging-link">1</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">2</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">3</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">4</a></li>
							<li class="tm-paging-link"><a href="#"
								class="mb-2 tm-btn tm-btn-primary tm-mr-20">>></a></li>
						</ul>
					</nav>
				</div>
			</div>
			<%@ include file="../includes/footer.jsp" %>
		</main>
	</div>
	<script src="/resources/mem_js/js/jquery.min.js"></script>
	<script src="/resources/mem_js/js/templatemo-script.js"></script>
</body>
</html>