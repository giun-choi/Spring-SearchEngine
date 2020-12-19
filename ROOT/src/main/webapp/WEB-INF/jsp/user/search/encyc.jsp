<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getEncycList';
	const params = {
		query : null,
		display : null,
		start : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.encycList, function(index, item) {
			
			if(item.title !== '' && item.description !== '') {
				
				$('#contents-menu').append(fn_createTag(item));
			}
		});
	});
	
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success card">' +	
				'<div class="panel-heading">' +	
					'<span class="glyphicon glyphicon-book"></span>' +					
					'<a href="' + tagInfo.link + '" target="_blank" title="백과사전 들어가보기">&nbsp;&nbsp;' + tagInfo.title + '</a>' +					
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

		</div>
	</div>
</div>
