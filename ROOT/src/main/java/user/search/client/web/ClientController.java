package user.search.client.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.search.client.service.ClientService;
import user.search.client.service.ClientVO;

@Controller
@RequestMapping("/client")
public class ClientController {

	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	private ClientService clientService;
	
	@RequestMapping("/setSearchInfo")
	public ModelAndView setSearchInfo(ClientVO clientVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		int result = clientService.setSearchWord(clientVO);
		
		if(result == 1) {
			
			logger.info("검색정보 저장완료");
		} else {
			
			logger.info("검색정보 저장실패");
		}
		
		mv.addObject("result", result);
		mv.setViewName("JsonView");
		return mv;
	}
	
	@RequestMapping("/setClickInfo")
	public ModelAndView setClickInfo(ClientVO clientVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		int result = clientService.setClickLink(clientVO);
		
		if(result == 1) {
			
			logger.info("클릭정보 저장완료");
		} else {
			
			logger.info("클릭정보 저장실패");
		}
		
		mv.addObject("result", result);
		mv.setViewName("JsonView");
		return mv;
	}
	
}
