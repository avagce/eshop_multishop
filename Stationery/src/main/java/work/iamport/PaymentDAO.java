package work.iamport;

import java.io.Reader;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import work.iamport.PaymentVO;


//REPOSITORY ==> 저장소에 넣는다.
//mybatic-confing 에 연결
@Repository
public class PaymentDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertPaymentSuccess(Map<String, String> vodata) {

	sqlSession.insert("payment.insertPaymentSuccess",vodata);
}
	/*
	private static SqlSessionFactory sqlMapper;
	private static SqlSessionFactory getInstance() {
		if (sqlMapper == null) {
			String resource = "mybatis-config.xml";
			try {
				Reader reader = Resources.getResourceAsReader(resource);
				sqlMapper = new SqlSessionFactoryBuilder().build(reader);
				reader.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return sqlMapper;
	}
	*/
	/*public void insertPaymentSuccess(PaymentVO vo) {
		/*sqlMapper = getInstance();
		SqlSession session = sqlMapper.openSession();
		session.insert("payment.insertPaymentSuccess",vo);
		session.commit();*/
		/*sqlSession.insert("payment.insertPaymentSuccess",vo);
	}*/
}
