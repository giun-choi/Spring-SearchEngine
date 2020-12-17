package user.search.integrated.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/search")
public class IntegratedController {

	private static final Logger logger = LoggerFactory.getLogger(IntegratedController.class);
	
	@RequestMapping("/integrated")
	public ModelAndView getIntegrated() {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("통합 페이지");
		
		mv.addObject("page", "integrated");
		mv.setViewName("user/search/integrated");
		return mv;
	}
	
}
