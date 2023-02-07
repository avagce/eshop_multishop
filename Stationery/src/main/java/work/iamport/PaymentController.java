package work.iamport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import work.iamport.PaymentVO;
import work.iamport.PaymentService;

//@RestController
@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	//결제인설트
	@RequestMapping(value = "/payment.do")
	public ModelAndView fwdPaymentPage() {
		return new ModelAndView("payment");
	}
	//결제되었다.
	@RequestMapping(value = "/paymentDone.do")
	public ModelAndView fwdPaymentSuccessPage() {
		return new ModelAndView("paymentSuccess");
	}
	//결제성공했당
	@RequestMapping(value = "/paymentProcess.do")
	public void paymentDone(@RequestBody PaymentVO vo) {
		paymentService.insertPaymentSuccess(vo);
	}
	//메인으루가자. 다시앞으로가장
	@RequestMapping(value = {"/goMain.do","/"})
	public ModelAndView goMain() {
		return new ModelAndView("index");
	}
	
}
