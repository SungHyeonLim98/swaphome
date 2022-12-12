<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page session="false" %>

<div class='pull-right'>
	<ul class="pagination">

		<c:if test="${pageMaker.prev}">
			<li class="paginate_button previous"><a
				href="${pageMaker.startPage -1}">이전</a></li>
		</c:if>

		<c:forEach var="num" begin="${pageMaker.startPage}"
			end="${pageMaker.endPage}">
			<li class="paginate_button ${pageMaker.cri.pagenum == num ? "active":""}">
				<a href="${num}"> ${num}</a>
			</li>
		</c:forEach>

		<c:if test="${pageMaker.next}">
			<li class="paginate_button next"><a href="pageMaker.endPage+1">다음</a></li>
		</c:if>

	</ul>
</div>