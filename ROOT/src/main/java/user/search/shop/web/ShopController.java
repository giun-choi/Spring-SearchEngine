package user.search.shop.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@RequestMapping("/shop")
	public String getShop() {
		
		logger.info("쇼핑 페이지");
		return "user/search/shop";
	}
	
}
