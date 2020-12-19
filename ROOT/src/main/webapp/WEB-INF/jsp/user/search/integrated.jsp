<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
	
	let api_url = '';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null
	};
	params.query = '${query}';

	api_url = '/search/getKinList';
	fn_requestSearchData(api_url, params, function(data) {

		$.each(data.kinList, function(index, item) {
			
			if(index < 3) {
				console.log(item);
			}
		});
	});	
	
	api_url = '/search/getBlogList';
	fn_requestSearchData(api_url, params, function(data) {

		$.each(data.blogList, function(index, item) {
			if(index < 3) {
				console.log(item);
			}
		});
	});	
	
	api_url = '/search/getCafeArticleList';
	fn_requestSearchData(api_url, params, function(data) {

		$.each(data.cafearticleList, function(index, item) {
			if(index < 3) {
				console.log(item);
			}
		});
	});	
	
	api_url = '/search/getImageList';
	fn_requestSearchData(api_url, params, function(data) {

		$.each(data.imageList, function(index, item) {
			if(index < 3) {
				console.log(item);
			}
		});
	});	
	
	api_url = '/search/getNewsList';
	fn_requestSearchData(api_url, params, function(data) {

		$.each(data.kinList, function(index, item) {
			if(index < 3) {
				console.log(item);
			}
		});
	});	
});
</script>

<div class="container contents">
	<div class="row">
		<div class="col-sm-2">
			<!-- 로고 밑에 공백 -->
		</div>
		<div id="contents-menu" class="col-sm-6 contents-menu">
			<!-- 블로그 검색 내용 -->
		</div>
	</div>
</div>
