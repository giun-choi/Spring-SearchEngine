<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getImageList';
		const params = {
			query : null,
			display : null,
			start : null,
			sort : null,
			filter : null
		};
		
		params.query = '고양이';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.imageList);
		});
	});
	
});
</script>
