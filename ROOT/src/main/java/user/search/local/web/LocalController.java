package user.search.local.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class LocalController {

	private static final Logger logger = LoggerFactory.getLogger(LocalController.class);
	
	@RequestMapping("/local")
	public String getLocal() {
		
		logger.info("지역 iN 페이지");
		return "user/search/local";
	}
	
}
