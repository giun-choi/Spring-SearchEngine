<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WOONI</title>
<link rel="stylesheet" href="/resources/css/bootstrap-3.3.0/bootstrap.min.css">
<style type="text/css">
/* 헤더영역 */
.header {
	margin-top: 20px;
}
.logo {
	height: 34px;
	font-size: x-large;
	color: #5cb85c;
	font-weight: bold;
}
.wrap-logo, .wrap-search {
	padding: 10px;
}
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

/* pc */
@media screen and (min-width: 768px) {

	/* 헤더영역 */
    #adv-search {
        width: 500px;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 500px;
    }
    
    /* 섹션영역 */
    .m-menu {
    	display: none;
    }
    .p-menu-tab li a {
    	color: black;
    }
	.p-menu-tab .active a {
		background-color: #5cb85c !important;
	}
	
}

/* mobile */
@media screen and (max-width: 767px) {

	/* 헤더영역 */
    #adv-search {
        width: 332px;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 332px;
    }
    
    /* 섹션영역 */
    .blank {
    	display: none;
    }
    .p-menu {
    	display: none;
    }
    .m-menu {
    	padding-left: 10px;
    	padding-right: 10px;
    	padding-bottom: 0px !important;
    }
    .m-menu-tab {
		width: 332px;
		position: static !important;
		min-width: 332px;
		white-space: nowrap;
		overflow-x: auto;
		padding-bottom: 10px;
	}
	.m-menu-tab li {
		display: inline-block;
        float: none;
	}
	.m-menu-tab li a {
		color: black;
	}
	
	.m-menu-tab .active a {
		background-color: #5cb85c !important;
	}
	
}
</style>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-3.3.0/bootstrap.min.js"></script>
</head>
<body>

<div class="container header">
	<div class="row">
		<div class="col-sm-2 wrap-logo text-center">
			<a href="#" class="logo">WOONI</a>
		</div>
		<div class="wrap-search">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0" selected>All Snippets</option>
                                        <option value="1">Featured</option>
                                        <option value="2">Most popular</option>
                                        <option value="3">Top rated</option>
                                        <option value="4">Most commented</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Author</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Contains the words</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </div>
                </div>
          	</div>
        </div>
	</div>
</div>					

<div class="container section">
	<div class="row">
		<div class="col-sm-2 blank">
		
		</div>
		<div class="p-menu">
			<ul class="nav nav-pills p-menu-tab">
				<li role="presentation" class="active"><a href="/search/integrated">전체</a></li>
				<li role="presentation"><a href="/search/kin">지식 iN</a></li>
				<li role="presentation"><a href="/search/blog">블로그</a></li>
				<li role="presentation"><a href="/search/cafearticle">카페글</a></li>
				<li role="presentation"><a href="/search/image">이미지</a></li>
				<li role="presentation"><a href="/search/news">뉴스</a></li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> 
						더보기 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation"><a href="/search/shop">쇼핑</a></li>
						<li role="presentation"><a href="/search/book">책</a></li>
						<li role="presentation"><a href="/search/movie">영화</a></li>
						<li role="presentation"><a href="/search/local">지역</a></li>
						<li role="presentation"><a href="/search/errata">오타변환</a></li>
						<li role="presentation"><a href="/search/encyc">백과사전</a></li>
						<li role="presentation"><a href="/search/webkr">웹문서</a></li>
						<li role="presentation"><a href="/search/doc">전문자료</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="m-menu">
			<ul class="nav nav-pills m-menu-tab">
				<li role="presentation" class="active"><a href="/search/integrated">전체</a></li>
				<li role="presentation"><a href="/search/kin">지식 iN</a></li>
				<li role="presentation"><a href="/search/blog">블로그</a></li>
				<li role="presentation"><a href="/search/cafearticle">카페글</a></li>
				<li role="presentation"><a href="/search/image">이미지</a></li>
				<li role="presentation"><a href="/search/news">뉴스</a></li>
				<li role="presentation"><a href="/search/shop">쇼핑</a></li>
				<li role="presentation"><a href="/search/book">책</a></li>
				<li role="presentation"><a href="/search/movie">영화</a></li>
				<li role="presentation"><a href="/search/local">지역</a></li>
				<li role="presentation"><a href="/search/errata">오타변환</a></li>
				<li role="presentation"><a href="/search/encyc">백과사전</a></li>
				<li role="presentation"><a href="/search/webkr">웹문서</a></li>
				<li role="presentation"><a href="/search/doc">전문자료</a></li>
			</ul>
		</div>
	</div>
</div>


</body>
</html>
