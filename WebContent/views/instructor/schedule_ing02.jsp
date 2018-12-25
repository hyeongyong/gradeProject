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
<link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
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
	background-color: #476e91;
	color: #ffffff;
}

/*-------사이드 네비게이션 관련-------*/
.navbar-header a {
	vertical-align: text-bottom;
}

.navbar-header span {
	vertical-align: middle;
	font-size: 1.1em;
	font-weight: bold;
}

.logo {
	color: #000000;
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

		<!-- ######## Navigation 네비게이션 시작 ######## -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">

				<!-- ### 쌍용교육센터 로고 : index.jsp ### -->
				<a href="${pageContext.request.contextPath}/views/instructor/index.jsp"><img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png"></a><span> 성적 관리 시스템 v6.0</span>
				<!-- 성적 관리 시스템 v6.0 -->
			</div>
			
			<!-- /.navbar-header -->
			<div class="navbar-default sidebar" role="navigation">
				<!-- ########### 사이드 바 시작 ########### -->
				<div class="sidebar-nav navbar-collapse">

					<!-- 현재 로그인한 유저 정보 표시부 -->
					<div class="logo">
						<div class="avatar">
							<img src="${pageContext.request.contextPath}/resources/img/person-placeholder.jpg">
						</div>

					<div class="userInfo">
                     <span class="simple-text logo-normal" id="userId">로그인한 ID</span>
                       <button class="btn btn-default" id="btnInfo">개인정보조회</button>
                     <button class="btn btn-default" id="btnLogout">로그아웃</button>
					</div>


					
					</div>
					
					<!-- 좌측 메뉴 시작 -->
					<ul class="nav" id="side-menu">
						<!-- 강의 스케쥴 조회 시작 -->
						<li><a href="#"><i class="fa fa-table fa-fw"></i> 강의 스케쥴
								조회<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a
									href="${pageContext.request.contextPath}/views/instructor/schedule_planned01.jsp">강의일정별 조회</a></li>
								<li><a
									href="${pageContext.request.contextPath}/views/instructor/os_student01.jsp">개설과목별 전체 수강생 조회</a></li>
							</ul> <!-- /.nav-second-level --></li>

						<li><a
							href="${pageContext.request.contextPath}/views/instructor/test_management01.jsp">
								<i class="fa fa-table fa-fw"></i> 시험 및 배점관리
						</a></li>

						<li><a
							href="${pageContext.request.contextPath}/views/instructor/scoreAddAndRemove01.jsp"><i
								class="fa fa-table fa-fw"></i> 성적관리 <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a
									href="${pageContext.request.contextPath}/views/instructor/scoreAddAndRemove01.jsp">성적
										등록 및 삭제</a></li>
								<li><a
									href="${pageContext.request.contextPath}/views/instructor/scoreCheck_os01.jsp">성적조회</a></li>
							</ul> <!-- /.nav-second-level --></li>
					</ul>
					<!-- 좌측 메뉴 끝 -->
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		
		<!-- ######## Navigation 네비게이션 끝 ######## -->




		<div id="page-wrapper">
			<div class="row">
				<div class="" id="nav">
					<ul class="nav navbar-nav">
						<li class="active"><a
							href="${pageContext.request.contextPath}/views/instructor/index.jsp">Home</a></li>
						<li><a>></a></li>
						<li><a
							href="#">강의스케쥴조회</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/instructor/schedule_planned01.jsp">강의일정별
								조회</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/instructor/schedule_ing01.jsp">강의중
								개설과정 선택</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/instructor/schedule_ing02.jsp">강의중
								개설과목 조회</a></li>

					</ul>
				</div>

			</div>
			<!-- /.row -->
			<div class="row content">
				<div class="col-lg-12">
					<h2>강의중 개설과목 조회</h2>

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">

								<!-- 								<div class="col-md-10 right">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#addCourseModal">신규 과정 등록</button>
								</div> -->
							</div>
							<ul class="nav nav-tabs">
								<%-- <li ><a href="${pageContext.request.contextPath}/views/instructor/schedule_planned01.jsp">강의 예정</a></li> --%>
								<li class="active"><a
									href="${pageContext.request.contextPath}/views/instructor/schedule_ing01.jsp">강의
										중</a></li>
								<%-- <li ><a href="${pageContext.request.contextPath}/views/instructor/schedule_end01.jsp">강의 종료</a></li> --%>
							</ul>
							<!-- <table width="100%" class="table table-striped table-bordered table-hover" id="tableCourse"> -->
							<table class="table table-bordered table-hover"
								id="tableOpenCourse">
								<thead>
									<tr class="bgColor01">
										<th class="center ">개설과정<br>아이디</th>
										<th class="center ">개설<br>과정명</th>
										<th class="center ">개설과정<br>시작일</th>
										<th class="center ">개설과정<br>종료일</th>
										<th class="center">강의실</th>
										<th class="center ">수강<br>인원</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="center ">OC001</td>
										<td class="center ">C/C++ 와 JAVA 프로그래밍 응용과정</td>
										<td class="center ">2018-06-25</td>
										<td class="center ">2018-01-17</td>
										<td class="center">201호</td>
										<td class="center ">11명</td>
									</tr>

								</tbody>
							</table>

						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-body">

							<!-- /.table-responsive -->
							<table class="table table-bordered table-hover"
								id="tableOpenCourse">
								<thead>
									<tr class="bgColor02">
										<th class="center ">개설과목<br>아이디</th>
										<th class="center ">개설<br>과목명</th>
										<th class="center ">개설과목<br>시작일</th>
										<th class="center ">개설과목<br>종료일</th>
										<th class="center">교재명</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="center ">OS001</td>
										<td class="center ">Java</td>
										<td class="center ">2018-06-25</td>
										<td class="center ">2018-07-25</td>
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
									</tr>
									<tr>
										<td class="center ">OS001</td>
										<td class="center ">Java</td>
										<td class="center ">2018-06-25</td>
										<td class="center ">2018-07-25</td>
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
									</tr>

								</tbody>
							</table>


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

	





	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="${pageContext.request.contextPath}/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {

			$("[data-toggle='popover']").popover();
			
			/* 버튼 이벤트 등록 */
			$("#btnInfo").on("click", function() {
			    window.location.assign("${pageContext.request.contextPath}/views/instructor/instructor_info.jsp");
			 });
			 
			$("#btnLogout").on("click", function() {
			   window.location.assign("${pageContext.request.contextPath}/views/login/loginForm.jsp");
			});
		});
	</script>

</body>

</html>
