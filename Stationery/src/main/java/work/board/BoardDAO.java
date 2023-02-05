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
	
	public List<Map<String, String>> retrieveBoardList3(Map<String, String> boardParam){
		return sqlSession.selectList("board.retrieveBoardList3", boardParam);
	}
	
	public List<Map<String, String>> retrieveBoardList4(Map<String, String> boardParam){
		return sqlSession.selectList("board.retrieveBoardList4", boardParam);
	}

	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard", boardParam);
	}
	
	public Map<String, String> retrieveBoard2(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard2", boardParam);
	}
	
	public Map<String, String> retrieveBoard3(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard3", boardParam);
	}
	
	public Map<String, String> retrieveBoard4(Map<String, String> boardParam){
		return sqlSession.selectOne("board.retrieveBoard4", boardParam);
	}

	public String retrieveMaxBoardNo(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo");
	}
	
	public String retrieveMaxBoardNo2(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo2");
	}
	
	public String retrieveMaxBoardNo3(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo3");
	}
	
	public String retrieveMaxBoardNo4(){
		return sqlSession.selectOne("board.retrieveMaxBoardNo4");
	}

	public void createBoard(BoardBean board){
		sqlSession.insert("board.createBoard", board);
	}
	
	public void createBoard2(BoardBean board){
		sqlSession.insert("board.createBoard2", board);
	}
	
	public void createBoard3(BoardBean board){
		sqlSession.insert("board.createBoard3", board);
	}
	
	public void createBoard4(BoardBean board){
		sqlSession.insert("board.createBoard4", board);
	}

	public void updateBoard(BoardBean board){
		sqlSession.update("board.updateBoard", board);
	}
	
	public void updateBoard2(BoardBean board){
		sqlSession.update("board.updateBoard2", board);
	}
	
	public void updateBoard3(BoardBean board){
		sqlSession.update("board.updateBoard3", board);
	}
	
	public void updateBoard4(BoardBean board){
		sqlSession.update("board.updateBoard4", board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits", boardParam);
	}
	
	public void updateBoardHits2(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits2", boardParam);
	}
	
	public void updateBoardHits3(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits3", boardParam);
	}
	
	public void updateBoardHits4(Map<String, String> boardParam){
		sqlSession.update("board.updateBoardHits4", boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard", boardParam);
	}
	
	public void deleteBoard3(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard3", boardParam);
	}
	
	public void deleteBoard4(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard4", boardParam);
	}
	
	public void deleteBoard5(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard5", boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		sqlSession.delete("board.deleteBoard2", boardParam);
	}
}
