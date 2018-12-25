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

/*-------사이드 네비게이션 관련-------*/

.navbar-static-top {
	background-color: #212C30;
	color: #ffffff;
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
	margin-top: 20px;
	width: 80%;
	height: 80%;
}

/*------배경색 관련---------*/
.bgColor01 {
	background-color: #F5F5F5;
}

.bgColorWhite {
	background-color: #FFFFFF;
}

/*------버튼 관련---------*/
#pwChange {
	text-align: center;
}

#profile_container {
	margin-bottom: 20px;
}

#masterPic {
	margin-top: 20px;
	height: 100%;
}

#masterPic img {
	max-width: 200px;
}

.details {
	list-style: none;
}

.details .one {
	width: 120px;
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
				<a href="${pageContext.request.contextPath}/views/master/masteradmin.jsp"> <img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png"></a>
				<span>성적 관리 시스템 v6.0</span>
			</div>





			<div class="navbar-default sidebar" role="navigation">
				<!-- ########### 사이드 바 시작 ########### -->
				<div class="sidebar-nav navbar-collapse">

					<!-- 현재 로그인한 유저 정보 표시부 -->
					<div class="logo">
						<div class="avatar">
							<img src="${pageContext.request.contextPath}/resources/img/yong_profile.png">
						</div>

						<div class="userInfo">
							<span class="simple-text logo-normal" id="userId">masterAdmin</span>

							<button class="btn btn-default btnInfo" id="">개인정보조회</button>
							<button class="btn btn-default btnLogout" id="">로그아웃</button>
						</div>

					</div>
					<ul class="nav" id="side-menu">

						<!-- 관리자관리 시작 -->
						<li><a href="${pageContext.request.contextPath}/views/master/masteradmin.jsp"><i class="fa fa-table fa-fw"></i>
								관리자관리</a></li>
						<!-- 관리자관리 끝 -->

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
	</div>


	<div id= "wrapper" >

		<div id="page-wrapper">
			<div class="row">
				<div class="" id="nav">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${pageContext.request.contextPath}/views/master/masteradmin.jsp">Home</a></li>
							<li><a>></a></li>
							<li class="active"><a href="${pageContext.request.contextPath}/views/master/masteradmin_info.jsp">개인정보 조회</a></li>
							
					</ul>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row content">
				<div class="col-md-12">
					<h2>개인 정보 조회</h2>
					<div class="panel panel-default">
						<div class="panel-body">

							<div id="profile_container" class="col-md-12">
								<div id="masterPic" class="col-md-4">
									<!-- class="img-circle img-responsive" -->
									<img alt="Master Pic"
										src="${pageContext.request.contextPath}/resources/img/yong_profile.png"
										id="master_img" class="img-responsive">
								</div>
								<div id="userProfile" class="col-md-8">
									<div class="container">
										<h2>마스터관리자</h2>
										<p>
											<b>masteradmin</b>
										</p>
									</div>
									<hr>
									<ul class="container details">
										<!-- <li><p>
												<span id="pro_id" class="glyphicon glyphicon-user one">
													관리자번호</span>A001
											</p></li> -->
										<li><p>
												<span id="pro_phone"
													class="glyphicon glyphicon-earphone one"> 전화번호</span>010-0000-0000
											</p></li>
										<li><p>
												<span id="p_reg_date"
													class="glyphicon glyphicon-calendar one"> 등록일 </span>2018-01-01
											</p></li>
									</ul>
									<hr>

									<button class="btn btn-default" type="button"
										data-toggle="modal" data-target="#pwModifyModal">비밀번호
										수정</button>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- 비밀번호 변경 Modal 모달 관련 -->
	<div id="pwModifyModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">비밀번호 변경</h4>
				</div>
				<div class="modal-body">
					<!-- 내용 -->
					<form action="" method="post">
						
						<div class="form-group">
							<label for="pw_">현재 비밀번호</label><input type="password"
								class="form-control" id="pw_" name="pw_"
								placeholder="현재 비밀번호 입력 " required> 
						</div>
						
						<div class="form-group">
							<label for="newPw_">새 비밀번호</label><input type="password"
								class="form-control" id="newPw_" name="newPw_"
								placeholder="새 비밀번호 입력 " required> 
						</div>
							
						<div class="form-group">
							<label for="check">비밀번호 확인</label><input type="password"
								class="form-control" id="check" name="check"
								placeholder="비밀번호 확인" required> 
						</div>

				<div class="row">
					<div class="col-md-6 left">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
					<div class="col-md-6 right">
						<button type="submit" class="btn btn-default" id="btnAddCourse">확인</button>
					</div>
				</div>

					</form>

				</div>
			</div>

		</div>
	</div>

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
			//아래 속성 없애면 표 위, 아래에 표시되는 부분 제거 가능
			/* $('#dataTables-example').DataTable({
				responsive : true
			}); */

			$(".btnLogout").on("click", function() {
				window.location.assign("${pageContext.request.contextPath}/views/masterlogin/masterloginForm.jsp");
			})
		});
	</script>

</body>

</html>
