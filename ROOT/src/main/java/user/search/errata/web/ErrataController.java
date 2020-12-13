package user.search.errata.web;

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
import user.search.errata.service.ErrataReqVO;

@Controller
@RequestMapping("/search")
public class ErrataController {
	
	private static final Logger logger = LoggerFactory.getLogger(ErrataController.class);

	@RequestMapping("/errata")
	public String getErrata() {
		
		logger.info("오타변환 페이지");
		return "user/search/errata";
	}
	
	@RequestMapping("/getErrataList")
	public ModelAndView getErrataList(ErrataReqVO errataReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.ERRATA_API_URL;
		HashMap<String, String> params = errataReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("errata", json.get("errata"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
