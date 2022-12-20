<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html lang="ko">
<head>
<meta charset="utf-8">
<title>CKEditor</title>
<style>
.ck-editor__editable {
	height: 400px;
}

.ck-content {
	font-size: 12px;
}
</style>
<script src="/resources/mem_css/css/bootstrap.min.css"></script>
</head>
<body>
	<div class="container">
		<h3>포스트 작성하기</h3>
		<form name="frm_pw" method="POST" action="/admin/boardRegister">
			<div class="form-group">
				<label for="title">제목</label> <input type="text" name="title"
					class="form-control" placeholder="제목을 입력하세요">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea name="contents" id="editor" class="form-control"></textarea>

			</div>
			<input type="hidden" name="category" value="공지사항">
			<input type="hidden" name="writer" value="admin">
			<input type="submit" value="저장하기" class="btn btn-default">
		</form>
	</div>
	<textarea id="inputbox" class="test" cols="20" rows="10"></textarea>
<div><button id="preview">Preview</button></div>
<div id="result"></div>
  <script>

window.onload=function() {
 document.getElementById("preview").onclick=processText;
}

function processText() {
 var txtBox = document.getElementById("editor");
 var lines = txtBox.value.split("\n");

 // generate HTML version of text
 var resultString  = "<p>";
 for (var i = 0; i < lines.length; i++) {
   resultString += lines[i] + "<br />";
 }
 resultString += "</p>";

 // print out to page
 var   blk   = document.getElementById("result");
 blk.innerHTML  =  resultString; 
}

</script>

	<script src="/resources/ckeditor/build/ckeditor.js"></script>
	<script>
      ClassicEditor.create( document.querySelector( '#editor' ), {
    	  langauge: {ul: 'ko', content: 'ko'}
      } );
    </script>
</body>
</html>