package user.search.webkr.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class WebkrController {
	
	private static final Logger logger = LoggerFactory.getLogger(WebkrController.class);
	
	@RequestMapping("/webkr")
	public String getWebkr() {
		
		logger.info("웹문서 페이지");
		return "user/search/webkr";
	}
	
}
