<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getNewsList';
		const params = {
			query : null,
			display : null,
			start : null,
			sort : null
		};
		
		params.query = '비트코인';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.newsList);
		});
	});
	
});
</script>
