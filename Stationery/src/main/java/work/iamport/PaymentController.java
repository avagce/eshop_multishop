package work.iamport;



import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
//import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import work.iamport.PaymentVO;
import work.board.BoardService;
import work.iamport.PaymentService;

@Log4j
//@RestController
@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	//@Resource(name = "paymentService")
	//private PaymentService paymentservice;
	
	@ResponseStatus(value= HttpStatus.OK)
	//결제인설트
	@RequestMapping(value = "work/iamport/payment.do")
	public ModelAndView fwdPaymentPage() {
		return new ModelAndView("/iamport/payment");
	}
	
	@ResponseStatus(value= HttpStatus.OK)
	//결제되었다.
	@RequestMapping(value = "work/iamport/paymentDone.do")
	public ModelAndView fwdPaymentSuccessPage() {
		return new ModelAndView("paymentSuccess");
	}
	
	@ResponseStatus(value= HttpStatus.OK)
	//결제성공했당
	@RequestMapping(value = "work/iamport/paymentProcess.do")
	public void paymentDone(@RequestBody Map<String, String> vodata) {
		//Map<String, String> vodata
		//@RequestBody PaymentVO vo
		
		System.out.println("vo 값 확인:" + vodata.toString());
		System.out.println("vo 값 확인 (version:02)" + vodata.get("imp_uid"));
		
		
		
		if(vodata.get("imp_uid") == null) {
		//if(vo.imp_uid == null) {
			System.out.println("====================값을 받아오지 못했습니다=============");
			
		}else {
			System.out.println("값 받아오기 성공");
			
			
			paymentService.insertPaymentSuccess(vodata);
			//paymentService.insertPaymentSuccess(vo);
			
			
			
		}
	}
	
	//메인으루가자. 다시앞으로가장
	@RequestMapping(value = {"/goMain.do","/"})
	public ModelAndView goMain() {
		return new ModelAndView("index");
	}
	
}
