package ryan.view.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ryan.view.service.ViewService;

/*import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;*/


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

		
	/*@ServerEndpoint("/websocket")
	public class websocket {
	    *//***
	     * 웹 소켓이 연결되면 호출되는 이벤트
	     *//*
	    @OnOpen
	    public void handleOpen(){
	        System.out.println("client is now connected...");
	    }
	    *//**
	     * 웹 소켓으로부터 메시지가 오면 호출되는 이벤트
	     * @param message
	     * @return
	     *//*
	    @OnMessage
	    public String handleMessage(String message){
	        System.out.println("receive from client : "+message);
	        String replymessage = "echo "+message;
	        System.out.println("send to client : "+replymessage);
	        return replymessage;
	    }
	    *//**
	     * 웹 소켓이 닫히면 호출되는 이벤트
	     *//*
	    @OnClose
	    public void handleClose(){
	        System.out.println("client is now disconnected...");
	    }
	    *//**
	     * 웹 소켓이 에러가 나면 호출되는 이벤트
	     * @param t
	     *//*
	    @OnError
	    public void handleError(Throwable t){
	        t.printStackTrace();
	    }
	}*/

	
}
