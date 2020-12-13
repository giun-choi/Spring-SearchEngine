package user.search.shop.web;

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
import user.search.shop.service.ShopReqVO;

@Controller
@RequestMapping("/search")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@RequestMapping("/shop")
	public String getShop() {
		
		logger.info("쇼핑 페이지");
		return "user/search/shop";
	}
	
	@RequestMapping("/getShopList")
	public ModelAndView getShopList(ShopReqVO shopReqVO) throws Exception {

		ModelAndView mv = new ModelAndView();
		Naver naver = new Naver();
		
		String url = Constant.SHOP_API_URL;
		HashMap<String, String> params = shopReqVO.getSearchKeywords();
		
		String searchInfo = naver.getSearchInfo(url, params);
		
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject)parser.parse(searchInfo);
		
		mv.addObject("shopList", json.get("items"));
		mv.setViewName("JsonView");
		
		return mv;			
	}
	
}
