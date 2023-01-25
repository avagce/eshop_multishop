package work.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;

	public List<Map<String, String>> retrieveBoardList(Map<String, String> boardParam){
		return boardDAO.retrieveBoardList(boardParam);
	}
	
	public List<Map<String, String>> retrieveBoardList2(Map<String, String> boardParam){
		return boardDAO.retrieveBoardList2(boardParam);
	}

	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return boardDAO.retrieveBoard(boardParam);
	}
	
	public Map<String, String> retrieveBoard2(Map<String, String> boardParam){
		return boardDAO.retrieveBoard2(boardParam);
	}

	public String retrieveMaxBoardNo(){
		return boardDAO.retrieveMaxBoardNo();
	}
	
	public String retrieveMaxBoardNo2(){
		return boardDAO.retrieveMaxBoardNo2();
	}

	public void createBoard(BoardBean board){
		boardDAO.createBoard(board);
	}
	
	public void createBoard2(BoardBean board){
		boardDAO.createBoard2(board);
	}
	
	
	public void updateBoard(BoardBean board){
		boardDAO.updateBoard(board);
	}
	
	public void updateBoard2(BoardBean board){
		boardDAO.updateBoard2(board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		boardDAO.updateBoardHits(boardParam);
	}
	
	public void updateBoardHits2(Map<String, String> boardParam){
		boardDAO.updateBoardHits2(boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		boardDAO.deleteBoard(boardParam);
	}
	
	public void deleteBoard3(Map<String, String> boardParam){
		boardDAO.deleteBoard3(boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		boardDAO.deleteBoard2(boardParam);
	}
}
