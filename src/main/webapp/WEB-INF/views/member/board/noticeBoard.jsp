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
			<div class="row tm-row tm-mb-45">
				<table>
					<div class="col-12">
						<div class="notice">
							<div class="panel panel-default qna-list">
								<ul class="list">
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">1번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">1</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">2번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">2</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">3번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">3</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">4번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">4</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">5번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">5</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">6번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">6</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">7번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">7</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">8번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">8</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">9번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">9</span>
											</div>
										</div>
									</li>
									<li>
										<div class="main">
											<strong class="subject"> <a href="#">10번공지</a>
											</strong>
											<div class="auth-info text-right">
												<span class="time">2022-11-27 17:33</span> <a href="#">admin</a>
											</div>
											<div class="count">
												<span class="point">10</span>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<br>
					</div>
				</table>
			</div>
			<div class="row tm-row tm-mt-100 tm-mb-75 text-center">
				<div class="tm-paging">
					<nav class="tm-paging-nav">
						<ul>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link"><<</a></li>
							<li class="tm-paging-item active"><a href="#"
								class="mb-2 tm-btn tm-paging-link">1</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">2</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">3</a></li>
							<li class="tm-paging-item"><a href="#"
								class="mb-2 tm-btn tm-paging-link">4</a></li>
							<li class="tm-paging-item active"><a href="#"
								class="mb-2 tm-btn tm-paging-link">>></a></li>
						</ul>
					</nav>
				</div>
			</div>
			<%@ include file="../includes/footer.jsp"%>
		</main>
	</div>
	<script src="/resources/mem_js/js/jquery.min.js"></script>
	<script src="/resources/mem_js/js/templatemo-script.js"></script>
</body>
</html>