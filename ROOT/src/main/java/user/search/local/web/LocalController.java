package user.search.local.web;

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
import user.search.local.service.LocalReqVO;

@Controller
@RequestMapping("/search")
public class LocalController {

	private static final Logger logger = LoggerFactory.getLogger(LocalController.class);
	
	@RequestMapping("/local")
	public ModelAndView getLocal(LocalReqVO localReqVO) {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("지역 페이지");
		
		mv.addObject("page", "local");
		mv.addObject("query", localReqVO.getQuery());
		mv.setViewName("user/search/local");
		return mv;
	}
	
	@RequestMapping("/getLocalList")
	public ModelAndView getLocalList(LocalReqVO localReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.LOCAL_API_URL;
		HashMap<String, String> params = localReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("localList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
