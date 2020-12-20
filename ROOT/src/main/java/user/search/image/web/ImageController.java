package user.search.image.web;

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
import user.search.image.service.ImageReqVO;

@Controller
@RequestMapping("/search")
public class ImageController {

	private static final Logger logger = LoggerFactory.getLogger(ImageController.class);
	
	@RequestMapping("/image")
	public ModelAndView getImage(ImageReqVO imageReqVO) {
		
		ModelAndView mv = new ModelAndView();
		
		logger.info("이미지 페이지");
		
		mv.addObject("page", "image");
		mv.addObject("query", imageReqVO.getQuery());
		mv.setViewName("user/search/image");
		return mv;
	}
	
	@RequestMapping("/getImageList")
	public ModelAndView getImageList(ImageReqVO imageReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.IMAGE_API_URL;
		HashMap<String, String> params = imageReqVO.getSearchKeywords();
		
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
