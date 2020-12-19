<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getWebkrList';
	const params = {
		query : null,
		display : null,
		start : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.webkrList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
	});
	
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success card">' +	
				'<div class="panel-heading">' +	
					'<span class="glyphicon glyphicon-file"></span>' +					
					'<a href="' + tagInfo.link + '" target="_blank" title="문서 들어가보기">&nbsp;&nbsp;' + tagInfo.title + '</a>' +					
				'</div>' +				
				'<div class="panel-body description">' +			
					'<a href="' + tagInfo.link + '" target="_blank">' +					
						tagInfo.description +					
					'</a>' +				
				'</div>' +		
			'</div>';
}
</script>

<div class="container contents">
	<div class="row">
		<div class="col-sm-2">
			<!-- 로고 밑에 공백 -->
		</div>
		<div id="contents-menu" class="col-sm-6 contents-menu">
			<!-- 블로그 검색 내용 -->
		</div>
	</div>
</div>