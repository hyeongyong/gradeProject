<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	//절대경로 확인
	String path = request.getContextPath();
%>
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

/*--------컨텐츠 관련-------*/
.content h2 {
	margin-bottom: 0.5em;
}

.wrapper {
	display: table;
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
				<a
					href="${pageContext.request.contextPath}/views/students/student.jsp"><img
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
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/students/student3.jsp">성적조회(수강생의 과정)</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/students/student3_2.jsp">수강생의
								과목</a></li>
						<li><a>></a></li>
						<li><a
							href="${pageContext.request.contextPath}/views/students/student3_2_2.jsp">수강생의
								점수</a></li>
					</ul>
				</div>

			</div>

			<!-- /.row -->
			<div class="row content">
				<div class="col-lg-12">
					<h2>성적조회</h2>
					<!-- <div class="panel panel-default">
						<div class="panel-body">
							<h2>과정 관리</h2>
						</div>
					</div> -->
					<div class="panel panel-default">
						<!-- <div class="panel-heading">과정 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<!-- <table width="100%" class="table table-striped table-bordered table-hover" id="tableCourse"> -->
							<table class="table table-bordered table-hover"
								id="tablegadeview">
								<thead>
									<tr class="bgColor01">
										<th class="center col-md-1.5">개설과정<br>아이디</th>
										<th class="center col-md-3">개설<br>과정명</th>
										<th class="center col-md-2">개설과정<br>시작일</th>
										<th class="center col-md-2">개설과정<br>종료일</th>
										<th class="center col-md-1.5">수료<br>상태
										</th>
										<th class="center col-md-2">수료상태<br>날짜
										</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td class="center">OC011</td>
										<td class="center">Basic Programing Start!</td>
										<td class="center">2018-04-02</td>
										<td class="center">2018-06-01</td>
										<td class="center">수료</td>
										<td class="center">2018-06-01</td>
									</tr>
								</tbody>
							</table>
							<table class="table table-bordered table-hover">
								<thead>
									<tr class="bgColor01">
										<th class="center col-md-1">개설과목<br>아이디
										</th>
										<th class="center col-md-1">개설<br>과목명
										</th>
										<th class="center col-md-1.5">개설과정<br>시작일
										</th>
										<th class="center col-md-1.5">개설과정<br>종료일
										</th>
										<th class="center col-md-1">교재명</th>
										<th class="center col-md-0.5">강사명</th>
										<th class="center col-md-0.5">출결<br>배점
										</th>
										<th class="center col-md-0.5">필기<br>배점
										</th>
										<th class="center col-md-0.5">실기<br>배점
										</th>
										<th class="center col-md-1">시험문제<br>(.zip)</th>
										<th class="center col-md-1.5">시험<br>날짜
										</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td class="center">OS017</td>
										<td class="center">My SQL</td>
										<td class="center">2018-05-03</td>
										<td class="center">2018-05-31</td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop1"
											title="<div style='text-align:center;'><img src='https://bookthumb-phinf.pstatic.net/cover/068/869/06886962.jpg' style='width:60%;'><div>"
											data-content='<table>
									        			  <tr><td style="width:60px;">제목</td><td>Real My SQL</td></tr>
									        			  <tr><td>저자</td><td>이성욱</td></tr>
									        			  <tr><td>가격</td><td>40000</td></tr>
									        			  <tr><td>출판사</td><td>위키북스</td></tr>
									        			  <tr><td>ISBN</td><td>2018890001</td></tr>
									        			  </table>'>Real
												My SQL</a></td>
										<td class="center"><a href="#" data-toggle="popover"
											data-placement="left" data-trigger="hover" data-html="true"
											class="pop2"
											data-content="<div style='text-align:center;'><img src='${pageContext.request.contextPath}/resources/img/sgj.jpg' style='width:60%;'><div>">서강준</a>
										</td>
										<td class="center">20</td>
										<td class="center">30</td>
										<td class="center">50</td>
										<td class="center"><button type="button"
												class="btn btn-primary btn-xs"
												title="OS017_My SQL_2018-05-31">다운로드</button></td>
										<td class="center">2018-05-31</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel panel-default">
						<!-- <div class="panel-heading">과정 관리 테이블</div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table class="table table-bordered table-hover">
								<thead>
									<tr class="bgColor02">
										<th class="center col-md-3">출결점수</th>
										<th class="center col-md-3">필기점수</th>
										<th class="center col-md-3">실기점수</th>
										<th class="center col-md-3">총점</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr class="odd gradeX">  -->
									<tr>
										<td class="center">20</td>
										<td class="center">25</td>
										<td class="center">25</td>
										<td class="center">70</td>
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
					$(".btnLogout").on("click", function() {
						window.location.assign("loginForm.jsp");
					})

					$(document).on(
							"click",
							".btnDelete",
							function() {
								var siblings = $(this).parents("td").siblings(
										"td");
								var a = $(siblings).eq(0).text();
								var b = $(siblings).eq(1).text();

								var d = confirm("과정아이디 : " + a + "\n과정명 : " + b
										+ "\n삭제하시겠습니까?");
								if (d) {
									//삭제 액션 페이지 요청 및 번호 전달
									window.location
											.assign("삭제주소.jsp?mid_=" + a);
								}
							});
					
					$("[data-toggle='popover']").popover();
				});
	</script>

</body>

</html>
