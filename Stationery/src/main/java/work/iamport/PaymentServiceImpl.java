package work.iamport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import work.iamport.PaymentDAO;
import  work.iamport.PaymentVO;

//serviceImpl 구현클래스
@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO dao;

	@Override
	public void insertPaymentSuccess(PaymentVO vo) {
		
		dao.insertPaymentSuccess(vo);
		
	}
	

}
