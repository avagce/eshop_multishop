package work.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> retrieveBoardList(Map<String, String> boardParam){
		return sqlSession.selectList("board.retrieveBoardList", boardParam);
	}
	
	public List<Map<String, String>> retrieveBoardList2(Map<String, String> boardParam){
		return sqlSession.selectList("board.retrieveBoardList2", boardParam);
	}

	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard", boardParam);
	}
	
	public Map<String, String> retrieveBoard2(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard2", boardParam);
	}

	public String retrieveMaxBoardNo(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo");
	}
	
	public String retrieveMaxBoardNo2(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo2");
	}

	public void createBoard(BoardBean board){
		sqlSession.insert("board.createBoard", board);
	}
	
	public void createBoard2(BoardBean board){
		sqlSession.insert("board.createBoard2", board);
	}

	public void updateBoard(BoardBean board){
		sqlSession.update("board.updateBoard", board);
	}
	
	public void updateBoard2(BoardBean board){
		sqlSession.update("board.updateBoard2", board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits", boardParam);
	}
	
	public void updateBoardHits2(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits2", boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard", boardParam);
	}
	
	public void deleteBoard3(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard3", boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard2", boardParam);
	}
}
