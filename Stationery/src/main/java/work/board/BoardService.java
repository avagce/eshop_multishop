package work.board;

import java.util.List;
import java.util.Map;


public interface BoardService {
	public List<Map<String, String>> retrieveBoardList(Map<String, String> boardParam);
	
	public List<Map<String, String>> retrieveBoardList2(Map<String, String> boardParam);
	
	public List<Map<String, String>> retrieveBoardList3(Map<String, String> boardParam);
	
	public List<Map<String, String>> retrieveBoardList4(Map<String, String> boardParam);

	public Map<String, String> retrieveBoard(Map<String, String> boardParam);
	
	public Map<String, String> retrieveBoard2(Map<String, String> boardParam);
	
	public Map<String, String> retrieveBoard3(Map<String, String> boardParam);
	
	public Map<String, String> retrieveBoard4(Map<String, String> boardParam);

	public String retrieveMaxBoardNo();
	
	public String retrieveMaxBoardNo2();
	
	public String retrieveMaxBoardNo3();
	
	public String retrieveMaxBoardNo4();

	public void createBoard(BoardBean board);
	
	public void createBoard2(BoardBean board);
	
	public void createBoard3(BoardBean board);
	
	public void createBoard4(BoardBean board);
	
	public void updateBoard(BoardBean board);
	
	public void updateBoard2(BoardBean board);
	
	public void updateBoard3(BoardBean board);
	
	public void updateBoard4(BoardBean board);

	public void updateBoardHits(Map<String, String> boardParam);
	
	public void updateBoardHits2(Map<String, String> boardParam);
	
	public void updateBoardHits3(Map<String, String> boardParam);
	
	public void updateBoardHits4(Map<String, String> boardParam);

	public void deleteBoard(Map<String, String> boardParam);
	
	public void deleteBoard3(Map<String, String> boardParam);

	public void deleteBoard4(Map<String, String> boardParam);
	
	public void deleteBoard5(Map<String, String> boardParam);
	
	public void deleteBoard2(Map<String, String> boardParam);
}
