package user.search.kin.web;

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
import user.search.kin.service.KinReqVO;

@Controller
@RequestMapping("/search")
public class KinController {
	
	private static final Logger logger = LoggerFactory.getLogger(KinController.class);
	
	@RequestMapping("/kin")
	public String getKin() {
		
		logger.info("지식 iN 페이지");
		return "user/search/kin";
	}

	@RequestMapping("/getKinList")
	public ModelAndView getKinList(KinReqVO kinReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.Kin_API_URL;
		HashMap<String, String> params = kinReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("kinList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
