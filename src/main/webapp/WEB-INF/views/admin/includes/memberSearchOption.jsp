<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<div class="input-group">
	<select name='type'>
		<option selected value="N"
			<c:out value="${pageMaker.cri.type eq 'N'?'selected':''}" />>이름</option>
		<option value="G"
			<c:out value="${pageMaker.cri.type eq 'G'?'selected':''}" />>학번</option>
		<option value="R"
			<c:out value="${pageMaker.cri.type eq 'R'?'selected':''}" />>학년</option>
		<option value="C"
			<c:out value="${pageMaker.cri.type eq 'R'?'selected':''}" />>반</option>
	</select>
	<input type='text' name='keyword'
		value='<c:out value="${pageMaker.cri.keyword}"/>' />
	<input type='hidden' name='pagenum'
		value='<c:out value="${pageMaker.cri.pagenum}"/>' />
	<input type='hidden' name='amount'
		value='<c:out value="${pageMaker.cri.amount}"/>' />
	<button class='btn btn-primary'>검색</button>
</div>