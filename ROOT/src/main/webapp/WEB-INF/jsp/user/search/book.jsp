<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
		
	const api_url = '/search/getBookList';
	const params = {
		query : null,
		display : null,
		start : null,
		sort : null,
		d_titl : null,
		d_auth : null,
		d_cont : null,
		d_isbn : null,
		d_publ : null,
		d_dafr : null,
		d_dato : null,
		d_catg : null
	};
	
	params.query = '${query}';
			
	fn_requestSearchData(api_url, params, function(data) {
		
		$('#contents-menu').html('');
		$.each(data.bookList, function(index, item) {
			
			$('#contents-menu').append(fn_createTag(item));
		});
	});
	
});

function fn_createTag(tagInfo) {
	
	return	'<div class="media" style="border: 2px solid #5cb85c; padding: 5px; border-radius: 5px;">' +					
				'<div class="media-left">' +								
					'<a href="' + tagInfo.link + '">' +									
						'<img class="media-object" src="' + tagInfo.image + '" alt="책 이미지">' +										
					'</a>' +									
				'</div>' +								
				'<div class="media-body">' +								
					'<p><b>책 제목 : </b>' + tagInfo.title + '</p>'	 +								
					'<p><b>저자 : </b>' + tagInfo.author + '</p>' +									
					'<p><b>출판 : </b>' + tagInfo.publisher + '&nbsp;&nbsp;|&nbsp;&nbsp;' + fn_dateFomat(tagInfo.pubdate) + '</p>' +									
				'</div>' +								
				'<p style="margin-top: 5px;">학업에서 취업까지, 힘들이지 않고 해결하는‘<b>그물망 공부법</b>’으로 갈아타라!세계가 모셔 가는 인재로 만들어주는『<b>그물망 공부법</b>』. 이 책은 NYU 스턴 비즈니스 스쿨에서 에콜 뒤 루브르까지 조승연이 공부의 길에서 보고 겪은 글로벌 3%인재들의 현장보고서다. 베스트셀러 &lt;공부기술&gt;의 저자 조승연이... </p>' +								
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

		</div>
	</div>
</div>

