<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page session="false" %>


<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
  </ul>
</nav>
<!--네비게이션 바 다 지우고 붙여넣으면 됨-->
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="#" class="brand-link">
    <span class="brand-text font-weight-light"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S.W.A.P Home
      </b>-Admin</span>
  </a>
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item">
          <a href="/admin/member/membersInfo" name="memberManagePageNav" class="nav-link">
            <i class="nav-icon fas fa-users"></i>
            <p>
              회원 정보 관리
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/admin/member/memberAllMessage" name="memberAlarmNav" class="nav-link">
            <i class="nav-icon far fa-envelope"></i>
            <p>
              회원 소식
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/admin/board/posting" name="boradManageNav" class="nav-link">
            <i class="nav-icon far fa-image"></i>
            <p>
              게시글 관리
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/admin/calendar" name="scheduleManegeNav" class="nav-link">
            <i class="nav-icon far fa-calendar-alt"></i>
            <p>
              일정 관리
            </p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>

<script src="/resources/plugins/jquery/jquery.min.js"></script>
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>
<script src="/resources/dist/js/demo.js"></script>
