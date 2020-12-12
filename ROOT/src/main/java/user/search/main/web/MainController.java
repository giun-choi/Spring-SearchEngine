package user.search.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 메인 검색 컨트롤러
 * @author bathr
 *
 */
@Controller
public class MainController {

	/**
	 * 메인 페이지
	 * @return
	 */
	@RequestMapping("/search")
	public String getMain() {
		
		return "user/search/main";
	}
	
}
