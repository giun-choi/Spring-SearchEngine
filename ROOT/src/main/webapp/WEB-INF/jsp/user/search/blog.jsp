<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getBlogList';
	const params = {
		query : sessionStorage.getItem('search_word'),
		display : null,
		start : null,
		sort : null
	};
	params.query = sessionStorage.getItem('search_word');
			
	fn_requestSearchData(api_url, params, function(data) {

		console.log(data.adultList);
	});
	
	
});
</script>

<div class="container contents">
	
</div>