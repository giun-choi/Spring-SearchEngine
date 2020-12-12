<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통합</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/adult/getIntegratedList';
		const params = {
			query : null
		};
		
		params.query = '스마트폰';
				
		fn_RequestSearchData(api_url, params, function(data) {
			const list = JSON.parse(data.adultList);
			
			console.log(list);
		});
	});
	
});
</script>
</head>
<body>
<input id="btn" type="button" value="통합 리스트" />
</body>
</html>