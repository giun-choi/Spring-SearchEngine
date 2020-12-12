package user.search.movie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@RequestMapping("/movie")
	public String getMovie() {
		
		logger.info("영화 페이지");
		return "user/search/movie";
	}
	
}
