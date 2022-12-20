<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!doctype html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
    <title>CKEditor</title>
    <style>
      .ck-editor__editable { height: 400px; }
      .ck-content { font-size: 12px; }
    </style>
  </head>
  <body>
    <h1>CKEditor</h1>
    <form action="" method="POST">
      <textarea name="text" id="editor"></textarea>
    <p><input type="submit" value="전송"></p>
    </form>
    <script src="/resources/ckeditor/build/ckeditor.js"></script>
    <script>
      ClassicEditor.create( document.querySelector( '#editor' ) );
    </script>
  </body>
</html>