<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getImageList';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null,
		filter : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
 		$('#contents-menu').html('');
 		$.each(data.imageList, function(index, item) {
			
 			$('#contents-menu').append(fn_createTag(item));
 		});
		
	});
	
});

function fn_createTag(tagInfo) {
	
	return	'<div class="col-sm-6 col-sm-6 image-card">' +
				'<div class="thumbnail">' +
					'<a href="' + tagInfo.link + '" target="_blank">' +
						'<img src="' + tagInfo.thumbnail + '" alt="썸네일">' +
					'</a>' +
					'<p class="text-center" style="margin-top: 10px;">' + tagInfo.sizewidth + ' X ' + tagInfo.sizeheight + '</p>' +
					'<p class="text-center">' + tagInfo.title + '</p>' +
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
