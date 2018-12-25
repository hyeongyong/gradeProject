<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

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
.popover {
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
						<li class="active"><a
							href="${pageContext.request.contextPath}/pages/index.jsp">Home</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/pages/tables07.jsp">개설
								과정 선택</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/pages/tables07_1.jsp">개설
								과목 선택</a></li>
					</ul>
				</div>

			</div>

			<!-- /.row -->
			<div class="row content">
				<div class="col-lg-12">
					<h2>개설과목선택</h2>
					<!-- <div class="panel panel-default">
						<div class="panel-body">
							<h2>과정 관리</h2>
						</div>
					</div> -->
					<div class="panel panel-default">
						<!-- <div class="panel-heading">과정 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table class="table table-bordered table-hover"
								id="tableOpenCourse">
								<thead>
									<tr class="bgColor01">
										<th class="center col-md-1">개설과정<br>아이디</th>
										<th class="center col-md-3">개설<br>과정명</th>
										<th class="center col-md-2">개설과정<br>시작일</th>
										<th class="center col-md-2">개설과정<br>종료일</th>
										<th class="center col-md-1">강의실</th>
										<th class="center col-md-1">수강<br>인원</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td class="center">OC001</td>
										<td class="center">C/C++ 와 JAVA 프로그래밍 응용과정</td>
										<td class="center">2018-06-25</td>
										<td class="center">2019-01-17</td>
										<td class="center">201호</td>
										<td class="center">20명</td>

									</tr>
								</tbody>
							</table>

						</div>
					</div>

					<div class="row">
						<div class="col-md-12 right">
							<div class="panel panel-default">
								<div class="panel-body">

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#addCourseModal">개설 과목 등록</button>

									<!-- <table width="100%" class="table table-striped table-bordered table-hover" id="tableCourse"> -->
									<table class="table table-bordered table-hover"
										id="tableOpenCourse">
										<thead>
											<tr class="bgColor02">
												<th class="center col-md-2">개설과목<br>아이디</th>
												<th class="center col-md-1">개설<br>과목명</th>
												<th class="center col-md-2">개설과목<br>시작일</th>
												<th class="center col-md-2">개설과목<br>종료일</th>
												<th class="center col-md-2">교재명</th>
												<th class="center col-md-1">강사명</th>
												<th class="center col-md-1">수정</th>
												<th class="center col-md-1">삭제</th>
											</tr>
										</thead>
										<tbody>
											<!-- <tr class="odd gradeX">  -->
											<tr>
												<td class="center">OS001</td>
												<td class="center">C</td>
												<td class="center">2018-06-25</td>
												<td class="center">2018-07-17</td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													title="<div style='text-align:center;'><img src='http://shop1.phinf.naver.net/20171129_203/gosigosi2007_1511948441858Wt7YH_JPEG/43659565059784274_1381253878.jpg' style='width:60%;'><div>"
													data-content='<table>
         <tr><td style="width:60px;">제목</td><td>알기 쉽게 해설한 JAVA</td></tr>
         <tr><td>저자</td><td>홍길동</td></tr>
         <tr><td>가격</td><td>10000</td></tr>
         <tr><td>출판사</td><td>한빛</td></tr>
         <tr><td>ISBN</td><td>2012219055</td></tr>
            </table>'>알기
														쉽게 해설한 JAVA</a></td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/Fotolia07.png'style='width:60%;'><div>">홍길동</a></td>


												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnModify"
														data-toggle="modal" data-target="#modifyOpenSubModal">수정</button>
												</td>
												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnDelete"
														data-toggle="modal" data-target="#deleteOpenSubModal">삭제</button>
												</td>
											</tr>



											<!-- <tr class="even gradeC">  -->
											<tr>
												<td class="center">OS002</td>
												<td class="center">C</td>
												<td class="center">2018-06-25</td>
												<td class="center">2018-07-17</td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													title="<div style='text-align:center;'><img src='http://shop1.phinf.naver.net/20171129_203/gosigosi2007_1511948441858Wt7YH_JPEG/43659565059784274_1381253878.jpg' style='width:60%;'><div>"
													data-content='<table>
         <tr><td style="width:60px;">제목</td><td>알기 쉽게 해설한 JAVA</td></tr>
         <tr><td>저자</td><td>홍길동</td></tr>
         <tr><td>가격</td><td>10000</td></tr>
         <tr><td>출판사</td><td>한빛</td></tr>
         <tr><td>ISBN</td><td>2012219055</td></tr>
            </table>'>알기
														쉽게 해설한 JAVA</a></td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/Fotolia07.png'style='width:60%;'><div>">홍길동</a></td>

												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnModify"
														data-toggle="modal" data-target="#modifyOpenSubModal">수정</button>
												</td>
												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnDelete"
														data-toggle="modal" data-target="#deleteOpenSubModal">삭제</button>
												</td>
											</tr>



											<tr>
												<td class="center">OS003</td>
												<td class="center">C</td>
												<td class="center">2018-06-25</td>
												<td class="center">2018-07-17</td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													title="<div style='text-align:center;'><img src='http://shop1.phinf.naver.net/20171129_203/gosigosi2007_1511948441858Wt7YH_JPEG/43659565059784274_1381253878.jpg' style='width:60%;'><div>"
													data-content='<table>
         <tr><td style="width:60px;">제목</td><td>알기 쉽게 해설한 JAVA</td></tr>
         <tr><td>저자</td><td>홍길동</td></tr>
         <tr><td>가격</td><td>10000</td></tr>
         <tr><td>출판사</td><td>한빛</td></tr>
         <tr><td>ISBN</td><td>2012219055</td></tr>
            </table>'>알기
														쉽게 해설한 JAVA</a></td>
												<td class="center"><a href="#" data-toggle="popover"
													data-placement="left" data-trigger="hover" data-html="true"
													class="pop1"
													data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/Fotolia07.png'style='width:60%;'><div>">홍길동</a></td>

												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnModify"
														data-toggle="modal" data-target="#modifyOpenSubModal">수정</button>
												</td>
												<td class="center">
													<button
														class="btn btn-defualt btn-primary btn-xs btnDelete"
														data-toggle="modal" data-target="#deleteOpenSubModal">삭제</button>
												</td>
											</tr>

										</tbody>
									</table>
									<!-- /.table-responsive -->

									<!-- 출력버튼, 검색 폼 -->
									<!-- action="" 속성 생략시 자기자신에게 폼 전송 -->
									<div class="form-group row">
										<form class="form-inline" method="POST">

											<div class="col-md-12 left">
												<!-- 한페이지 자료 개수? -->
												<button type="button" class="btn btn-sm">
													Count <span class="badge" id="count">1</span>
												</button>
											</div>

										</form>
										</div>
										</div>
							<!-- 검색 단어 입력 폼 끝-->
								</div>
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
					<h4 class="modal-title">개설 과목 등록</h4>
				</div>
				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="course_name">과목</label> <select class="form-control"
								id="course" name="course">
								<option value="sub001">Sub001 | JAVA</option>
								<option value="기준1">Sub002 | C</option>
								<option value="기준2">Sub003 | JSP</option>
								<option value="기준3">Sub004 | Oracle</option>
							</select>
						</div>
						<div class="form-group">
							<label for="course_name">과목시작일</label> <input type="Date"
								class="form-control" id="sub_start_date" name="sub_start_date"
								placeholder="YYYY-MM-DD" required>
						</div>
						<div class="form-group">
							<label for="course_name">과목종료일</label> <input type="Date"
								class="form-control" id="sub_end_date" name="sub_end_date"
								placeholder="YYYY-MM-DD" required>
						</div>
						<div class="form-group">
							<label for="course_name">교재정보</label> <select
								class="form-control" id="book" name="book">
								<option value="B001">B001 | JAVA기초 | 12345678</option>
								<option value="B002">B002 | C기초 | 85456213</option>
								<option value="B001">B003 | JSP기초 | 79842321</option>
								<option value="B001">B004 | Oracle기초 | 90542312</option>
							</select>
						</div>
						<div class="form-group">
							<label for="course_name">강사</label> <select class="form-control"
								id="instructor" name="instructor">
								<option value="sub001">I001 | 김자바 | 010-1234-5678</option>
								<option value="sub002">I002 | 김씨쁠 | 010-1234-5678</option>
								<option value="sub003">I003 | 김스피 | 010-1234-5678</option>
								<option value="sub004">I004 | 김라클 | 010-1234-5678</option>
							</select>
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

	<div id="modifyOpenSubModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">개설과목 수정</h4>
				</div>

				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="opensub_id">개설과목 아이디</label> <input type="text"
								class="form-control" id="opensub_id" name="opensub_id"
								placeholder="opensub_id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="opensub_name">개설과목명</label> <input type="text"
								class="form-control" id="opensub_name" name="opensub_name"
								placeholder="opensub_name" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="opensub_startdate">개설과목 시작일</label> <input
								type="date" class="form-control" id="opensub_startdate"
								name="opensub_startdate" value="">
						</div>
						<div class="form-group">
							<label for="opensub_enddate">개설과목 종료일</label> <input type="date"
								class="form-control" id="opensub_enddate" name="opensub_enddate"
								value="">
						</div>

						<div>

							<p>현재 선택한 개설과목을 수정하시겠습니까?</p>

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


	<!-- 삭제 모달  -->
	<div id="deleteOpenSubModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">개설과목 삭제</h4>
				</div>

				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						<div class="form-group">
							<label for="opensub_id">개설과목 아이디</label> <input type="text"
								class="form-control" id="opensub_id" name="opensub_id"
								placeholder="opensub_id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="opensub_name">개설과목명</label> <input type="text"
								class="form-control" id="opensub_name" name="opensub_name"
								placeholder="opensub_name" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="opensub_startdate">개설과목 시작일</label> <input
								type="text" class="form-control" id="opensub_startdate"
								name="opensub_startdate" placeholder="opensub_startdate"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="opensub_enddate">개설과목 종료일</label> <input type="text"
								class="form-control" id="opensub_enddate" name="opensub_enddate"
								placeholder="opensub_enddate" readonly="readonly">
						</div>

						<div>

							<p>현재 선택한 개설과목을 삭제하시겠습니까?</p>

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
		$(document).ready(
				function() {
					//아래 속성 없애면 표 위, 아래에 표시되는 부분 제거 가능
					/* $('#dataTables-example').DataTable({
						responsive : true
					}); */

					 $(".btnInfo").on("click", function() {
							window.location.assign("admin_info.jsp");
						});
				

					$(".btnLogout").on("click", function() {
						window.location.assign("loginForm.jsp");
					});

					$("[data-toggle='popover']").popover();

					$(".btnDelete").on(
							"click",
							function() {
								var opensub_id = $(this).parents("tr").find(
										"td:eq(0)").text();
								var opensub_name = $(this).parents("tr").find(
										"td:eq(1)").text();
								var opensub_startdate = $(this).parents("tr")
										.find("td:eq(2)").text();
								var opensub_enddate = $(this).parents("tr")
										.find("td:eq(3)").text();
								$("#deleteOpenSubModal #opensub_id").val(
										opensub_id);
								$("#deleteOpenSubModal #opensub_name").val(
										opensub_name);
								$("#deleteOpenSubModal #opensub_startdate")
										.val(opensub_startdate);
								$("#deleteOpenSubModal #opensub_enddate").val(
										opensub_enddate);
							});
					
					$(".btnModify").on(
							"click",
							function() {
								var opensub_id = $(this).parents("tr").find(
										"td:eq(0)").text();
								var opensub_name = $(this).parents("tr").find(
										"td:eq(1)").text();
								var opensub_startdate = $(this).parents("tr")
										.find("td:eq(2)").text();
								var opensub_enddate = $(this).parents("tr")
										.find("td:eq(3)").text();
								$("#modifyOpenSubModal #opensub_id").val(
										opensub_id);
								$("#modifyOpenSubModal #opensub_name").val(
										opensub_name);
								$("#modifyOpenSubModal #opensub_startdate")
										.val(opensub_startdate);
								$("#modifyOpenSubModal #opensub_enddate").val(
										opensub_enddate);
							});
				});
	</script>

</body>

</html>
