<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	params.query = '${query}';
			
	fn_requestSearchData('/search/getBlogList', params, function(data) {
		
		$('#contents-menu').html('');
		if(data.blogList.length === 0) {
			
			$('#contents-menu').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.blogList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
	});
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success card">' +	
				'<div class="panel-heading">' +	
					'<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>' + fn_dateFomat(tagInfo.postdate) + '</b></p>' +					
					'<span class="glyphicon glyphicon-share-alt"></span>' +					
					'<a href="' + tagInfo.bloggerlink + '" target="_blank" title="블로그 들어가보기">&nbsp;&nbsp;' + tagInfo.bloggername + '</a>' +					
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

function fn_dateFomat(str) {
	
    const year = str.substr(0, 4);
    const month = str.substr(4, 2);
    const day = str.substr(6, 2);
    
    return year + '-' + month + '-' + day;
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

		</div>
	</div>
</div>
