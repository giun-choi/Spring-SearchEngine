<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	params.query = '${query}';
			
	fn_requestSearchData('/search/getWebkrList', params, function(data) {
		
		$('#contents-menu').html('');
		if(data.webkrList.length === 0) {
			
			$('#contents-menu').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
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

function fn_noSearchTag(str) {
	
	return '<h1>' + str + '</h1>';
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