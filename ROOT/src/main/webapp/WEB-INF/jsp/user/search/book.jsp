<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	$('#btn').click(function() {
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
		
		params.query = '그물망 공부법';
				
		fn_RequestSearchData(api_url, params, function(data) {
			
			console.log(data.bookList);
		});
	});
	
});
</script>
