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
			<form role="form" action="/member/register" method="post">
				<div class="row tm-row tm-mb-120">
					<div class="col-lg-5 tm-contact-left">
						<div class="form-group row mb-4">
							<label for="name"
								class="col-sm-3 col-form-label text-right tm-color-primary">이름</label>
							<div class="col-sm-9">
								<input type="text" class="form-control mr-0 ml-auto" name='name' maxlength="5"
									required onkeyup="this.value=this.value.replace(/[^-ㄱ-힣a-zA-Z]/g,'');"/>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="hbun"
								class="col-sm-3 col-form-label text-right tm-color-primary">학번</label>
							<div class="col-sm-9">
								<input type="text" class="form-control mr-0 ml-auto" name="gnum" maxlength="7"
									required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="grade"
								class="col-sm-3 col-form-label text-right tm-color-primary">학년</label>
							<div class="col-sm-9">
								<select class="select text-center form-control" name='grade'>
									<option value="selectGrade" hidden>---</option>
									<option value=1>1학년</option>
									<option value=2>2학년</option>
									<option value=3>3학년</option>
									<option value=4>4학년</option>
								</select>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="class"
								class="col-sm-3 col-form-label text-right tm-color-primary">반</label>
							<div class="col-sm-9">
								<select class="select text-center form-control" name='cls'>
									<option value="selectClass" hidden>---</option>
									<option value="A">A반</option>
									<option value="B">B반</option>
									<option value="C">C반</option>
									<option value="D">D반</option>
								</select>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="class"
								class="col-sm-3 col-form-label text-right tm-color-primary">학적</label>
							<div class="col-sm-9">
								<select name='academic' class="select text-center form-control">
									<option value="selectClass" hidden>---</option>
									<option value="재학">재학</option>
									<option value="휴학">휴학</option>
									<option value="졸업">졸업</option>
								</select>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="pnum"
								class="col-sm-3 col-form-label text-right tm-color-primary"><h6>전화번호</h6></label>
							<div class="col-md-9 tm-row row text-right ml-auto mr-0">
								<input type="text" style="width: 70px;" minlength="1"
									maxlength="3" class="form-control" id="hand1" name="hand1" required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>-
								<input type="text" style="width: 90px;" minlength="1"
									maxlength="4" class="form-control" id="hand2" name="hand2" required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>-
								<input type="text" style="width: 90px;" minlength="1"
									maxlength="4" class="form-control" id="hand3" name="hand3" required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>
								<input type="hidden" id="phone" name="phone">
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="snum"
								class="col-sm-3 col-form-label text-right tm-color-primary"><h6>주민번호</h6></label>
							<div class="col-sm-9 tm-row row text-right ml-auto mr-0">
								<input type="text" style="width: 215px;" minlength="6"
									maxlength="6" class="form-control" name="jumin1" required onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>-
								<input type="text" style="width: 35px;" maxlength="1"
									class="form-control" name="jumin2" required  onkeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/> <input
									type="hidden" id="regnum" name="regnum">
							</div>
						</div>

						<div class="form-group row mb-4">
							<label for="addr"
								class="col-sm-3 col-form-label text-right tm-color-primary">주소</label>
							<div class="col-sm-9">
								<textarea class="form-control mr-0 ml-auto" name="address" maxlength="40"
									id="addr" rows="5" required></textarea>
							</div>
						</div>
					</div>
					<div class="col-lg-7 tm-contact-right">
						<div class="form-group row mb-4">
							<label for="intro"
								class="col-sm-3 col-form-label text-right tm-color-primary">자기소개</label>
							<div class="col-sm-9">
								<textarea class="form-control mr-0 ml-auto" name="myself" maxlength="240"
									id="intro" rows="5" required></textarea>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="motive"
								class="col-sm-3 col-form-label text-right tm-color-primary">지원동기</label>
							<div class="col-sm-9">
								<textarea class="form-control mr-0 ml-auto" name="motive" maxlength="240"
									id="motive" rows="5" required></textarea>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="act"
								class="col-sm-3 col-form-label text-right tm-color-primary">동아리에서
								하고싶은 <br>활동
							</label>
							<div class="col-sm-9">
								<textarea class="form-control mr-0 ml-auto" name="action" maxlength="240"
									rows="5" required></textarea>
							</div>
						</div>
						<div class="form-group row mb-4">
							<label for="adventage"
								class="col-sm-3 col-form-label text-right tm-color-primary">자신의
								장점</label>
							<div class="col-sm-9">
								<textarea class="form-control mr-0 ml-auto" name="advantages" maxlength="240"
									rows="5" required></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="tm-prev-next-wrapper text-center tm-mt-55">
					<button type='submit' class="tm-btn tm-btn-primary tm-btn-small" onclick="dophone();doregnum()">전송</button>
					<button type='reset' class="tm-btn tm-btn-primary tm-btn-small">취소</button>
				</div>
			</form>
			<%@ include file="../includes/footer.jsp"%>
		</main>
	</div>
	<script>
		function dophone() {
			var isum = "";
			$('input[name*="hand"]').each(function() {

				isum += ($(this).val());
				isum += "-";

			});
			isum = isum.slice(0, 13);
			$("input[name=phone]").val(isum);
		}

		function doregnum() {
			var sum = "";
			$('input[name*="jumin"]').each(function() {

				sum += ($(this).val());
				sum += "-";

			});
			sum = sum.slice(0, 8);
			$("input[name=regnum]").val(sum);
		}
	</script>
	<script src="/resources/mem_js/js/jquery.min.js"></script>
	<script src="/resources/mem_js/js/templatemo-script.js"></script>
</body>
</html>