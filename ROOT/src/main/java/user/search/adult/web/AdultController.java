package user.search.adult.web;

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
import user.search.adult.service.AdultReqVO;

@Controller
@RequestMapping("/search")
public class AdultController {

	private static final Logger logger = LoggerFactory.getLogger(AdultController.class);
	
	@RequestMapping("/adult")
	public String getAdult() {
		
		logger.info("성인 검색어 판별 페이지");
		return "user/search/adult";
	}
	
	@RequestMapping("/getAdultList")
	public ModelAndView getAdultList(AdultReqVO adultReqVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.ADULT_API_URL;
		HashMap<String, String> params = adultReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		
		
		mv.addObject("adult", json.get("adult"));
		mv.setViewName("JsonView");
		
		return mv;
	}

}
