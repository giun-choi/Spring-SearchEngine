package user.search.cafearticle.web;

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
import user.search.cafearticle.service.CafeArticleReqVO;

@Controller
@RequestMapping("/search")
public class CafeArticleController {
	
	private static final Logger logger = LoggerFactory.getLogger(CafeArticleController.class);
	
	@RequestMapping("/cafearticle")
	public ModelAndView getCafeArticle(CafeArticleReqVO cafearticleReqVO) {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("카페글 페이지");
		
		mv.addObject("page", "cafearticle");
		mv.addObject("query", cafearticleReqVO.getQuery());
		mv.setViewName("user/search/cafearticle");
		return mv;
	}
	
	@RequestMapping("/getCafeArticleList")
	public ModelAndView getCafeArticleList(CafeArticleReqVO cafearticleReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.CafeArticle_API_URL;
		HashMap<String, String> params = cafearticleReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("searchList", json.get("items"));
		mv.addObject("total", json.get("total"));
		mv.addObject("display", json.get("display"));
		mv.setViewName("JsonView");
		
		return mv;		
	}

}
