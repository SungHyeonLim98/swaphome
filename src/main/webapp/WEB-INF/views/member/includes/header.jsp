<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<header class="tm-header" id="tm-header">
	<div class="tm-header-wrapper">
		<button class="navbar-toggler" type="button"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>
		<div class="tm-site-header">
			<div class="mb-3 mx-auto tm-site-logo">
				<i class="fas fa-times fa-2x"></i>
			</div>
			<h1 class="text-center">S.W.A.P</h1>
		</div>
		<nav class="tm-nav" id="tm-nav">
			<ul>
				<li class="tm-nav-item"><a href="/member/board/activityBoard"
					class="tm-nav-link"> <i class="fas fa-users"></i> 활동 게시판
				</a></li>
				<li class="tm-nav-item"><a href="/member/board/promoBoard"
					class="tm-nav-link"> <i class="fas fa-images"></i> 홍보 게시판
				</a></li>
				<li class="tm-nav-item"><a href="/member/board/noticeBoard"
					class="tm-nav-link"> <i class="fas fa-star-half-alt"></i> 공지사항
				</a></li>
				<li class="tm-nav-item"><a href="/member/user/register"
					class="tm-nav-link"><i class="fas fa-user-plus"></i>가입 신청서</a></li>
				<li class="tm-nav-item"><a href="#" class="tm-nav-link"> <i
						class="far fa-calendar-alt"></i> 일정 안내
				</a></li>
				<li class="tm-nav-item active"><a href="/member/user/note"
					class="tm-nav-link"> <i class="fas fa-envelope"></i> 쪽 지
				</a></li>
			</ul>
		</nav>
		<p class="tm-mb-40 text-white">
			바로가기 : <br> 학교, 학과, 포털사이트를 갈 수 있어요
		</p>
		<div class="tm-mb-65">
			<a href="https://www.du.ac.kr/KR/index.do" class="tm-social-link" target='_blank'> <i
				class="fas fa-school tm-social-icon"></i>
			</a> <a href="https://dept.du.ac.kr/computer/Main.do" class="tm-social-link" target='_blank'> <i
				class="fas fa-desktop tm-social-icon"></i>
			</a> <a href="https://portal.du.ac.kr/login.jsp" class="tm-social-link" target='_blank'> <i
				class="fas fa-graduation-cap tm-social-icon"></i>
			</a>
		</div>
		<p class="tm-mb-80 pr-5 text-white"></p>
	</div>
</header>