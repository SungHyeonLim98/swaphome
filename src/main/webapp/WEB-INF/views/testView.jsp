<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<head>

</head>
<body>
	<div class="container my-3">
		<h3>포스트 보기</h3>
		<table class="table table-bordered">
			<tr class="table-active">
				<td>순번</td>
				<td>포스트 제목</td>
				<td>발행일자</td>
			</tr>
			<tbody>
			<tr>
				<td>{{post.id}}</td>
				<td>{{post.subject}}</td>
				<td>{{post.posting_date}}</td>
			</tr>
			<tr class="table-active">
				<td colspan=3>내용</td>
			</tr>
			<tr>
				<td colspan=3><div id="content"></div>
					<script>
						var tmpStr = "{{post.content}}";
						tmpStr = tmpStr.replaceAll("&lt;", "<");
						tmpStr = tmpStr.replaceAll("&gt;", ">");
						tmpStr = tmpStr.replaceAll("&amp;lt;", "<");
						tmpStr = tmpStr.replaceAll("&amp;gt;", ">");
						tmpStr = tmpStr.replaceAll("&amp;nbsp;", " ");
						tmpStr = tmpStr.replaceAll("&amp;amp;", "&");
						document.getElementById('content').innerHTML=tmpStr;
					</script>
				</td>
			</tr>
			</tbody>
		</table>
		<div class="wrapper">
			<input type="button" value="목록으로">
			<input type="button" value="수정하기">
		</div>
	</div>
</body>