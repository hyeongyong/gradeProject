<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%-- jstl-1.2.jar 파일 필요 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>쌍용교육센터 - 성적 관리 시스템</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<style>
/*----------정렬 관련----------*/
.right {
	text-align: right;
}

.left {
	text-align: left;
}

.center {
	text-align: center;
}

/*-------상단 네비게이션 관련-------*/
.navbar-static-top {
	background-color: #212C30;
	color: #ffffff;
}

/*-------사이드 네비게이션 관련-------*/
.logo {
	color: #000000
}
.navbar-header a {
	vertical-align: text-bottom;
}


.navbar-header span {
	vertical-align: middle;
	font-size: 1.1em;
	font-weight: bold;
}

.logo .avatar {
	text-align: center;
}

.logo .avatar img {
	width: 60%;
	border-radius: 100%;
	/* margin: 0 0 2em 0; */
	/*margin: top and bottom right and left */
	margin: 0.2em auto;
	border: solid 1px rgba(255, 255, 255, 0.25);
	background-color: rgba(255, 255, 255, 0.075);
}

.userInfo {
	text-align: center;
}

.logo .userInfo button {
	width: 80%;
	/*margin: top and bottom, right and left */
	margin: 0.5em auto;
}

/*--------컨텐츠 관련-------*/
.content h2 {
	margin-bottom: 0.5em;
}

/* -------테이블 관련------- */
.table {
	width: 100%;
	margin-top: 20px;
}

/*------배경색 관련---------*/
.bgColor01 {
	background-color: #F5F5F5;
}
.bgColor02 {
   background-color: #edf3fc;
}

.bgColorWhite {
	background-color: #FFFFFF;
}
/*---------popover------------*/
.popover{
    width: 200px;
}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div id="wrapper">
		
	<div id="wrapper">
		<!-- ######## Navigation 네비게이션 시작 ######## -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">


			<div class="navbar-header">
				<!-- ### 쌍용교육센터 로고 : index.jsp ### -->
				<a href="${pageContext.request.contextPath}/pages/index.jsp"> <img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png"></a>
				<span>성적 관리 시스템 v6.0</span>
			</div>



			<div class="navbar-default sidebar" role="navigation">
				<!-- ########### 사이드 바 시작 ########### -->
				<div class="sidebar-nav navbar-collapse">

					<!-- 현재 로그인한 유저 정보 표시부 -->
					<div class="logo">
						<div class="avatar">
							<img src="../resources/img/jenny.jpg">
						</div>

						<div class="userInfo">
							<span class="simple-text logo-normal" id="userId">로그인한 ID</span>

							<button class="btn btn-default btnInfo" id="">개인정보조회</button>
							<button class="btn btn-default btnLogout" id="">로그아웃</button>
						</div>

					</div>
					<ul class="nav" id="side-menu">
						<!-- 기초정보관리 시작 -->
						<li><a href="#"><i class="fa fa-table fa-fw"></i> 기초정보관리<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="tables.jsp">과정관리</a></li>
								<li><a href="tables02.jsp">과목관리</a></li>
								<li><a href="tables03.jsp">강의실관리</a></li>
								<li><a href="tables04.jsp">교재관리</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<!-- 기초정보관리 끝 -->

						<li><a href="tables05.jsp"><i class="fa fa-table fa-fw"></i>
								강사계정관리</a></li>
						<li><a href="tables06.jsp"><i class="fa fa-table fa-fw"></i>
								개설과정관리</a></li>
						<li><a href="tables07.jsp"><i class="fa fa-table fa-fw"></i>
								개설과목관리</a></li>

						<!-- 수강생관리 시작 -->
						<li><a href="tables08.jsp"><i class="fa fa-table fa-fw"></i>
								수강생관리</a></li>
						<!-- 수강생관리 끝 -->

						<li><a href="tables09.jsp"><i class="fa fa-table fa-fw"></i>
								성적조회<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="tables09-1.jsp">과목별 성적조회</a></li>
								<li><a href="tables09-2.jsp">수강생 성적조회</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
	</div>

		<div id="page-wrapper">

			<div class="row">
				<div class="" id="nav">
					<ul class="nav navbar-nav">
						<li><a
							href="${pageContext.request.contextPath}/pages/index.jsp">Home</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/pages/tables05.jsp">강사계정관리</a></li>
					</ul>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row content">
				<div class="col-lg-12">
					<h2>강사계정관리</h2>
					<div class="panel panel-default">
						<!-- <div class="panel-heading">과정 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="row">

								<div class="col-md-12 right">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#addInstructorModal">신규 강사 등록</button>
								</div>
							</div>

							<!-- <table width="100%" class="table table-striped table-bordered table-hover" id="tableCourse"> -->
							<table class="table table-bordered table-hover"
								id="tableOpenCourse">
								<thead>
									<tr class="bgColor01">
										<th class="center col-md-1">강사<br>아이디</th>
										<th class="center col-md-1">강사명</th>
										<th class="center col-md-4">강의가능과목</th>
										<th class="center col-md-2">전화번호</th>
										<th class="center col-md-1">삭제</th>
										<th class="center col-md-1">정보</th>
										<th class="center col-md-1">사진등록</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td class="center">I001</td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop1"
											data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/person-placeholder.jpg' style='width:60%;'><div>">김일조</a>
										</td>

										<td class="center">Java,Oracle,Jsp,Html</td>
										<td class="center">010-1111-1111</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#Instructor_Delete">삭제</button>
																								</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#Instructor_infoModify">수정</button>
											<button class="btn btn-defualt btn-primary btn-xs btnPwInit"
												data-toggle="modal" data-target="#Instructor_PwInit">PW초기화</button>
																								</td>
										<td class="center">
								
											<button class="btn btn-defualt btn-primary btn-xs btnPictureForm" data-toggle="modal" data-target="#pictureForm">사진등록</button>
											
												
										</td>
									</tr>
									<!-- <tr class="even gradeC">  -->
									<tr>
										<td class="center">I002</td>
										<td class="center"><a href="#" data-toggle="popover" data-placement="left" data-trigger="hover" data-html="true" class="pop1" 
  										data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/person-placeholder.jpg' style='width:60%;'><div>">서강준</a>
										</td>

										<td class="center">JSP,C+</td>
										<td class="center">010-2222-2222</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#Instructor_Delete">삭제</button>
												</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#Instructor_infoModify">수정</button>
											<button class="btn btn-defualt btn-primary btn-xs btnPwInit"
												data-toggle="modal" data-target="#Instructor_PwInit">PW초기화</button>
																								</td>
										<td class="center">
													<button class="btn btn-defualt btn-primary btn-xs btnPictureForm" data-toggle="modal" data-target="#pictureForm">사진등록</button>
										</td>
									</tr>
									<tr>
										<td class="center">I003</td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop1"
											data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/person-placeholder.jpg' style='width:60%;'><div>">옥보라</a>
										</td>

										<td class="center">Database,Python</td>
										<td class="center">010-3333-3333</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#Instructor_Delete">삭제</button>
																								</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#Instructor_infoModify">수정</button>
											<button class="btn btn-defualt btn-primary btn-xs btnPwInit"
												data-toggle="modal" data-target="#Instructor_PwInit">PW초기화</button>
																								</td>
										<td class="center">
													<button class="btn btn-defualt btn-primary btn-xs btnPictureForm" data-toggle="modal" data-target="#pictureForm">사진등록</button>
										</td>


									</tr>

									<tr>
										<td class="center">I004</td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop1"
											data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/person-placeholder.jpg' style='width:60%;'><div>">옥보라</a>
										</td>

										<td class="center">Java,JSP</td>
										<td class="center">010-4444-4444</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#Instructor_Delete">삭제</button>
																								</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#Instructor_infoModify">수정</button>
											<button class="btn btn-defualt btn-primary btn-xs btnPwInit"
												data-toggle="modal" data-target="#Instructor_PwInit">PW초기화</button>
																								</td>
										<td class="center">
													<button class="btn btn-defualt btn-primary btn-xs btnPictureForm" data-toggle="modal" data-target="#pictureForm">사진등록</button>
										</td>
									</tr>

									<tr>
										<td class="center">I005</td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop1"
											data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/person-placeholder.jpg' style='width:60%;'><div>">옥보라</a>
										</td>

										<td class="center">C,Java</td>
										<td class="center">010-5555-5555</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#Instructor_Delete">삭제</button>
																								</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#Instructor_infoModify">수정</button>
											<button class="btn btn-defualt btn-primary btn-xs btnPwInit"
												data-toggle="modal" data-target="#Instructor_PwInit">PW초기화</button>
																								</td>
										<td class="center">
													<button class="btn btn-defualt btn-primary btn-xs btnPictureForm" data-toggle="modal" data-target="#pictureForm">사진등록</button>
										</td>

									</tr>

								</tbody>
							</table>
							<!-- /.table-responsive -->



							<!-- 출력버튼, 검색 폼 -->
							<!-- action="" 속성 생략시 자기자신에게 폼 전송 -->
							<form class="form-inline" method="POST">
								<div class="form-group">

									<!-- 전체 자료 개수 -->
									<button type="button" class="btn btn-sm">
										TotalCount <span class="badge" id="totalCount">1</span>
									</button>
									<!-- 한페이지 자료 개수? -->
									<button type="button" class="btn btn-sm">
										Count <span class="badge" id="count">1</span>
									</button>
									<!-- 이전 - 현재 - 다음 페이지 -->
									<button type="button" id="btnPre"
										class="btn btn-default btn-sm" value="">
										<span class="glyphicon glyphicon-step-backward"></span>이전
									</button>
									<button type="button" class="btn btn-default btn-sm">
										페이지 <span class="badge" id="pageNum">1</span>
									</button>
									<button type="button" id="btnNext"
										class="btn btn-default btn-sm" value="">
										<span class="glyphicon glyphicon-step-forward"></span>다음
									</button>
									<!-- 검색 기준 선택 항목 -->
									<select class="form-control input-sm" id="key" name="key">
										<option value="all">전체</option>
										<option value="openCourseId">강사아이디</option>
										<option value="openCourseName">강사명</option>
									</select>
									<!-- 검색 단어 입력 폼 -->
									<div class="input-group">
										<!-- 전체 출력(all)일 때는 입력하지 않아도 되므로 input에 required 속성 추가하지 않음. -->
										<input type="text" class="form-control input-sm" id="value"
											name="value" placeholder="Search">
										<div class="input-group-btn">
											<!-- 검색 진행 버튼 -->
											<button type="submit" class="btn btn-default btn-sm"
												id="btnSearch">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</div>
									</div>
								</div>
							</form>

							<!-- 검색 단어 입력 폼 끝-->




						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Modal 모달 관련 -->
	<div id="addInstructorModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">신규 강사 등록</h4>
				</div>
				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="instructor_name">강사명</label> <input type="text"
								value="" class="form-control" id="instructor_name"
								name="instructor_name" placeholder="최대 20자" required>
						</div>
						<div class="form-group">
							<label for="instructor_phone">전화번호</label> <input type="text"
								class="form-control" id="instructor_phone"
								name="instructor_phone" placeholder="최대 20자" required>
						</div>

						<div class="form-group">
							<label for="instructor_regDate">등록일</label> <input type="Date"
								value="" class="form-control" id="instructor_regDate"
								name="instructor_regDate" placeholder="최대 20자" required>
						</div>

						<label for="course_name">강의가능과목</label>

						<div class="checkbox">
							<label class="checkbox-inline"> <input type="checkbox"
								name="sub1" value="Java">Java
							</label> <label class="checkbox-inline"> <input type="checkbox"
								name="sub2" value="Oracle">Oracle
							</label> <label class="checkbox-inline"> <input type="checkbox"
								name="sub3" value="C++ ">C++
							</label> <label class="checkbox-inline"> <input type="checkbox"
								name="sub4" value="Database">Database
							</label> <label class="checkbox-inline"> <input type="checkbox"
								name="sub5" value="Python">Python
							</label>

						</div>
						<div class="checkbox">
							<label class="checkbox-inline"> <input type="checkbox"
								name="sub6" value="Html">Html
							</label>
						</div>





						<div class="row">

							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default"
									data-dismiss="modal">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div id="Instructor_PwInit" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">패스워드 변경</h4>
				</div>
				<div class="modal-body">

					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="instructor_id">강사 아이디</label> <input type="text"
								class="form-control" id="instructor_id" name="instructor_id"
								placeholder="instructor_id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="instructor_name">강사명</label> <input type="text"
								class="form-control" id="instructor_name" name="instructor_name"
								placeholder="instructor_name" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="possible_sub">강의가능과목</label> <input type="text"
								class="form-control" id="possible_sub" name="possible_sub"
								placeholder="possible_sub" readonly="readonly">
						</div>


						<div class="form-group">
							<input type="text" class="form-control" id="password"
								name="password" placeholder="새 비밀번호 입력">
						</div>

						<div class="form-group">
							<input type="text" class="form-control" id="password"
								name="password" placeholder="새 비밀번호 확인">

						</div>

						<div>

							<br>현재 선택한 강사의 비밀번호를 변경하시겠습니까?

						</div>
						<div class="row">
							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="button" class="btn btn-default"
									id="Instructor_PwInit">확인</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div id="Instructor_infoModify" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">정보 수정</h4>
				</div>
				<div class="modal-body">

					<!-- 내용 -->
					<form action="" method="post">
						<div id="demo2">
							<!-- 모달창에 띄울 내용 -->
						</div>

						<div class="row">

							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default"
									data-dismiss="modal">등록</button>
							</div>
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>



	<div id="Instructor_Delete" class="modal fade" role="dialog">
		
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">강사 정보 삭제</h4>
				</div>

				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="instructor_id">강사 아이디</label> <input type="text"
								class="form-control" id="instructor_id" name="instructor_id"
								placeholder="instructor_id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="instructor_name">강사명</label> <input type="text"
								class="form-control" id="instructor_name" name="instructor_name"
								placeholder="instructor_name" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="possible_sub">강의가능과목</label> <input type="text"
								class="form-control" id="possible_sub" name="possible_sub"
								placeholder="possible_sub" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="instructor_phone">전화번호</label> <input type="text"
								class="form-control" id="instructor_phone"
								name="instructor_phone" placeholder="instructor_phone"
								readonly="readonly">
						</div>
						<div>

							<br>현재 선택한 강사를 삭제하시겠습니까?

						</div>
						<div class="row">
							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default"
									data-dismiss="modal">삭제</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<!-- 사진 업로드 전용 모달 -->
	<div id="pictureForm" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">사진 등록</h4>
				</div>
				<div class="modal-body">
					<!-- 내용 -->
					<form action="" 
							method="post" enctype="multipart/form-data" class="">
						<div class="form-group">
							<input type="hidden"
								id="pictureCount" name="pictureCount" value="">
						</div>
						
						<div class="form-group">
							<label>강사아이디</label><input type="text"
								class="form-control" id="instructor_id" name="instructor_id" value ="instructor_id"
								 readonly="readonly" >
						</div>

						<div class="form-group">
						<label>강사명</label>	<input type="text"
								class="form-control" id="instructor_name" name="instructor_name" value ="instructor_name"
								 readonly="readonly">
						</div>
							 
						<div class="form-group">
								<input type="file" class="form-control" name="filename" class="form-control">
						</div> <span class="help-block">(.jpg
							or .png, max 5M)</span>

						<div class="row">
							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default">확인</button>
							</div>
						</div>
					</form>

				</div>
			</div>

		</div>
	</div>


	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document)
				.ready(
						function() {
							//아래 속성 없애면 표 위, 아래에 표시되는 부분 제거 가능
							/* $('#dataTables-example').DataTable({
							   responsive : true
							}); */
							$('[data-toggle="popover"]').popover();
						
							$(".btnLogout").on("click", function() {
								window.location.assign("loginForm.jsp");
							});
							
							 $(".btnInfo").on("click", function() {
									window.location.assign("admin_info.jsp");
								});

							$(".btnDelete")
									.on(
											"click",
											function() {
												var instructor_id = $(this)
														.parents("tr").find(
																"td:eq(0)")
														.text();
												var instructor_name = $(this)
														.parents("tr").find(
																"td:eq(1)")
														.text();
												var possible_sub = $(this)
														.parents("tr").find(
																"td:eq(2)")
														.text();
												var instructor_phone = $(this)
														.parents("tr").find(
																"td:eq(3)")
														.text();

												$(
														"#Instructor_Delete #instructor_id")
														.val(instructor_id);
												$(
														"#Instructor_Delete #instructor_name")
														.val(instructor_name);
												$(
														"#Instructor_Delete #possible_sub")
														.val(possible_sub);
												$(
														"#Instructor_Delete #instructor_phone")
														.val(instructor_phone);

											});

							$(".btnModify")
									.on(
											"click",
											function() {
												var siblings = $(this).parents(
														"th").siblings("td");

												var name_ = $(siblings).eq(1)
														.text();
												var sub = $(siblings).eq(2)
														.text();
												var phone = $(siblings).eq(3)
														.text();
												var txt = "";
												txt += "<div class='form-group'>";
												txt += "<label for='instructor_name'>강사명</label><input type='text'";
										txt += "class='form-control' id='instructor_name' name='instructor_name' placeholder="+name_+" required></div>";
												txt += "<div class='form-group'>";
												txt += "<label for='instructor_name'>전화번호</label><input type='text'";
										txt += "class='form-control' id='instructor_phone' name='instructor_phone' placeholder="+phone+" required></div>";
												txt += "<label for='i_possible_sub'>강의가능과목</label>";

												txt += "<div class='checkbox'><label class='checkbox-inline'> <input type='checkbox' name='sub1' value='Java'>Java</label>";
												txt += "<label class='checkbox-inline'> <input type='checkbox'name='sub2' value='Oracle'>Oracle</label>";
												txt += "<label class='checkbox-inline'> <input type='checkbox''checkbox'name='sub3' value='C++'>C++</label>";
												txt += "<label class='checkbox-inline'> <input type='checkbox' name='sub4' value='Database'>Database</label>";
												txt += "</div>";

												$("#demo2").html(txt);
											});

							$(".btnPwInit")
									.on(
											"click",
											function() {
												var instructor_id = $(this)
														.parents("tr").find(
																"td:eq(0)")
														.text();
												var instructor_name = $(this)
														.parents("tr").find(
																"td:eq(1)")
														.text();
												var possible_sub = $(this)
														.parents("tr").find(
																"td:eq(2)")
														.text();

												$(
														"#Instructor_PwInit #instructor_id")
														.val(instructor_id);
												$(
														"#Instructor_PwInit #instructor_name")
														.val(instructor_name);
												$(
														"#Instructor_PwInit #possible_sub")
														.val(possible_sub);

												txt += "</div><div class='form-group'>";
												txt += " 변경할 패스워드  <input type='text' class='form-control' id='Instructor_PwInit' name='Instructor_PwInit'required></div><div>패스워드를 변경 하시겠습니까?</div>";
												$("#demo").html(txt);
											});

							
							
					         $(".btnPictureForm").on("click", function(){
					             var siblings = $(this).parents("td").siblings("td");
					             
					             var instructor_id = $(siblings).eq(0).text();
					             var instructor_name = $(siblings).eq(1).text();
					             
					             $("#pictureForm #instructor_id").val(instructor_id);
					             $("#pictureForm #instructor_name").val(instructor_name);
					          
					          });
							
						});
	</script>

</body>

</html>