'use strict';

function fn_ConvertToQueryString(obj) {
		
	let query_string = '';
	let flag = true;
	
	for(const key in obj) {
		
		if(obj[key] !== null) {
			
			if(flag) {
				query_string += ( key + '=' + obj[key] );
				flag = false;
			} else {
				query_string += ( '&' + key + '=' + obj[key] );
			}
		}
	}
	
	return query_string;
}

function fn_RequestSearchData(api_url, params, callback) {
	
	$.ajax({
		async: true,
		type: 'GET',
		url: api_url,
		data: fn_ConvertToQueryString(params),
		dataType : 'json',
		beforeSend: function(b) {
//			console.log('beforeSend');
//			console.log(b);
        },
        complete: function(c) {
//        	console.log('complete');
//        	console.log(c);
        },
        success: function(data) {
            callback(data);
        },
        fail: function(f) {
//        	console.log('fail');
//        	console.log(f);
        }
	});
}