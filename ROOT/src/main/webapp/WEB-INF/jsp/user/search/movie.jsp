<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
<script type="text/javascript" src="/resources/js/common/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/common/search.js"></script>
<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
		const api_url = '/search/getMovieList';
		const params = {
			query : null,
			display : null,
			start : null,
			genre : null,
			country : null,
			yearfrom : null,
			yearto : null
		};
		
		params.query = '기생충';
		params.display = '100';
		params.start = '1000';
		params.country = 'KR';
		params.yearfrom = '2000';
		params.yearto = '2020';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.movieList);
		});
	});
	
});
</script>
</head>
<body>
	<input id="btn" type="button" value="영화 리스트" />
</body>
</html>