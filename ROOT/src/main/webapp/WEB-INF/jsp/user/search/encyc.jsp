<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getEncycList';
		const params = {
			query : null,
			display : null,
			start : null
		};
		
		params.query = '나무';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.encycList);
		});
	});
	
});
</script>
