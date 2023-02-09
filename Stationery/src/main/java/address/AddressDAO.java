//package address;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//
//import common.JDBCUtil;
//
//
//// OracleDB 연동 DAO(Data Access Object) AddressDAO 클래스 작성
//public class AddressDAO {
//
//	private Connection conn = null;
//	private PreparedStatement stmt = null;
//	
//	// PreparedStatement 활용 insert 처리 쿼리문 작성
//	private static final String INSERT_ADDRESS = "insert into jsp_address values(idx_seq.nextVal, ?, ?)";
//	
//	// insertAddress 메서드 작성
//	public void insertAddress(AddressVO vo) {
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(INSERT_ADDRESS);
//			stmt.setString(1, vo.getMainAddress());
//			stmt.setString(2, vo.getSubAddress());
//			stmt.executeUpdate();
//		} catch(Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//}
