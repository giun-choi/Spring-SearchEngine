package user.search.blog.web;

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
import user.search.blog.service.BlogReqVO;

@Controller
@RequestMapping("/search")
public class BlogController {

	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);

	@RequestMapping("/blog")
	public ModelAndView getBlog() {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("블로그 페이지");
		
		mv.addObject("page", "blog");
		mv.setViewName("user/search/blog");
		return mv;
	}
	
	@RequestMapping("/getBlogList")
	public ModelAndView getBlogList(BlogReqVO blogReqVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.BLOG_API_URL;
		HashMap<String, String> params = blogReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("adultList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;
	}
	
	
	
}
