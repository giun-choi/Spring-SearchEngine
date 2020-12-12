package user.search.doc.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class DocController {

	private static final Logger logger = LoggerFactory.getLogger(DocController.class);
	
	@RequestMapping("/doc")
	public String getDoc() {
		
		logger.info("전문자료 페이지");
		return "user/search/doc";
	}
	
}
