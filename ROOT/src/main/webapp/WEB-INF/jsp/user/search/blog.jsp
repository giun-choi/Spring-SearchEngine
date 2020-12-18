<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getBlogList';
	const params = {
		query : sessionStorage.getItem('search_word'),
		display : null,
		start : null,
		sort : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.blogList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
	});
});

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success blog">' +	
				'<div class="panel-heading">' +	
					'<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>' + fn_dateFomat(tagInfo.postdate) + '</b></p>' +					
					'<span class="glyphicon glyphicon-share-alt"></span>' +					
					'<a href="' + tagInfo.bloggerlink + '" target="_blank" title="블로그 들어가보기">&nbsp;&nbsp;' + tagInfo.bloggername + '</a>' +					
				'</div>' +				
				'<div class="panel-body blog-body">' +			
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


</script>

<div class="container contents">
	<div class="row">
		<div class="col-sm-2">
			<!-- 로고 밑에 공백 -->
		</div>
		<div id="contents-menu" class="col-sm-6 contents-menu">
			<div class="panel panel-success blog">
				<div class="panel-heading">
					<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>2020-12-15</b></p>
					<span class="glyphicon glyphicon-share-alt"></span>
					<a href="https://blog.naver.com/keroann" target="_blank">꿈꾸는 그곳!! 내가 만들어보자!!</a>
				</div>
				<div class="panel-body blog-body">
					<p><a href="https://blog.naver.com/keroann?Redirect=Log&logNo=222174678752" target="_blank"><b>감자</b>튀김 만드는법 제대로 튀겨야 감튀지</a></p>
					<hr />
					<a href="https://blog.naver.com/keroann?Redirect=Log&logNo=222174678752" target="_blank">
						싶어 집안에 재료를 찾아보니 <b>감자</b>가 있길래 감튀했죠 낮이고 일하고 있어서 시원한 걸 곁들여 먹을 수 없어 아쉬움이 어찌나 크던지요~ <b>감자</b>튀김 만드는법 쉬우니 다음에
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
