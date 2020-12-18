package user.search.news.web;

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
import user.search.news.service.NewsReqVO;

@Controller
@RequestMapping("/search")
public class NewsController {

	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@RequestMapping("/news")
	public ModelAndView getNews(NewsReqVO newsReqVO) {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("뉴스 페이지");
		
		mv.addObject("page", "news");
		mv.addObject("query", newsReqVO.getQuery());
		mv.setViewName("user/search/news");
		return mv;
	}
	
	@RequestMapping("/getNewsList")
	public ModelAndView getNewsList(NewsReqVO newsReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.NEWS_API_URL;
		HashMap<String, String> params = newsReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("newsList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
