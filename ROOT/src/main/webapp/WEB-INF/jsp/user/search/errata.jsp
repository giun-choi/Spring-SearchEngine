<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getErrataList';
		const params = {
			query : null
		};
		
		params.query = '산기슥';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.errata);
		});
	});
	
});
</script>
