<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getBookList';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null,
		d_titl : null,
		d_auth : null,
		d_cont : null,
		d_isbn : null,
		d_publ : null,
		d_dafr : null,
		d_dato : null,
		d_catg : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.bookList, function(index, item) {
			
			//$('#contents-menu').append(fn_createTag(item));
			
			console.log(item);
		});
	});
	
});
</script>
