package user.search.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ���� �˻� ��Ʈ�ѷ�
 * @author bathr
 *
 */
@Controller
public class MainController {

	/**
	 * ���� ������
	 * @return
	 */
	@RequestMapping("/search")
	public String getMain() {
		
		return "user/search/main";
	}
	
}
