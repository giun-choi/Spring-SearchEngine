package user.search.encyc.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class EncycController {

	private static final Logger logger = LoggerFactory.getLogger(EncycController.class);
	
	@RequestMapping("/encyc")
	public String getEncyc() {
		
		logger.info("백과사전 페이지");
		return "user/search/encyc";
	}
	
}
