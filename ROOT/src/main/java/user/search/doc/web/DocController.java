package user.search.doc.web;

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
import user.search.doc.service.DocReqVO;

@Controller
@RequestMapping("/search")
public class DocController {

	private static final Logger logger = LoggerFactory.getLogger(DocController.class);
	
	@RequestMapping("/doc")
	public String getDoc() {
		
		logger.info("전문자료 페이지");
		return "user/search/doc";
	}
	
	@RequestMapping("/getDocList")
	public ModelAndView getDocList(DocReqVO docReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.DOC_API_URL;
		HashMap<String, String> params = docReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("docList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
