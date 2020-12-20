<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	params.query = '${query}';
			
	fn_requestSearchData('/search/getNewsList', params, function(data) {
		
		$('#contents-menu').html('');
		if(data.newsList.length === 0) {
			
			$('#contents-menu').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.newsList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));			
		});
		
	});
	
});

function fn_dateToStr(format) {

    let year = format.getFullYear();
    let month = format.getMonth() + 1;
    let date = format.getDate();
    
    let hour = format.getHours();
    let min = format.getMinutes();
    let sec = format.getSeconds();
    
    if(month < 10) month = '0' + month;
    if(date < 10) date = '0' + date;

    if(hour < 10) hour = '0' + hour;
    if(min < 10) min = '0' + min;
    if(sec < 10) sec = '0' + sec;

    return year + "-" + month + "-" + date + " " + hour + ":" + min + ":" + sec;
}

function fn_createTag(tagInfo) {
	
	return	'<div class="panel panel-success card">' +	
				'<div class="panel-heading">' +	
					'<span class="glyphicon glyphicon-time"></span>' +					
					'<span>&nbsp;&nbsp;' + fn_dateToStr(new Date(tagInfo.pubDate)) + '</span>' +
				'</div>' +				
				'<div class="panel-body card-body">' +			
					'<p><a href="' + tagInfo.link + '" target="_blank">' + tagInfo.title + '</a></p>' +			
					'<hr />' +					
					'<a href="' + tagInfo.originallink + '" target="_blank">' +					
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
