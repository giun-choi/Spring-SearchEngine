<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지식 iN</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getKinList';
		const params = {
			query : null,
			display : null,
			start : null,
			sort : null
		};
			
		params.query = '아이폰';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.kinList);
		});
	});
	
});
</script>
</head>
<body>
<input id="btn" type="button" value="지식 iN 리스트" />
</body>
</html>