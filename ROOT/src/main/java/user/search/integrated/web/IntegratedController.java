package user.search.integrated.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import user.search.integrated.service.IntegratedResVO;

@Controller
@RequestMapping("/search")
public class IntegratedController {

	private static final Logger logger = LoggerFactory.getLogger(IntegratedController.class);
	
	@RequestMapping(value = "/integrated", method = RequestMethod.GET)
	public ModelAndView getIntegrated(IntegratedResVO integratedResVO) {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("통합 페이지");
		
		mv.addObject("page", "integrated");
		mv.addObject("query", integratedResVO.getQuery());
		mv.setViewName("user/search/integrated");
		return mv;
	}
	
}
