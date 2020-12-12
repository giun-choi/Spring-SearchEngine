package user.search.cafearticle.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class CafeArticleController {
	
	private static final Logger logger = LoggerFactory.getLogger(CafeArticleController.class);
	
	@RequestMapping("/cafearticle")
	public String getCafeArticle() {
		
		logger.info("ī��� ������");
		return "user/search/cafearticle";
	}

}
