<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getWebkrList';
		const params = {
			query : null,
			display : null,
			start : null
		};
		
		params.query = '안드로이드';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.webkrList);
		});
	});
	
});
</script>
