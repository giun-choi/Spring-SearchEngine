package user.search.errata.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class ErrataController {
	
	private static final Logger logger = LoggerFactory.getLogger(ErrataController.class);

	@RequestMapping("/errata")
	public String getErrata() {
		
		logger.info("오타변환");
		return "user/search/errata";
	}
	
}
