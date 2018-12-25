<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	//절대경로 확인
	String path = request.getContextPath();
	System.out.println(path);
%>
<!DOCTYPE html>
<html lang="en">

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

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- 테이블 진행형화 차트 -->
<link rel="stylesheet"
	href="https://cdn.rawgit.com/theus/chart.css/v1.0.0/dist/chart.css" />

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

/*-------사이드 네비게이션 관련-------*/
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

/* -------테이블 관련------- */
.table {
	width: 100%;
	margin-top: 20px;
	word-wrap: break-word;
	word-break: keep-all;
}

th {
	text-align: center;
	vertical-align: center
}

td {
	text-align: center;
	vertical-align: middle;
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
/*-------상단 네비게이션 관련-------*/
.navbar-static-top {
	background-color: rgba(66, 139, 202, 0.9);
	color: #ffffff;
}
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

		<!-- ######## Navigation 네비게이션 시작 ######## -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/views/students/student.jsp"><img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png"></a><span>성적
					관리 시스템 v6.0</span>
				<!-- 성적 관리 시스템 v6.0 -->
			</div>
			<div class="navbar-default sidebar" role="navigation">
				<!-- ########### 사이드 바 시작 ########### -->
				<div class="sidebar-nav navbar-collapse">
					<!-- 현재 로그인한 유저 정보 표시부 -->
					<div class="logo">
						<div class="avatar">
							<img
								src="${pageContext.request.contextPath}/resources/img/hgd.jpg">
						</div>
						<div class="userInfo">
							<span class="simple-text logo-normal" id="userId">홍길동</span><br>
							<button class="btn btn-default" id=""
								onclick="location.href='${pageContext.request.contextPath}/views/students/student2.jsp'">개인정보조회</button>
							<button class="btn btn-default" id=""
								onclick="location.href='${pageContext.request.contextPath}/views/login/loginForm.jsp'">로그아웃</button>
						</div>
					</div>
					<ul class="nav" id="side-menu">
						<li><a
							href="${pageContext.request.contextPath}/views/students/student3.jsp">
								<i class="fa fa-table fa-fw"></i> 성적조회
						</a></li>
					</ul>

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
							href="${pageContext.request.contextPath}/views/students/student.jsp">Home</a></li>
					</ul>
				</div>
			</div>
			<div class="row content">
				<div class="col-lg-12">
					<h2>과정 진행현황</h2>
					<div class="panel panel-default">
						<!-- <div class="panel-heading">과정 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<!-- <table width="100%" class="table table-striped table-bordered table-hover" id="tableCourse"> -->
							<table class="table table-bordered table-hover"
								id="tablegadeview">
								<thead>
									<tr class="bgColor02">
										<th class="center col-md-2.5">개설과정 아이디</th>
										<th class="center col-md-3">개설과정명</th>
										<th class="center col-md-2.5">개설과정 시작일</th>
										<th class="center col-md-2.5">개설과정 종료일</th>
										<th class="center col-md-1.5">진행 현황</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td>OC001</td>
										<td>C/C++ 와 JAVA 프로그래밍 응용과정</td>
										<td>2018-06-25</td>
										<td>2019-01-17</td>
										<td>
											<div class="progress">
												<div class="progress progress-bar progress-bar-custom"
													role="progressbar" aria-valuenow="70" aria-valuemin="100"
													aria-valuemax="100" style="width: 70%;">70%</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- /#page-wrapper -->

	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>


	<!-- Morris Charts JavaScript -->
	<!-- 
	<script src="../vendor/raphael/raphael.min.js"></script>
	<script src="../vendor/morrisjs/morris.min.js"></script>
	<script src="../data/morris-data.js"></script>
 	-->
	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

</body>

</html>
