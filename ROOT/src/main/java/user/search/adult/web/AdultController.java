package user.search.adult.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class AdultController {

	private static final Logger logger = LoggerFactory.getLogger(AdultController.class);
	
	@RequestMapping("/adult")
	public String getAdult() {
		
		logger.info("���� �˻��� �Ǻ� ������");
		return "user/search/adult";
	}

}
