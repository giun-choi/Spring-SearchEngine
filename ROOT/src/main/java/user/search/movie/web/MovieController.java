package user.search.movie.web;

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
import user.search.movie.service.MovieReqVO;

@Controller
@RequestMapping("/search")
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@RequestMapping("/movie")
	public String getMovie() {
		
		logger.info("영화 페이지");
		return "user/search/movie";
	}
	
	@RequestMapping("/getMovieList")
	public ModelAndView getMovieList(MovieReqVO movieReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.MOVIE_API_URL;
		HashMap<String, String> params = movieReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("movieList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;		
	}
	
}
