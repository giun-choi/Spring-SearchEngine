<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getCafeArticleList';
		const params = {
			query : null,
			display : null,
			start : null,
			sort : null
		};
		
		params.query = '커피';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.cafearticleList);
		});
	});
	
});
</script>
