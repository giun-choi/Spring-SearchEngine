package user.search.book.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@RequestMapping("/book")
	public String getBook() {
		
		logger.info("책 페이지");
		return "user/search/book";
	}
	
	
	
}
