package user.search.webkr.web;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import base.constant.Constant;
import base.utils.Naver;
import user.search.webkr.service.WebkrReqVO;

@Controller
@RequestMapping("/search")
public class WebkrController {
	
	private static final Logger logger = LoggerFactory.getLogger(WebkrController.class);
	
	@RequestMapping("/webkr")
	public ModelAndView getWebkr() {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("웹문서 페이지");
		
		mv.addObject("page", "webkr");
		mv.setViewName("user/search/webkr");
		return mv;
	}
	
	@RequestMapping("/getWebkrList")
	public ModelAndView getWebkrList(WebkrReqVO webkrReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.WEBKR_API_URL;
		HashMap<String, String> params = webkrReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("webkrList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
