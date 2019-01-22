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
				<a href="${pageContext.request.contextPath}/views/admin/index.jsp"> <img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png"></a>
				<span>성적 관리 시스템 v6.0</span>
			</div>





			<div class="navbar-default sidebar" role="navigation">
				<!-- ########### 사이드 바 시작 ########### -->
				<div class="sidebar-nav navbar-collapse">

					<!-- 현재 로그인한 유저 정보 표시부 -->
					<div class="logo">
						<div class="avatar">
							<img src="${pageContext.request.contextPath}/resources/img/jenny.jpg">
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
								<li><a href="${pageContext.request.contextPath}/views/admin/tables.jsp">과정관리</a></li>
								<li><a href="${pageContext.request.contextPath}/views/admin/tables02.jsp">과목관리</a></li>
								<li><a href="${pageContext.request.contextPath}/views/admin/tables03.jsp">강의실관리</a></li>
								<li><a href="${pageContext.request.contextPath}/views/admin/tables04.jsp">교재관리</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<!-- 기초정보관리 끝 -->

						<li><a href="${pageContext.request.contextPath}/views/admin/tables05.jsp"><i class="fa fa-table fa-fw"></i>
								강사계정관리</a></li>
						<li><a href="${pageContext.request.contextPath}/views/admin/tables06.jsp"><i class="fa fa-table fa-fw"></i>
								개설과정관리</a></li>
						<li><a href="${pageContext.request.contextPath}/views/admin/tables07.jsp"><i class="fa fa-table fa-fw"></i>
								개설과목관리</a></li>

						<!-- 수강생관리 시작 -->
						<li><a href="${pageContext.request.contextPath}/views/admin/tables08.jsp"><i class="fa fa-table fa-fw"></i>
								수강생관리</a></li>
						<!-- 수강생관리 끝 -->

						<li><a href="${pageContext.request.contextPath}/views/admin/tables09.jsp"><i class="fa fa-table fa-fw"></i>
								성적조회<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="${pageContext.request.contextPath}/views/admin/tables09-1.jsp">과목별 성적조회</a></li>
								<li><a href="${pageContext.request.contextPath}/views/admin/tables09-2.jsp">수강생 성적조회</a></li>
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
						<li class="active"><a href="${pageContext.request.contextPath}/views/admin/index.jsp">Home</a></li>
						<li><a>></a></li>
						<li><a href="${pageContext.request.contextPath}/views/admin/tables03.jsp">기초정보관리</a></li>
						<li><a>></a></li>
						<li><a href="${pageContext.request.contextPath}/views/admin/tables03.jsp">강의실관리</a></li>
					</ul>
				</div>

			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12 content">
					<h2>강의실 관리</h2>
					<!-- 	<div class="panel panel-default">
						<div class="panel-body">
							<h2>과목 관리</h2>
						</div>
					</div> -->
					<div class="panel panel-default">
						<!-- 	<div class="panel-heading">과목 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12 right">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#addCourseModal">신규 강의실 등록</button>
								</div>
							</div>

							<table class="table table-bordered table-hover"
								id="tableOpenSubject">
								<thead>
									<tr class="bgColor01">
										<th class="center col-md-2">강의실 아이디</th>
										<th class="center col-md-3">강의실명</th>
										<th class="center col-md-3">수용인원</th>
										<th class="center col-md-2">수정</th>
										<th class="center col-md-2">삭제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="center">R001</td>
										<td class="center">101호</td>
										<td class="center">20명</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#modifyClassroomModal">수정</button>
										</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#deleteClassroomModal">삭제</button>
										</td>
									</tr>
									<tr>
										<td class="center">R002</td>
										<td class="center">102호</td>
										<td class="center">20명</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#modifyClassroomModal">수정</button>
										</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#deleteClassroomModal">삭제</button>
										</td>
									</tr>
									<tr>
										<td class="center">R003</td>
										<td class="center">103호</td>
										<td class="center">20명</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#modifyClassroomModal">수정</button>
										</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#deleteClassroomModal">삭제</button>
										</td>
									</tr>
									<tr>
										<td class="center">R004</td>
										<td class="center">104호</td>
										<td class="center">20명</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#modifyClassroomModal">수정</button>
										</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#deleteClassroomModal">삭제</button>
										</td>
									</tr>
									<tr>
										<td class="center">R005</td>
										<td class="center">105호</td>
										<td class="center">25명</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnModify"
												data-toggle="modal" data-target="#modifyClassroomModal">수정</button>
										</td>
										<td class="center">
											<button class="btn btn-defualt btn-primary btn-xs btnDelete"
												data-toggle="modal" data-target="#deleteClassroomModal">삭제</button>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- /.table-responsive -->



								<!-- 한페이지 자료 개수? -->
								<button type="button" class="btn btn-sm">
									Count <span class="badge" id="count">1</span>
								</button>
	

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
		<div id="addCourseModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<!-- 제목 -->
						<h4 class="modal-title">신규 강의실 등록</h4>
					</div>
					<div class="modal-body">
						<!-- 내용 -->
						<form action="" method="post">
							<div class="form-group">
								<label for="classroom_name">강의실명</label> <input type="text"
									class="form-control" id="classroom_name" name="classroom_name"
									placeholder="최대 20자" required></div>
									<div class="form-group">
									<label
									for="classroom_capacity">수용인원</label> <input type="text"
									class="form-control" id="classroom_capacity"
									name="classroom_capacity" placeholder="최대 20자" required>
							</div>

							<div class="row">
								<div class="col-md-6 left">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">취소</button>
								</div>
								<div class="col-md-6 right">
									<button type="button" class="btn btn-default" id="btnAddCourse">등록</button>
								</div>
							</div>

						</form>

					</div>
				</div>

			</div>
		</div>
		
			<div id="modifyClassroomModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<!-- 제목 -->
						<h4 class="modal-title">강의실 수정</h4>
					</div>

					<div class="modal-body">
						<!-- 내용 -->
						<form action="" method="post">
							<div class="form-group">
								<label for="classroom_id">강의실 아이디</label> <input type="text"
									class="form-control" id="classroom_id" name="classroom_id"
									placeholder="classroom_id" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="classroom_name">강의실명</label> <input type="text"
									class="form-control" id="classroom_name" name="classroom_name"
									placeholder="classroom_name" value="">
							</div>
							<div class="form-group">
								<label for="classroom_capacity">수용인원</label> <input type="text"
									class="form-control" id="classroom_capacity"
									name="classroom_capacity" placeholder="classroom_capacity"
									value="">
							</div>
							<div></div>
							<div>

								<p>현재 선택한 강의실을 삭제하시겠습니까?</p>

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
		

		<!-- 삭제모달 -->
		<div id="deleteClassroomModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<!-- 제목 -->
						<h4 class="modal-title">강의실 삭제</h4>
					</div>

					<div class="modal-body">
						<!-- 내용 -->
						<form action="" method="post">
							<div class="form-group">
								<label for="classroom_id">강의실 아이디</label> <input type="text"
									class="form-control" id="classroom_id" name="classroom_id"
									placeholder="classroom_id" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="classroom_name">강의실명</label> <input type="text"
									class="form-control" id="classroom_name" name="classroom_name"
									placeholder="classroom_name" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="classroom_capacity">수용인원</label> <input type="text"
									class="form-control" id="classroom_capacity"
									name="classroom_capacity" placeholder="classroom_capacity"
									readonly="readonly">
							</div>
							<div></div>
							<div>

								<p>현재 선택한 강의실을 삭제하시겠습니까?</p>

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
							
								 $(".btnInfo").on("click", function() {
										window.location.assign("${pageContext.request.contextPath}/views/admin/admin_info.jsp");
									});
								
								$(".btnLogout").on("click", function(){
									window.location.assign("${pageContext.request.contextPath}/views/login/loginForm.jsp");
								});
								$(".btnDelete")
										.on(
												"click",
												function() {
													var classroom_id = $(this)
															.parents("tr")
															.find("td:eq(0)")
															.text();
													var classroom_name = $(this)
															.parents("tr")
															.find("td:eq(1)")
															.text();
													var classroom_capacity = $(
															this).parents("tr")
															.find("td:eq(2)")
															.text();
													$(
															"#deleteClassroomModal #classroom_id")
															.val(classroom_id);
													$(
															"#deleteClassroomModal #classroom_name")
															.val(classroom_name);
													$(
															"#deleteClassroomModal #classroom_capacity")
															.val(
																	classroom_capacity);

												});
								
								$(".btnModify")
								.on(
										"click",
										function() {
											var classroom_id = $(this)
													.parents("tr")
													.find("td:eq(0)")
													.text();
											var classroom_name = $(this)
													.parents("tr")
													.find("td:eq(1)")
													.text();
											var classroom_capacity = $(
													this).parents("tr")
													.find("td:eq(2)")
													.text();
											$(
													"#modifyClassroomModal #classroom_id")
													.val(classroom_id);
											$(
													"#modifyClassroomModal #classroom_name")
													.val(classroom_name);
											$(
													"#modifyClassroomModal #classroom_capacity")
													.val(
															classroom_capacity);

										});

							});
		</script>
</body>

</html>