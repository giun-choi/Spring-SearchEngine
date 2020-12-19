<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getCafeArticleList';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.cafearticleList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
	});
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success card">' +	
			'<div class="panel-heading">' +	
				'<span class="glyphicon glyphicon-share-alt"></span>' +					
				'<a href="' + tagInfo.cafeurl + '" target="_blank" title="카페 들어가보기">&nbsp;&nbsp;' + tagInfo.cafename + '</a>' +					
			'</div>' +				
			'<div class="panel-body card-body">' +			
				'<p><a href="' + tagInfo.link + '" target="_blank">' + tagInfo.title + '</a></p>' +			
				'<hr />' +					
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