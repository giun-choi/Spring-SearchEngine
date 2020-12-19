<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
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
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.movieList, function(index, item) {
			
			//$('#contents-menu').append(fn_createTag(item));
			console.log(item);
		});
	});
	
});
</script>
