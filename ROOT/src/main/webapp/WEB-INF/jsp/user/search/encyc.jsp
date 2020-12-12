<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>백과사전</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/encyc/getEncycList';
		const params = {
			query : null,
			display : null,
			start : null
		};
		
		params.query = '나무';
				
		fn_RequestSearchData(api_url, params, function(data) {
			const list = JSON.parse(data.encycList);
			
			console.log(list);
		});
	});
	
});
</script>
</head>
<body>
<input id="btn" type="button" value="백과사전 리스트" />
</body>
</html>