<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="/resources/img/favicon.ico">
	<link rel="icon" href="/resources/img/favicon.ico">
	<%@ include file="/WEB-INF/jsplink/cssSearchLink.jsp"%>
	<%@ include file="/WEB-INF/jsplink/jsLink.jsp"%>
	<title>WOONI 검색</title>
	<script type="text/javascript">
	$(function() {
		
		let title = '${query}';
		
		if(title === '' || title === null || title === undefined) {
			
			title = 'WOONI';
		} else {
			
			title += ' - WOONI 검색';	
		} 
		
		$(document).attr('title', title);
	});
	</script>
</head>
<body>
	<tiles:insertAttribute name="header" ignore="true" />
	<tiles:insertAttribute name="section" ignore="true" />
	<tiles:insertAttribute name="center" ignore="true" />
</body>
</html>