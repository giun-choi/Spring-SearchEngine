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
		type: 'POST',
		url: api_url,
		data: fn_ConvertToQueryString(params),
		async: true,
		timeout: 10000,
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