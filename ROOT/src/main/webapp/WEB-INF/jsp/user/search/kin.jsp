<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
	
	const api_url = '/search/getKinList';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null
	};
		
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		const list = data.kinList;
		$('#contents-menu').html('');
		$.each(list, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
		
	});
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success">' +
				'<div class="panel-heading title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;' + tagInfo.title + '</div>' +
				'<div class="panel-body description"><a href="' + tagInfo.link + '" target="_blank">' + tagInfo.description + '</a></div>' +
			'</div>';
}
</script>

<div class="container contents">
	<div class="row">
		<div class="col-sm-2">
			<!-- 로고 밑에 공백 -->
		</div>
		<div id="contents-menu" class="col-sm-6 contents-menu">
			<!-- 검색 결과 내용 -->
		</div>
	</div>
</div>