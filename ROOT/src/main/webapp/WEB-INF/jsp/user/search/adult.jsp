<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 검색어 판별</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getAdultList';
		const params = {
			query : null
		};
		
		params.query = '엉덩이';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			
			console.log(data.adult);
		});
	});
	
});
</script>
</head>
<body>
<input id="btn" type="button" value="성인 검색어 판별 리스트" />
</body>
</html>