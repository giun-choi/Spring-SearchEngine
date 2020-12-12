package user.search.image.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class ImageController {

	private static final Logger logger = LoggerFactory.getLogger(ImageController.class);
	
	@RequestMapping("/image")
	public String getImage() {
		
		logger.info("이미지 페이지");
		return "user/search/image";
	}
	
}
