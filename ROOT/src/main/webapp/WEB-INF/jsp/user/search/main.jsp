<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인</title>
<link rel="stylesheet" href="/resources/css/bootstrap-3.3.0/bootstrap.min.css">
<style type="text/css">
.seach-bar {
	height: 80px;
	border: 1px solid black;
}
.logo{
	margin-bottom: 40px;
	color: #5cb85c;
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
	.header {
	    margin-top: 120px;
	}
    #adv-search {
        width: 500px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 500px;
    }
}

/* mobile */
@media screen and (max-width: 767px) {
	.header {
	    margin-top: 50px;
	}
	#adv-search {
        width: 332px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 332px;
    }
}
</style>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-3.3.0/bootstrap.min.js"></script>
</head>
<body>
<div class="container header">
	<h1 class="text-center logo"><b>WOONI</b></h1>
	<div class="row">
		<div class="col-md-12">
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

	<p><a href="/search/integrated">통합 페이지</a></p>
	<p><a href="/search/movie">영화 페이지</a></p>
	<p><a href="/search/blog">블로그 페이지</a></p>
	<p><a href="/search/news">뉴스 페이지</a></p>
	<p><a href="/search/adult">성인 검색어 판별 페이지</a></p>
	<p><a href="/search/encyc">백과사전 페이지</a></p>
	<p><a href="/search/cafearticle">카페글 페이지</a></p>
	<p><a href="/search/kin">지식 iN 페이지</a></p>
	<p><a href="/search/local">지역 페이지</a></p>
	<p><a href="/search/errata">오타변환 페이지</a></p>
	<p><a href="/search/webkr">웹문서 페이지</a></p>
	<p><a href="/search/image">이미지 페이지</a></p>
	<p><a href="/search/shop">쇼핑 페이지</a></p>
	<p><a href="/search/doc">전문자료 페이지</a></p>
	<p><a href="/search/book">책 페이지</a></p>
</body>
</html>