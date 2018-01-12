package ryan.view.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ryan.view.service.ViewService;

@Controller
@RequestMapping("view")
public class ViewController {
	@Resource(name="ViewService")
	private ViewService viewService;
	
	// mainView 페이지 연결
	@RequestMapping(value="/mainView.do")
	public ModelAndView mainView(ModelAndView mav){
		mav.setViewName("main/mainView");
		return mav;
	}
	
}
