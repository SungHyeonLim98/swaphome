<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page session="false" %>

<div class='pull-right'>
	<ul class="pagination justify-content-center mt-4">

		<c:if test="${pageMaker.prev}">
			<li class="page-item"
				><a class="page-link" aria-label="Previous" href="${pageMaker.startPage -1}">
					<span aria-hidden="true">&laquo;</span>
        			<span class="sr-only">Previous</span>
				</a></li>
		</c:if>

		<c:forEach var="num" begin="${pageMaker.startPage}"
			end="${pageMaker.endPage}">
			<li class="page-item ${pageMaker.cri.pagenum == num ? "active":""}">
				<a class="page-link" href="${num}"> ${num}</a>
			</li>
		</c:forEach>

		<c:if test="${pageMaker.next}">
			<li class="page-item">
				<a class="page-link" href="${pageMaker.endPage+1}" aria-label="Next">
					 <span aria-hidden="true">&raquo;</span>
       				 <span class="sr-only">Next</span>
				</a>
			</li>
		</c:if>

	</ul>
</div>