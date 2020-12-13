package user.search.encyc.web;

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
import user.search.encyc.service.EncycReqVO;

@Controller
@RequestMapping("/search")
public class EncycController {

	private static final Logger logger = LoggerFactory.getLogger(EncycController.class);
	
	@RequestMapping("/encyc")
	public String getEncyc() {
		
		logger.info("백과 사전 페이지");
		return "user/search/encyc";
	}
	
	@RequestMapping("/getEncycList")
	public ModelAndView getEncycList(EncycReqVO encycReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.Encyc_API_URL;
		HashMap<String, String> params = encycReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("encycList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;		
	}
	
}
