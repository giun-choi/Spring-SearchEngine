<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function() {
	
	params.query = '${query}';

	/* 지식 iN */
	fn_requestSearchData('/search/getKinList', params, function(data) {

		$('#kin-body').html('');
		if(data.kinList.length === 0) {
			
			$('#kin-body').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.kinList, function(index, item) {
			
			if(index < 3) {
				
				$('#kin-body').append(fn_createKinTag(item));
			}
		});
	});	
	
	/* 블로그 */
	fn_requestSearchData('/search/getBlogList', params, function(data) {

		$('#blog-body').html('');
		if(data.blogList.length === 0) {
			
			$('#blog-body').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.blogList, function(index, item) {
			if(index < 3) {

				$('#blog-body').append(fn_createBlogTag(item));
			}
		});
	});	
	
	/* 카페글 */
	fn_requestSearchData('/search/getCafeArticleList', params, function(data) {

		$('#cafearticle-body').html('');
		$.each(data.cafearticleList, function(index, item) {
			if(index < 3) {

				$('#cafearticle-body').append(fn_createCafeTag(item));
			}
		});
	});	
	
	/* 뉴스 */
	fn_requestSearchData('/search/getNewsList', params, function(data) {

		$('#news-body').html('');
		if(data.newsList.length === 0) {
			
			$('#news-body').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.newsList, function(index, item) {
			if(index < 3) {

				$('#news-body').append(fn_createNewsTag(item));
			}
		});
	});	
	
	/* 이미지 */
	fn_requestSearchData('/search/getImageList', params, function(data) {

		$('#image-body').html('');
		if(data.imageList.length === 0) {
			
			$('#image-body').append(fn_noSearchTag('검색결과가 존재하지 않습니다.'));
			return;
		}
		$.each(data.imageList, function(index, item) {
			if(index < 6) {

				$('#image-body').append(fn_createImgTag(item));
			}
		});
	});	
});

function fn_createKinTag(tagInfo) {
	
	return	'<div class="panel panel-success">' +
				'<div class="panel-heading title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;' + tagInfo.title + '</div>' +
				'<div class="panel-body description"><a href="' + tagInfo.link + '" target="_blank">' + tagInfo.description + '</a></div>' +
			'</div>';
}

function fn_createBlogTag(tagInfo) {
	
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

function fn_createCafeTag(tagInfo) {
	
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

function fn_createNewsTag(tagInfo) {
	
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

function fn_createImgTag(tagInfo) {
	
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
			<!-- 지식 iN -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">지식 iN</h3>
				</div>
				<div class="panel-body" id="kin-body">
					<div class="panel panel-success">
						<div class="panel-heading title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;제목</div>
						<div class="panel-body description"><a href="#" target="_blank">내용</a></div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;제목</div>
						<div class="panel-body description"><a href="#" target="_blank">내용</a></div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;제목</div>
						<div class="panel-body description"><a href="#" target="_blank">내용</a></div>
					</div>
				</div>
			</div>
			<!-- 블로그 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">블로그</h3>
				</div>
				<div class="panel-body" id="blog-body">
					<div class="panel panel-success card">
						<div class="panel-heading">
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>일시</b></p>
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="블로그 들어가보기">&nbsp;&nbsp;블로그 이름</a>		
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>
					<div class="panel panel-success card">
						<div class="panel-heading">
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>일시</b></p>
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="블로그 들어가보기">&nbsp;&nbsp;블로그 이름</a>		
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>					
					<div class="panel panel-success card">
						<div class="panel-heading">
							<p><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;<b>일시</b></p>
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="블로그 들어가보기">&nbsp;&nbsp;블로그 이름</a>		
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>					
				</div>
			</div>
			<!-- 카페글 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">카페글</h3>
				</div>
				<div class="panel-body" id="cafearticle-body">
					<div class="panel panel-success card">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="카페 들어가보기">&nbsp;&nbsp;카페 이름</a>
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<a href="#" target="_blank">내용</a>
						</div>
					</div>		
					<div class="panel panel-success card">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="카페 들어가보기">&nbsp;&nbsp;카페 이름</a>
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<a href="#" target="_blank">내용</a>
						</div>
					</div>		
					<div class="panel panel-success card">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-share-alt"></span>
							<a href="#" target="_blank" title="카페 들어가보기">&nbsp;&nbsp;카페 이름</a>
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<a href="#" target="_blank">내용</a>
						</div>
					</div>		
				</div>
			</div>
			<!-- 뉴스 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">뉴스</h3>
				</div>
				<div class="panel-body" id="news-body">
					<div class="panel panel-success card">				
						<div class="panel-heading">
							<span class="glyphicon glyphicon-time"></span>				
							<span>&nbsp;&nbsp;일시</span>			
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>
					<div class="panel panel-success card">				
						<div class="panel-heading">
							<span class="glyphicon glyphicon-time"></span>				
							<span>&nbsp;&nbsp;일시</span>			
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>
					<div class="panel panel-success card">				
						<div class="panel-heading">
							<span class="glyphicon glyphicon-time"></span>				
							<span>&nbsp;&nbsp;일시</span>			
						</div>
						<div class="panel-body card-body">
							<p><a href="#" target="_blank">제목</a></p>
							<hr />
							<a href="#" target="_blank">내용</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 이미지 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">이미지</h3>
				</div>
				<div class="panel-body" id="image-body">
					<div class="col-sm-6 col-sm-6 image-card">
						<div class="thumbnail">			
							<a href="#" target="_blank">		
								<img src="https://search.pstatic.net/common/?src=http://imgnews.naver.net/image/375/2013/03/11/30000051544_59_20130311152422.jpg&type=b150" alt="썸네일">
							</a>		
							<p class="text-center" style="margin-top: 10px;">300 X 300</p>
							<p class="text-center">제목</p>
						</div>			
					</div>				
					<div class="col-sm-6 col-sm-6 image-card">
						<div class="thumbnail">			
							<a href="#" target="_blank">		
								<img src="https://search.pstatic.net/common/?src=http://imgnews.naver.net/image/375/2013/03/11/30000051544_59_20130311152422.jpg&type=b150" alt="썸네일">
							</a>		
							<p class="text-center" style="margin-top: 10px;">300 X 300</p>
							<p class="text-center">제목</p>
						</div>			
					</div>										<div class="col-sm-6 col-sm-6 image-card">
						<div class="thumbnail">			
							<a href="#" target="_blank">		
								<img src="https://search.pstatic.net/common/?src=http://imgnews.naver.net/image/375/2013/03/11/30000051544_59_20130311152422.jpg&type=b150" alt="썸네일">
							</a>		
							<p class="text-center" style="margin-top: 10px;">300 X 300</p>
							<p class="text-center">제목</p>
						</div>			
					</div>	
					<div class="col-sm-6 col-sm-6 image-card">
						<div class="thumbnail">			
							<a href="#" target="_blank">		
								<img src="https://search.pstatic.net/common/?src=http://imgnews.naver.net/image/375/2013/03/11/30000051544_59_20130311152422.jpg&type=b150" alt="썸네일">
							</a>		
							<p class="text-center" style="margin-top: 10px;">300 X 300</p>
							<p class="text-center">제목</p>
						</div>			
					</div>										
				</div>
			</div>	
					
		</div>
	</div>
</div>
