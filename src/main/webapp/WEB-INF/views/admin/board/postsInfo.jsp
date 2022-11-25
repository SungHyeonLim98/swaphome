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
<title>AdminLTE 3 | Mailbox</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
</head>

<!-- Main Sidebar Container -->
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
							<h1>게시글 관리</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">게시글 관리</a></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-10">
						<div class="card card-primary card-outline">
							<div class="card-header">
								<div class="card-title">
									<button onclick="location.href='/admin/board/posting'" class="btn btn-primary"style="font-size:  15px;">
										<i class="fas fa-pencil-alt"> 글쓰기</i>
									</button>
								</div>
								<div class="card-tools">
									<!--작은 검색창-->
									<div class="input-group input-group">
										<input type="text" class="form-control" placeholder="검색"
											name="Search Request">
										<div class="input-group-append">
											<div class="btn btn-primary">
												<i class="fas fa-search"></i>
											</div>
										</div>
									</div>
									<!--/.작은 검색창-->
								</div>
								<!-- /.card-tools -->
							</div>
							<!-- /.card-header -->
							<div class="card-body p-0">
								<div class="table-responsive mailbox-messages">
									<table class="table table-hover table-striped">
										<!--작성된 게시글 선택-->
										<thead>
											<tr>
												<td class="mailbox">카테고리</td>
												<td class="mailbox" style="text-align: center;"><b>게시번호</b></td>
												<td class="mailbox" style="text-align: center;"><b>제목</b></td>
												<td class="mailbox" style="text-align: center;">내용</td>
												<td class="mailbox" style="text-align: center;">작성자</td>
												<td class="mailbox" style="text-align: center;">작성날짜</td>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list}" var="board">
												<tr class='move'
														id="<c:out value="${board.bno}"/>">
													<td><c:out value="${board.category}" /></td>
													<td><c:out value="${board.bno}" /></td>
													<td><c:out value="${board.title}" /></td>
													<td><c:out value="${board.contents}" /></td>
													<td><c:out value="${board.writer}" /></td>
													<td><fmt:formatDate pattern="yyyy-MM-dd"
															value="${board.updatedate}" /></td>
												</tr>
											</c:forEach>
										</tbody>
										<!--/.작성된 게시글 선택-->
									</table>
									<%@ include file="../includes/paging.jsp"%>
									<!-- /.table -->
								</div>
								<!-- /.mail-box-messages -->
							</div>
							<!-- /.card-body -->

						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer"> </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<form id='actionForm' action="/admin/board/postsInfo" method='get'>
		<input type='hidden' name='pagenum' value='${pageMaker.cri.pagenum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='type'
			value='<c:out value="${ pageMaker.cri.type }"/>'> <input
			type='hidden' name='keyword'
			value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	</form>

	<script>
  $(function () {
    //Enable check and uncheck all functionality
    $('.checkbox-toggle').click(function () {
      var clicks = $(this).data('clicks')
      if (clicks) {
        //Uncheck all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', false)
        $('.checkbox-toggle .far.fa-check-square').removeClass('fa-check-square').addClass('fa-square')
      } else {
        //Check all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', true)
        $('.checkbox-toggle .far.fa-square').removeClass('fa-square').addClass('fa-check-square')
      }
      $(this).data('clicks', !clicks)
    })

    //Handle starring for font awesome
    $('.mailbox-star').click(function (e) {
      e.preventDefault()
      //detect type
      var $this = $(this).find('a > i')
      var fa    = $this.hasClass('fa')

      //Switch states
      if (fa) {
        $this.toggleClass('fa-star')
        $this.toggleClass('fa-star-o')
      }
    })
  })
</script>

	<script>
	$(document).ready(
		function () {
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click",
			function (e) {
		
				e.preventDefault();
		
				console.log('click');
		
				actionForm.find("input[name='pagenum']")
					.val($(this).attr("href"));
				actionForm.submit();
			});
		
		$(".move").on("click",
			function (e) {
		
			var tr = $(this);
			var td = tr.children();
			var bno = "a" + td.eq(0).text();
				e.preventDefault();
				actionForm
					.append("<input type='hidden' name='bno' value='"
						+ $(this).attr("id")
						+ "'>");
				actionForm.attr("action", "/admin/board/postInfo");
				actionForm.submit();
			});
				
		var searchForm = $("#searchForm");

		$("#searchForm button").on(
			"click",
			function (e) {

				if (!searchForm.find("option:selected")
					.val()) {
					alert("검색종류를 선택하세요");
					return false;
				}

				if (!searchForm.find(
					"input[name='keyword']").val()) {
					alert("키워드를 입력하세요");
					return false;
				}

				searchForm.find("input[name='pageNum']")
					.val("1");
				e.preventDefault();

				searchForm.submit();
			});


		
		});

</script>
</body>
</html>

