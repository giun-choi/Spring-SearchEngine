<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getMovieList';
	const params = {
		query : null,
		display : null,
		start : null,
		genre : null,
		country : null,
		yearfrom : null,
		yearto : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.movieList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
			console.log(item);
		});
	});
	
});

function fn_createTag(tagInfo) {
	
	let _director = tagInfo.director;
	let _actor = tagInfo.actor;
	let _userRating = tagInfo.userRating;
	
	if(_director !== '') _director = '<p style="margin-top: 5px;"><b>감독</b> : ' + fn_trimLastChar(tagInfo.director) + '</p>';
	if(_actor !== '') _actor = '<p style="margin-top: 5px;"><b>배우</b> : ' + fn_trimLastChar(tagInfo.actor) + '</p>';
	if(_userRating !== '') _userRating = '<p style="margin-top: 5px;"><b>평점</b> : ' + tagInfo.userRating + '</p>';	
	
	const _image = (tagInfo.image !== '' ? tagInfo.image : '/resources/img/no_image.png');
	
	return	'<div class="media" style="border: 2px solid #5cb85c; padding: 5px; border-radius: 5px;">' +
				'<div class="media-left">' +
					'<a href="' + tagInfo.link + '">' +
						'<img class="media-object" src="' + _image + '" alt="...">' +
					'</a>' +
				'</div>' +
				'<div class="media-body">' +
					'<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;' + tagInfo.pubDate + '</p>' +
					'<p><b>영화 제목 : </b>' + tagInfo.title + '</p>' +
					_director +
					_actor +
					_userRating +
				'</div>' +
			'</div>';
}

function fn_trimLastChar(str) {
	
	return str.substring(0, str.length-1);
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
