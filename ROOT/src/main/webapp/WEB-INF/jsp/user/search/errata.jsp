<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오타변환</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
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
</head>
<body>
<input id="btn" type="button" value="오타변환 판별 리스트" />
</body>
</html>