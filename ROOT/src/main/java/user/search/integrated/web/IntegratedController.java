package user.search.integrated.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class IntegratedController {

	private static final Logger logger = LoggerFactory.getLogger(IntegratedController.class);
	
	@RequestMapping("/integrated")
	public String getIntegrated() {
		
		logger.info("통합 페이지");
		return "user/search/integrated";
	}
	
}
