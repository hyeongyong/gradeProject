<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<%-- jstl-1.2.jar 파일 필요 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="${pageContext.request.contextPath}/vendor/morrisjs/morris.css" rel="stylesheet">

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
	vertical-align:text-bottom;
}

.navbar-header span {
	vertical-align: middle;
	font-size: 1.1em;
	font-weight:bold;
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
	margin-top: 20px;
}

/*------배경색 관련---------*/
.bgColor01 {
	background-color: #F5F5F5;
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
						<li><a href="${pageContext.request.contextPath}/views/master/masteradmin.jsp"><i class="fa fa-table"></i>
								관리자관리</a></li>
						<!-- 관리자관리 끝 -->

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
	</div>

	<div id="wrapper">
 	<div id="NavBar">
		</div>
		<div id="page-wrapper">
			<div class="row">
				<div class="" id="nav">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${pageContext.request.contextPath}/views/master/masteradmin.jsp">Home</a></li>
					</ul>
				</div>
			</div>

			<!-- /.row -->
		<div class="panel panel-default" id="input">
			<div class="panel-heading">계정 등록</div>
			<div class="panel-body" id="demo">
				<form role="form"
					action=""
					method="post">
					
					<div class="form-group">
						<input type="text" class="form-control" id="id_"
							name="adminId" maxlength="30" required="required" placeholder="아이디">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="pw_"
							name="pw_" placeholder="패스워드" maxlength="30"
							required="required">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>

				</form>

			</div>
		</div>
		
		<div class="panel panel-default" id="output">
			<div class="panel-heading">계정 출력</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>아이디</th>
							<th>등급</th>
							<th>계정잠금상태</th>
							<th>등록일</th>
							<th>전화번호</th>
							<th>패스워드초기화</th>
							<th>계정장금</th>
						</tr>
					</thead>
					<tbody>
						
						<tr>
							<td>super</td>
							<td>superadmin</td>
							<td>unlocking</td>
							<td>2018-01-01</td>
							<td>010-1121-4545</td>
							<td>
								<button class="btn btn-default btn-xs btnInit">패스워드초기화</button>
							</td>
							<td>
								<button class="btn btn-default btn-xs btnLock" disabled="disabled" >계정장금</button>
							</td>
						</tr>

						<tr>
							<td>admin</td>
							<td>manager</td>
							<td>unlocking</td>
							<td>2018-12-01</td>
							<td>010-1313-7777</td>
							<td>
								<button class="btn btn-default btn-xs btnInit">패스워드초기화</button>
							</td>
							<td>
								<button class="btn btn-default btn-xs btnLock" data-toggle="modal" data-target="#lock">계정장금</button>
							</td>
						</tr>
						
						<tr>
							<td>yong</td>
							<td>manager</td>
							<td>locking</td>
							<td>2018-12-05</td>
							<td>010-7878-1313</td>
							<td>
								<button class="btn btn-default btn-xs btnInit">패스워드초기화</button>
							</td>
							<td>
								<button class="btn btn-default btn-xs btnLock"  data-toggle="modal" data-target="#unlock">계정장금</button>
							</td>
						</tr>												
					</tbody>
				</table>


				<div class="form-group row">
						<form class="form-inline" method="POST">

							<div class="col-md-12 left">
												<!-- 한페이지 자료 개수? -->
									<button type="button" class="btn btn-sm">
													Count <span class="badge" id="count">3</span>
									</button>
							</div>

						</form>
				</div>		
						
			</div>
		</div>

	</div>
	<!-- /#wrapper -->
</div>

<!-- Modal 잠금-->
<div id="lock" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">계정 잠금</h4>
				</div>
				<div class="modal-body">

					<!-- 내용 -->
					<form action="" method="post">

						<div>
							<label for="id_">아이디</label> <input type="text"
								value="" class="form-control" id="id_"
								name="id_" placeholder="아이디" readonly="readonly">
						</div>
						
						<div>
							<label for="grade">등급</label> <input type="text"
								value="" class="form-control" id="grade"
								name="grade" placeholder="등급" readonly="readonly">
						</div>

						<div>
							<label for="accountLocking">계정잠금상태</label> <input type="text"
								value="" class="form-control" id="accountLocking"
								name="accountLocking" placeholder="계정잠금상태" readonly="readonly">
						</div>

						<div>
							<label for="owner_reg_date">등록일</label> <input type="text"
								value="" class="form-control" id="owner_reg_date"
								name="owner_reg_date" placeholder="등록일" readonly="readonly">
						</div>

						<div>
							<label for="owner_phone">전화번호</label> <input type="text"
								value="" class="form-control" id="owner_phone"
								name="owner_phone" placeholder="전화번호" readonly="readonly">
						</div>
							
						<div>
							<p>현재 계정을 잠그시겠습니까?</p>	
						</div>
						
						<div class="row">	
								
							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default"
									data-dismiss="modal">확인</button>
							</div>
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal 잠금해제-->
	<div id="unlock" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<!-- 제목 -->
					<h4 class="modal-title">계정 잠금 해제</h4>
				</div>
				<div class="modal-body">

					<!-- 내용 -->
					<form action="" method="post">

						<div class="form-group">
							<label for="id_">아이디</label> <input type="text"
								value="" class="form-control" id="id_"
								name="id_" placeholder="아이디" readonly="readonly">
						</div>
						
						<div class="form-group">
							<label for="grade">등급</label> <input type="text"
								value="" class="form-control" id="grade"
								name="grade" placeholder="등급" readonly="readonly">
						</div>

						<div class="form-group">
							<label for="accountLocking">계정잠금상태</label> <input type="text"
								value="" class="form-control" id="accountLocking"
								name="accountLocking" placeholder="계정잠금상태" readonly="readonly">
						</div>

						<div class="form-group">
							<label for="owner_reg_date">등록일</label> <input type="text"
								value="" class="form-control" id="owner_reg_date"
								name="owner_reg_date" placeholder="등록일" readonly="readonly">
						</div>

						<div class="form-group">
							<label for="owner_phone">전화번호</label> <input type="text"
								value="" class="form-control" id="owner_phone"
								name="owner_phone" placeholder="전화번호" readonly="readonly">
						</div>
						
						<div>
							<p>현재 계정에 잠금을 해제하시겠습니까?</p>	
						</div>
						
						<div class="row">	
								
							<div class="col-md-6 left">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">취소</button>
							</div>
							<div class="col-md-6 right">
								<button type="submit" class="btn btn-default"
									data-dismiss="modal">확인</button>
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

	<!-- Morris Charts JavaScript -->
	<script src="${pageContext.request.contextPath}/vendor/raphael/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/morrisjs/morris.min.js"></script>
	<script src="${pageContext.request.contextPath}/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>
	<!-- 구글API -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

	<script>

		$(document).ready(function() {
			
			$(".btnInfo").on("click", function(){
				window.location.assign("${pageContext.request.contextPath}/views/master/masteradmin_info.jsp");
			})
			

			$(".btnLogout").on("click", function() {
				window.location.assign("${pageContext.request.contextPath}/views/masterlogin/masterloginForm.jsp");
			})
			
			$(".btnInit").on("click",function(){
				
				$("#input .panel-heading").text("패스워드 초기화")
				$("#input #id_").val($(this).parent().siblings("td").eq(0).text());
				$("#input #id_").attr("readonly", "readonly");
				
				$("#input #pw_").attr("placeholder", "전화번호 뒷 4자리");
				
				
			})
			
		});

		
	</script>
</body>

</html>
