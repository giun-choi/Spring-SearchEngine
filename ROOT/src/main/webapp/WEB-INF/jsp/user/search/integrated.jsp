<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HUHU</title>
<link rel="stylesheet" href="/resources/css/bootstrap-3.3.7/bootstrap.min.css">
<style type="text/css">
.header {
	padding: 20px 10px 5px 10px;
}

.logo {
	font-size: large;
	color: green;
}

.search {
	border-radius: 17px;
}

@media ( max-width : 768px) {
	.btn-search {
		display: none;
	}
}


 
.menu-tab ul li a {
	color: black;
}
.menu-tab ul .active a {
	color: green;
}


</style>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-3.3.7/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid header">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="search" class="col-sm-1 control-label logo">HUHU</label>
				<div class="col-sm-6">
					<input type="text" class="form-control search" id="search" placeholder="search">
				</div>
				<button type="submit" class="btn btn-success btn-search">검색</button>
			</div>
		</form>
	</div>
	<div class="container-fluid menu">
		<label for="search" class="col-sm-1 control-label"></label>
		<div class="col-sm-6 menu-tab">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="#" class="menu-name">전체</a></li>
				<li role="presentation"><a href="#" class="menu-name">지식 iN</a></li>
				<li role="presentation"><a href="#" class="menu-name">블로그</a></li>
				<li role="presentation"><a href="#" class="menu-name">카페글</a></li>
				<li role="presentation"><a href="#" class="menu-name">이미지</a></li>
				<li role="presentation"><a href="#" class="menu-name">뉴스</a></li>
				<li role="presentation"><a href="#" class="menu-name">쇼핑</a></li>
				<li role="presentation" class="dropdown">
				<a href="#" class="dropdown-toggle menu-name" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false"> 더보기 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">책</a></li>
						<li><a href="#">영화</a></li>
						<li><a href="#">지역</a></li>
						<li><a href="#">오타변환</a></li>
						<li><a href="#">백과사전</a></li>
						<li><a href="#">웹문서</a></li>
						<li><a href="#">전문자료</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- <input id="btn" type="button" value="통합 리스트" /> -->
</body>
</html>
