<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SWAP Home-Admin | 게시글작성</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <%@ include file="../includes/header.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><b>게시글 작성</b></h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
          <!-- /.col -->
          <div class="col-md-9">
          	<form role="form" action="/admin/boardRegister" method="post">
            <div class="card card-primary card-outline">
              <!-- /.card-header -->
              <div class="card-body">
                <div class="form-group">
                    <select name="category" class="from-control" style="margin-bottom: 15px; padding: 5px 7px 3px 7px; font-size:15px;">
                      <option hidden selected>게시글 선택</option>
                      <option>공지사항</option>
                      <option>활동 게시판</option>
                      <option>홍보 게시판</option>
                    </select>
                  <input type='hidden' name='writer' value='Admin'>
                  <input name='title' class="form-control" placeholder="제목:">
                </div>
                <div class="form-group">
                  <div class="note-editor note-frame card">
                    <div class="note-dropzone">
                      <div class="note-dropzone-message"></div>
                    </div>
                    <!--툴바-->
                    <div class="note-toolbar card-header" role="toolbar">
                      <!--본문 글씨 스타일 변경-->
                      <div class="note-btn-group btn-group note-style">
                        <div class="note-btn-group btn-group">
                          <button type="button" class="note-btn btn btn-light btn-sm dropdown-toggle" 
                          tabindex="-1" data-toggle="dropdown" title aria-label="Style" 
                          data-original-title="Style" aria-expanded="false">
                          <i class="note-icon-magic"></i>
                          </button>
                          <div class="note-dropdown-menu dropdown-menu dropdown-style" role="list"
                          aria-label="Style" style="position: absolute; transform:translate3d(0px, 32px, 0px);"
                          x-placement="bottom-start">
                            <a class="dropdown-item" href="#" data-value="p" role="listitem" aria-label="p">
                              <p>Normal</p>
                            </a>
                            <a class="dropdown-item" href="#" data-value="blockquote" role="listitem" aria-label="blockquote">
                              <blockquote class="blockquote">blockquote</blockquote>
                            </a>
                            <a class="dropdown-item" href="#" data-value="pre" role="listitem" aria-label="pre">
                              <pre>Code</pre>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h1" role="listitem" aria-label="h1">
                              <h1>header 1</h1>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h2" role="listitem" aria-label="h2">
                              <h2>header 2</h2>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h3" role="listitem" aria-label="h3">
                              <h3>header 3</h3>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h4" role="listitem" aria-label="h4">
                              <h4>header 4</h4>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h5" role="listitem" aria-label="h5">
                              <h5>header 5</h5>
                            </a>
                            <a class="dropdown-item" href="#" data-value="h6" role="listitem" aria-label="h6">
                              <h6>header 6</h6>
                            </a>
                          </div>
                        </div>
                      </div> <!--여기까지 본문 글씨 스타일 변경-->

                      <!--글씨 두껍게, 밑줄, 변경사항 삭제-->
                      <div class="note-btn-group btn-group note-font">
                        <button type="button" class="note-btn btn btn-light btn-sm note-btn-bold" 
                        tabindex="-1" title aria-label="Bold (CTRL+B)" 
                        data-original-title="Bold (CTRL+B)">
                          <i class="note-icon-bold"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm note-btn-underline" 
                        tabindex="-1" title aria-label="Underline (CTRL+U)" 
                        data-original-title="Underline (CTRL+U)">
                          <i class="note-icon-underline"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm" 
                        tabindex="-1" title aria-label="Remove Font Style (CTRL+\)" 
                        data-original-title="Remove Font Style (CTRL+\)">
                          <i class="note-icon-eraser"></i>
                        </button>
                      </div> <!--여기까지 글씨 두껍게, 밑줄, 변경사항 삭제-->

                      <!--글씨 색깔-->
                      <div class="note-btn-group btn-group note-color note-color-all">
                        <button type="button" class="note-btn btn btn-light btn-sm note-current-color-button"
                        tabindex="-1" title aria-label="Recent Color" data-backcolor="#FFFF00"
                        data-forecolor="#000000">
                          <i class="note-icon-font note-recent-color" 
                          style="background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm dropdown-toggle"
                        tabindex="-1" data-toggle="dropdown" title aria-label="More Color" data-original-title="More Color"
                        aria-expanded="true">
                        </button>
                        <div class="note-dropdown-menu dropdown-menu" role="list" 
                        style="position: absolute; transform: translate3d(16px, 32px, 0px); top: 0px; left: 0px; 
                        will-change: transform;" x-placement="bottom-start">
                          <!--배경색 시작-->
                          <div class="note-palette">
                            <div class="note-palette-title">Background Color</div>
                            <div>
                              <button type="button" class="note-color-reset btn btn-light btn-default"
                              data-event="backColor" data-value="transparent">Transparent</button>
                            </div>
                            <div class="note-holder" data-event="backColor">
                              <div class="note-color-palette">
                                <!--배경색 1-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#000000"
                                  data-event="backColor" data-value="#000000" title aria-label="Black" data-toggle="button"
                                  tabindex="-1" data-original-title="Black"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#424242"
                                  data-event="backColor" data-value="#424242" title aria-label="Tundora" data-toggle="button"
                                  tabindex="-1" data-original-title="Tundora"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#636363"
                                  data-event="backColor" data-value="#636363" title aria-label="Dove Gray" data-toggle="button"
                                  tabindex="-1" data-original-title="Dove Gray"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9c9c94"
                                  data-event="backColor" data-value="#9c9c94" title aria-label="Star Dust" data-toggle="button"
                                  tabindex="-1" data-original-title="Star Dust"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cec6ce"
                                  data-event="backColor" data-value="#cec6ce" title aria-label="Pale Slate" data-toggle="button"
                                  tabindex="-1" data-original-title="Pale Slate"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#efefef"
                                  data-event="backColor" data-value="#efefef" title aria-label="Gallery" data-toggle="button"
                                  tabindex="-1" data-original-title="Gallery"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#f7f7f7"
                                  data-event="backColor" data-value="#f7f7f7" title aria-label="Alabaster" data-toggle="button"
                                  tabindex="-1" data-original-title="Alabaster"></button>
                                </div>
                                <!--배경색 2-->                                
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ff0000"
                                  data-event="backColor" data-value="#ff0000" title aria-label="Red" data-toggle="button"
                                  tabindex="-1" data-original-title="Red"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ff9c00"
                                  data-event="backColor" data-value="#ff9c00" title aria-label="Orange Peel" data-toggle="button"
                                  tabindex="-1" data-original-title="Orange Peel"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffff00"
                                  data-event="backColor" data-value="#ffff00" title aria-label="Yellow" data-toggle="button"
                                  tabindex="-1" data-original-title="Yellow"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#00ff00"
                                  data-event="backColor" data-value="#00ff00" title aria-label="Green" data-toggle="button"
                                  tabindex="-1" data-original-title="Green"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#00ffff"
                                  data-event="backColor" data-value="#00ffff" title aria-label="Cyan" data-toggle="button"
                                  tabindex="-1" data-original-title="Cyan"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#0000ff"
                                  data-event="backColor" data-value="#0000ff" title aria-label="Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9c00ff"
                                  data-event="backColor" data-value="#9c00ff" title aria-label="Electric Violet" data-toggle="button"
                                  tabindex="-1" data-original-title="Electric Violet"></button>
                                </div>
                                <!--배경색 3-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#e7c6ce"
                                  data-event="backColor" data-value="#e7c6ce" title aria-label="Azalea" data-toggle="button"
                                  tabindex="-1" data-original-title="Azalea"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffe7ce"
                                  data-event="backColor" data-value="#ffe7ce" title aria-label="Karry" data-toggle="button"
                                  tabindex="-1" data-original-title="Karry"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffefc6"
                                  data-event="backColor" data-value="#ffefc6" title aria-label="Egg White" data-toggle="button"
                                  tabindex="-1" data-original-title="Egg White"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#d6efd6"
                                  data-event="backColor" data-value="#d6efd6" title aria-label="Zanah" data-toggle="button"
                                  tabindex="-1" data-original-title="Zanah"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cedee7"
                                  data-event="backColor" data-value="#cedee7" title aria-label="Botticelli" data-toggle="button"
                                  tabindex="-1" data-original-title="Botticelli"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cee7f7"
                                  data-event="backColor" data-value="#cee7f7" title aria-label="Tropical Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Tropical Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#d6d6e7"
                                  data-event="backColor" data-value="#d6d6e7" title aria-label="Mischka" data-toggle="button"
                                  tabindex="-1" data-original-title="Mischka"></button>
                                </div>
                                <!--배경색 4-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#e79c9c"
                                  data-event="backColor" data-value="#e79c9c" title aria-label="Tonys Pink" data-toggle="button"
                                  tabindex="-1" data-original-title="Tonys Pink"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffc69c"
                                  data-event="backColor" data-value="#ffc69c" title aria-label="Peach Orange" data-toggle="button"
                                  tabindex="-1" data-original-title="Peach Orange"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffe79c"
                                  data-event="backColor" data-value="#ffe79c" title aria-label="Cream Brulee" data-toggle="button"
                                  tabindex="-1" data-original-title="Cream Brulee"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b5d6a5"
                                  data-event="backColor" data-value="#b5d6a5" title aria-label="Sprout" data-toggle="button"
                                  tabindex="-1" data-original-title="Sprout"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#a5c6ce"
                                  data-event="backColor" data-value="#a5c6ce" title aria-label="Casper" data-toggle="button"
                                  tabindex="-1" data-original-title="Casper"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9cc6ef"
                                  data-event="backColor" data-value="#9cc6ef" title aria-label="Perano" data-toggle="button"
                                  tabindex="-1" data-original-title="Perano"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b5a5d6"
                                  data-event="backColor" data-value="#b5a5d6" title aria-label="Cold Purple" data-toggle="button"
                                  tabindex="-1" data-original-title="Cold Purple"></button>
                                </div>
                                <!--배경색 5-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#E76363"
                                  data-event="backColor" data-value="#E76363" title aria-label="Mandy" data-toggle="button"
                                  tabindex="-1" data-original-title="Mandy"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#f7ad6b"
                                  data-event="backColor" data-value="#f7ad6b" title aria-label="Rajah" data-toggle="button"
                                  tabindex="-1" data-original-title="Rajah"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffd663"
                                  data-event="backColor" data-value="#ffd663" title aria-label="Dandelion" data-toggle="button"
                                  tabindex="-1" data-original-title="Dandelion"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#94bd7b"
                                  data-event="backColor" data-value="#94bd7b" title aria-label="Olivine" data-toggle="button"
                                  tabindex="-1" data-original-title="Olivine"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#73a5ad"
                                  data-event="backColor" data-value="#73a5ad" title aria-label="Gulf Stream" data-toggle="button"
                                  tabindex="-1" data-original-title="Gulf Stream"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#6badde"
                                  data-event="backColor" data-value="#6badde" title aria-label="Viking" data-toggle="button"
                                  tabindex="-1" data-original-title="Viking"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#8c7bc6"
                                  data-event="backColor" data-value="#8c7bc6" title aria-label="Blue Marguerite" data-toggle="button"
                                  tabindex="-1" data-original-title="Blue Marguerite"></button>
                                </div>
                                <!--배경색 6-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ce0000"
                                  data-event="backColor" data-value="#ce0000" title aria-label="Guardsman Red" data-toggle="button"
                                  tabindex="-1" data-original-title="Guardsman Red"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#e79439"
                                  data-event="backColor" data-value="#e79439" title aria-label="Fire Bush" data-toggle="button"
                                  tabindex="-1" data-original-title="Fire Bush"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#efc631"
                                  data-event="backColor" data-value="#efc631" title aria-label="Golden Dream" data-toggle="button"
                                  tabindex="-1" data-original-title="Golden Dream"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#6ba54a"
                                  data-event="backColor" data-value="#6ba54a" title aria-label="Chelsea Cucumber" data-toggle="button"
                                  tabindex="-1" data-original-title="Chelsea Cucumber"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#4a7b8c"
                                  data-event="backColor" data-value="#4a7b8c" title aria-label="Smalt Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Smalt Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#3984c6"
                                  data-event="backColor" data-value="#3984c6" title aria-label="Boston Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Boston Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#634aa5"
                                  data-event="backColor" data-value="#634aa5" title aria-label="Butterfly Bush" data-toggle="button"
                                  tabindex="-1" data-original-title="Butterfly Bush"></button>
                                </div>
                                <!--배경색 7-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#9c0000"
                                  data-event="backColor" data-value="#9c0000" title aria-label="Sangria" data-toggle="button"
                                  tabindex="-1" data-original-title="Sangria"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b56308"
                                  data-event="backColor" data-value="#b56308" title aria-label="Mai Tai" data-toggle="button"
                                  tabindex="-1" data-original-title="Mai Tai"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#bd9400"
                                  data-event="backColor" data-value="#bd9400" title aria-label="Buddha Gold" data-toggle="button"
                                  tabindex="-1" data-original-title="Buddha Gold"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#397b21"
                                  data-event="backColor" data-value="#397b21" title aria-label="Forest Green" data-toggle="button"
                                  tabindex="-1" data-original-title="Forest Green"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#104a5a"
                                  data-event="backColor" data-value="#104a5a" title aria-label="Eden" data-toggle="button"
                                  tabindex="-1" data-original-title="Eden"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#085294"
                                  data-event="backColor" data-value="#085294" title aria-label="Venice Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Venice Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#311873"
                                  data-event="backColor" data-value="#311873" title aria-label="Meteorite" data-toggle="button"
                                  tabindex="-1" data-original-title="Meteorite"></button>
                                </div>
                                <!--배경색 8-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#630000"
                                  data-event="backColor" data-value="#630000" title aria-label="Rosewood" data-toggle="button"
                                  tabindex="-1" data-original-title="Rosewood"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#7b3900"
                                  data-event="backColor" data-value="#7b3900" title aria-label="Cinnamon" data-toggle="button"
                                  tabindex="-1" data-original-title="Cinnamon"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#846300"
                                  data-event="backColor" data-value="#846300" title aria-label="Olive" data-toggle="button"
                                  tabindex="-1" data-original-title="Olive"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#295218"
                                  data-event="backColor" data-value="#295218" title aria-label="Parsley" data-toggle="button"
                                  tabindex="-1" data-original-title="Parsley"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#083139"
                                  data-event="backColor" data-value="#083139" title aria-label="Tiber" data-toggle="button"
                                  tabindex="-1" data-original-title="Tiber"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#003163"
                                  data-event="backColor" data-value="#003163" title aria-label="Midnight Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Midnight Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#21104a"
                                  data-event="backColor" data-value="#21104a" title aria-label="Valentino" data-toggle="button"
                                  tabindex="-1" data-original-title="Valentino"></button>
                                </div>
                              </div>
                            </div>
                            <div>
                              <button type="button" class="note-color-select btn btn-light btn-default"
                              data-event="openPalette" data-value="backColorPicker-16681453933071">Select
                              </button>
                              <input type="color" id="backColorPicker-16681453933071" class="note-btn note-color-select-btn"
                              value="#FFFF00" data-event="backColorPalette-16681453933071">
                            </div>
                            <div class="note-holder-custom" id="backColorPalette-16681453933071" data-event="backColor">
                              <div class="note-color-palette">
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="backColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                </div>
                              </div>
                            </div>
                          </div>

                          <!--글자색 시작-->
                          <div class="note-palette">
                            <div class="note-palette-title">Text Color</div>
                            <div>
                              <button type="button" class="note-color-reset btn btn-light btn-default"
                              data-event="removeFormat" data-value="foreColor">Reset to default</button>
                            </div>
                            <div class="note-holder" data-event="foreColor">
                              <!--글자색-->
                              <div class="note-color-palette">
                                <!--글자색 1-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#000000"
                                  data-event="foreColor" data-value="#000000" title aria-label="Black" data-toggle="button"
                                  tabindex="-1" data-original-title="Black"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#424242"
                                  data-event="foreColor" data-value="#424242" title aria-label="Tundora" data-toggle="button"
                                  tabindex="-1" data-original-title="Tundora"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#636363"
                                  data-event="foreColor" data-value="#636363" title aria-label="Dove Gray" data-toggle="button"
                                  tabindex="-1" data-original-title="Dove Gray"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9c9c94"
                                  data-event="foreColor" data-value="#9c9c94" title aria-label="Star Dust" data-toggle="button"
                                  tabindex="-1" data-original-title="Star Dust"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cec6ce"
                                  data-event="foreColor" data-value="#cec6ce" title aria-label="Pale Slate" data-toggle="button"
                                  tabindex="-1" data-original-title="Pale Slate"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#efefef"
                                  data-event="foreColor" data-value="#efefef" title aria-label="Gallery" data-toggle="button"
                                  tabindex="-1" data-original-title="Gallery"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#f7f7f7"
                                  data-event="foreColor" data-value="#f7f7f7" title aria-label="Alabaster" data-toggle="button"
                                  tabindex="-1" data-original-title="Alabaster"></button>
                                </div>
                                <!--글자색 2-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ff0000"
                                  data-event="foreColor" data-value="#ff0000" title aria-label="Red" data-toggle="button"
                                  tabindex="-1" data-original-title="Red"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ff9c00"
                                  data-event="foreColor" data-value="#ff9c00" title aria-label="Orange Peel" data-toggle="button"
                                  tabindex="-1" data-original-title="Orange Peel"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffff00"
                                  data-event="foreColor" data-value="#ffff00" title aria-label="Yellow" data-toggle="button"
                                  tabindex="-1" data-original-title="Yellow"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#00ff00"
                                  data-event="foreColor" data-value="#00ff00" title aria-label="Green" data-toggle="button"
                                  tabindex="-1" data-original-title="Green"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#00ffff"
                                  data-event="foreColor" data-value="#00ffff" title aria-label="Cyan" data-toggle="button"
                                  tabindex="-1" data-original-title="Cyan"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#0000ff"
                                  data-event="foreColor" data-value="#0000ff" title aria-label="Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9c00ff"
                                  data-event="foreColor" data-value="#9c00ff" title aria-label="Electric Violet" data-toggle="button"
                                  tabindex="-1" data-original-title="Electric Violet"></button>
                                </div>
                                <!--글자색 3-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#e7c6ce"
                                  data-event="foreColor" data-value="#e7c6ce" title aria-label="Azalea" data-toggle="button"
                                  tabindex="-1" data-original-title="Azalea"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffe7ce"
                                  data-event="foreColor" data-value="#ffe7ce" title aria-label="Karry" data-toggle="button"
                                  tabindex="-1" data-original-title="Karry"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffefc6"
                                  data-event="foreColor" data-value="#ffefc6" title aria-label="Egg White" data-toggle="button"
                                  tabindex="-1" data-original-title="Egg White"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#d6efd6"
                                  data-event="foreColor" data-value="#d6efd6" title aria-label="Zanah" data-toggle="button"
                                  tabindex="-1" data-original-title="Zanah"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cedee7"
                                  data-event="foreColor" data-value="#cedee7" title aria-label="Botticelli" data-toggle="button"
                                  tabindex="-1" data-original-title="Botticelli"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#cee7f7"
                                  data-event="foreColor" data-value="#cee7f7" title aria-label="Tropical Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Tropical Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#d6d6e7"
                                  data-event="foreColor" data-value="#d6d6e7" title aria-label="Mischka" data-toggle="button"
                                  tabindex="-1" data-original-title="Mischka"></button>
                                </div>
                                <!--글자색 4-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#e79c9c"
                                  data-event="foreColor" data-value="#e79c9c" title aria-label="Tonys Pink" data-toggle="button"
                                  tabindex="-1" data-original-title="Tonys Pink"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffc69c"
                                  data-event="foreColor" data-value="#ffc69c" title aria-label="Peach Orange" data-toggle="button"
                                  tabindex="-1" data-original-title="Peach Orange"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffe79c"
                                  data-event="foreColor" data-value="#ffe79c" title aria-label="Cream Brulee" data-toggle="button"
                                  tabindex="-1" data-original-title="Cream Brulee"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b5d6a5"
                                  data-event="foreColor" data-value="#b5d6a5" title aria-label="Sprout" data-toggle="button"
                                  tabindex="-1" data-original-title="Sprout"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#a5c6ce"
                                  data-event="foreColor" data-value="#a5c6ce" title aria-label="Casper" data-toggle="button"
                                  tabindex="-1" data-original-title="Casper"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#9cc6ef"
                                  data-event="foreColor" data-value="#9cc6ef" title aria-label="Perano" data-toggle="button"
                                  tabindex="-1" data-original-title="Perano"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b5a5d6"
                                  data-event="foreColor" data-value="#b5a5d6" title aria-label="Cold Purple" data-toggle="button"
                                  tabindex="-1" data-original-title="Cold Purple"></button>
                                </div>
                                <!--글자색 5-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#E76363"
                                  data-event="foreColor" data-value="#E76363" title aria-label="Mandy" data-toggle="button"
                                  tabindex="-1" data-original-title="Mandy"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#f7ad6b"
                                  data-event="foreColor" data-value="#f7ad6b" title aria-label="Rajah" data-toggle="button"
                                  tabindex="-1" data-original-title="Rajah"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffd663"
                                  data-event="foreColor" data-value="#ffd663" title aria-label="Dandelion" data-toggle="button"
                                  tabindex="-1" data-original-title="Dandelion"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#94bd7b"
                                  data-event="foreColor" data-value="#94bd7b" title aria-label="Olivine" data-toggle="button"
                                  tabindex="-1" data-original-title="Olivine"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#73a5ad"
                                  data-event="foreColor" data-value="#73a5ad" title aria-label="Gulf Stream" data-toggle="button"
                                  tabindex="-1" data-original-title="Gulf Stream"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#6badde"
                                  data-event="foreColor" data-value="#6badde" title aria-label="Viking" data-toggle="button"
                                  tabindex="-1" data-original-title="Viking"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#8c7bc6"
                                  data-event="foreColor" data-value="#8c7bc6" title aria-label="Blue Marguerite" data-toggle="button"
                                  tabindex="-1" data-original-title="Blue Marguerite"></button>
                                </div>
                                <!--글자색 6-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ce0000"
                                  data-event="foreColor" data-value="#ce0000" title aria-label="Guardsman Red" data-toggle="button"
                                  tabindex="-1" data-original-title="Guardsman Red"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#e79439"
                                  data-event="foreColor" data-value="#e79439" title aria-label="Fire Bush" data-toggle="button"
                                  tabindex="-1" data-original-title="Fire Bush"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#efc631"
                                  data-event="foreColor" data-value="#efc631" title aria-label="Golden Dream" data-toggle="button"
                                  tabindex="-1" data-original-title="Golden Dream"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#6ba54a"
                                  data-event="foreColor" data-value="#6ba54a" title aria-label="Chelsea Cucumber" data-toggle="button"
                                  tabindex="-1" data-original-title="Chelsea Cucumber"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#4a7b8c"
                                  data-event="foreColor" data-value="#4a7b8c" title aria-label="Smalt Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Smalt Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#3984c6"
                                  data-event="foreColor" data-value="#3984c6" title aria-label="Boston Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Boston Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#634aa5"
                                  data-event="foreColor" data-value="#634aa5" title aria-label="Butterfly Bush" data-toggle="button"
                                  tabindex="-1" data-original-title="Butterfly Bush"></button>
                                </div>
                                <!--글자색 7-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#9c0000"
                                  data-event="foreColor" data-value="#9c0000" title aria-label="Sangria" data-toggle="button"
                                  tabindex="-1" data-original-title="Sangria"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#b56308"
                                  data-event="foreColor" data-value="#b56308" title aria-label="Mai Tai" data-toggle="button"
                                  tabindex="-1" data-original-title="Mai Tai"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#bd9400"
                                  data-event="foreColor" data-value="#bd9400" title aria-label="Buddha Gold" data-toggle="button"
                                  tabindex="-1" data-original-title="Buddha Gold"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#397b21"
                                  data-event="foreColor" data-value="#397b21" title aria-label="Forest Green" data-toggle="button"
                                  tabindex="-1" data-original-title="Forest Green"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#104a5a"
                                  data-event="foreColor" data-value="#104a5a" title aria-label="Eden" data-toggle="button"
                                  tabindex="-1" data-original-title="Eden"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#085294"
                                  data-event="foreColor" data-value="#085294" title aria-label="Venice Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Venice Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#311873"
                                  data-event="foreColor" data-value="#311873" title aria-label="Meteorite" data-toggle="button"
                                  tabindex="-1" data-original-title="Meteorite"></button>
                                </div>
                                <!--글자색 8-->
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#630000"
                                  data-event="foreColor" data-value="#630000" title aria-label="Rosewood" data-toggle="button"
                                  tabindex="-1" data-original-title="Rosewood"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#7b3900"
                                  data-event="foreColor" data-value="#7b3900" title aria-label="Cinnamon" data-toggle="button"
                                  tabindex="-1" data-original-title="Cinnamon"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#846300"
                                  data-event="foreColor" data-value="#846300" title aria-label="Olive" data-toggle="button"
                                  tabindex="-1" data-original-title="Olive"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#295218"
                                  data-event="foreColor" data-value="#295218" title aria-label="Parsley" data-toggle="button"
                                  tabindex="-1" data-original-title="Parsley"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#083139"
                                  data-event="foreColor" data-value="#083139" title aria-label="Tiber" data-toggle="button"
                                  tabindex="-1" data-original-title="Tiber"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#003163"
                                  data-event="foreColor" data-value="#003163" title aria-label="Midnight Blue" data-toggle="button"
                                  tabindex="-1" data-original-title="Midnight Blue"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#21104a"
                                  data-event="foreColor" data-value="#21104a" title aria-label="Valentino" data-toggle="button"
                                  tabindex="-1" data-original-title="Valentino"></button>
                                </div>
                              </div>
                            </div>
                            <div>
                              <button type="button" class="note-color-select btn btn-light btn-default"
                              data-event="openPalette" data-value="foreColorPicker-16681453933071">Select
                              </button>
                              <input type="color" id="foreColorPicker-16681453933071" class="note-btn note-color-select-btn"
                              value="#000000" data-event="foreColorPalette-16681453933071">
                            </div>
                            <div class="note-holder-custom" id="foreColorPalette-16681453933071" data-event="foreColor">
                              <div class="note-color-palette">
                                <div class="note-color-row">
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                  <button type="button" class="note-color-btn" style="background-color:#ffffff"
                                  data-event="foreColor" data-value="#ffffff" title aria-label="#ffffff" data-toggle="button"
                                  tabindex="-1" data-original-title="#ffffff"></button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div> <!--여기까지 글씨 색깔-->

                      <!--기호넣기-->
                      <div class="note-btn-group btn-group note-para">
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1" 
                        title aria-label="Unordered list (CTRL+SHIFT+NUM7)" data-original-title="Unordered list (CTRL+SHIFT+NUM7)">
                          <i class="note-icon-unorderedlist"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1" 
                        title aria-label="Ordered list (CTRL+SHIFT+NUM8)" data-original-title="Ordered list (CTRL+SHIFT+NUM8)">
                          <i class="note-icon-orderedlist"></i>
                        </button>
                      </div> <!--여기까지 기호넣기-->

                      <!--정렬-->
                      <div class="note-btn-group btn-group note-para">
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1"
                        title aria-label="Align left (CTRL+SHIFT+L)" data-original-title="Align left (CTRL+SHIFT+L)">
                          <i class="note-icon-align-left"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1"
                        title aria-label="Align center (CTRL+SHIFT+E)" data-original-title="Align center (CTRL+SHIFT+E)">
                          <i class="note-icon-align-center"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1"
                        title aria-label="Align right (CTRL+SHIFT+R)" data-original-title="Align right (CTRL+SHIFT+R)">
                          <i class="note-icon-align-right"></i>
                        </button>
                        <button type="button" class="note-btn btn btn-light btn-sm" tabindex="-1"
                        title aria-label="Justify full (CTRL+SHIFT+J)" data-original-title="Justify full (CTRL+SHIFT+J)">
                          <i class="note-icon-align-justify"></i>
                        </button>
                      </div> <!--여기까지 정렬-->
                    </div>
                    <textarea name='contents' id="compose-textarea" class="form-control" style="height: 300px;"></textarea>
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="btn btn-default btn-file" style='font-size:13px;'>
                    <i class="fas fa-paperclip"></i> 첨부파일
                    <input type="file" name="boardAttachedBtn">
                  </div>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                  <button type="button" style='font-size:15px;' class="btn btn-default"><i class="fas fa-pencil-alt"></i> 수정</button>
                  <button type="submit" style='font-size:15px;' class="btn btn-primary"><i class="far fa-envelope"></i> 전송</button>
                </div>
              </div>
              <!-- /.card-footer -->
            </div>
            </form>
            <!-- /.card -->
          </div>
          
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer no-print">
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
  <!-- /.content-wrapper -->
  <footer class="main-footer no-print">
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>
<!-- Summernote -->
<script src="/resources/plugins/summernote/summernote-bs4.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- Page specific script -->

</body>
</html>
