package user.search.blog.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class BlogController {

	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);

	@RequestMapping("/blog")
	public String getBlog() {
		
		logger.info("블로그 페이지");
		return "user/search/blog";
	}
	
}
