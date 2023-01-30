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
	
	public List<Map<String, String>> retrieveBoardList3(Map<String, String> boardParam){
		return boardDAO.retrieveBoardList3(boardParam);
	}
	
	public List<Map<String, String>> retrieveBoardList4(Map<String, String> boardParam){
		return boardDAO.retrieveBoardList4(boardParam);
	}

	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return boardDAO.retrieveBoard(boardParam);
	}
	
	public Map<String, String> retrieveBoard2(Map<String, String> boardParam){
		return boardDAO.retrieveBoard2(boardParam);
	}
	
	public Map<String, String> retrieveBoard3(Map<String, String> boardParam){
		return boardDAO.retrieveBoard3(boardParam);
	}
	
	public Map<String, String> retrieveBoard4(Map<String, String> boardParam){
		return boardDAO.retrieveBoard4(boardParam);
	}

	public String retrieveMaxBoardNo(){
		return boardDAO.retrieveMaxBoardNo();
	}
	
	public String retrieveMaxBoardNo2(){
		return boardDAO.retrieveMaxBoardNo2();
	}
	
	public String retrieveMaxBoardNo3(){
		return boardDAO.retrieveMaxBoardNo3();
	}
	
	public String retrieveMaxBoardNo4(){
		return boardDAO.retrieveMaxBoardNo4();
	}

	public void createBoard(BoardBean board){
		boardDAO.createBoard(board);
	}
	
	public void createBoard2(BoardBean board){
		boardDAO.createBoard2(board);
	}
	
	public void createBoard3(BoardBean board){
		boardDAO.createBoard3(board);
	}
	
	public void createBoard4(BoardBean board){
		boardDAO.createBoard4(board);
	}
	
	
	public void updateBoard(BoardBean board){
		boardDAO.updateBoard(board);
	}
	
	public void updateBoard2(BoardBean board){
		boardDAO.updateBoard2(board);
	}
	
	public void updateBoard3(BoardBean board){
		boardDAO.updateBoard3(board);
	}
	
	public void updateBoard4(BoardBean board){
		boardDAO.updateBoard4(board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		boardDAO.updateBoardHits(boardParam);
	}
	
	public void updateBoardHits2(Map<String, String> boardParam){
		boardDAO.updateBoardHits2(boardParam);
	}
	
	public void updateBoardHits3(Map<String, String> boardParam){
		boardDAO.updateBoardHits3(boardParam);
	}
	
	public void updateBoardHits4(Map<String, String> boardParam){
		boardDAO.updateBoardHits4(boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		boardDAO.deleteBoard(boardParam);
	}
	
	public void deleteBoard3(Map<String, String> boardParam){
		boardDAO.deleteBoard3(boardParam);
	}
	
	public void deleteBoard4(Map<String, String> boardParam){
		boardDAO.deleteBoard4(boardParam);
	}
	
	public void deleteBoard5(Map<String, String> boardParam){
		boardDAO.deleteBoard5(boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		boardDAO.deleteBoard2(boardParam);
	}
}
