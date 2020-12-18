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

		console.log(data.kinList);
	});	
	
	api_url = '/search/getBlogList';
	fn_requestSearchData(api_url, params, function(data) {

		console.log(data.blogList);
	});	
	
	api_url = '/search/getCafeArticleList';
	fn_requestSearchData(api_url, params, function(data) {

		console.log(data.cafearticleList);
	});	
	
	api_url = '/search/getImageList';
	fn_requestSearchData(api_url, params, function(data) {

		console.log(data.imageList);
	});	
	
	api_url = '/search/getNewsList';
	fn_requestSearchData(api_url, params, function(data) {

		console.log(data.newsList);
	});	
});
</script>