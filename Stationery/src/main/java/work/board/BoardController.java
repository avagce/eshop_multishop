 package work.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import work.user.UserService;
import work.board.BoardService;


@Controller
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;

	@Resource(name = "userService")
	private UserService userService;


	@RequestMapping(value="/work/board/createBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView createBoard(@ModelAttribute BoardBean board, HttpServletRequest request){
		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");

		ModelAndView mv = new ModelAndView();

		String flag = board.getBoardTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/board/boardRegisterC");
		}else if(flag != null){
			//게시글 생성
			board.setUserCode(userCode);
			boardService.createBoard(board);

			String maxBoardNo = boardService.retrieveMaxBoardNo();

			mv.setViewName("redirect:/work/board/retrieveBoard.do?maxBoardNo=" + maxBoardNo + "&fromCreate=true");
		}

		return mv;
	}
	
	@RequestMapping(value="/work/board/createBoard2.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView createBoard2(@ModelAttribute BoardBean board, HttpServletRequest request){
		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");

		ModelAndView mv = new ModelAndView();

		String flag = board.getBoardTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/board/boardRegisterC_user");
		}else if(flag != null){
			//게시글 생성
			board.setUserCode(userCode);
			boardService.createBoard2(board);

			String maxBoardNo = boardService.retrieveMaxBoardNo2();

			mv.setViewName("redirect:/work/board/retrieveBoard2.do?maxBoardNo=" + maxBoardNo + "&fromCreate=true");
		}

		return mv;
	}
	
	@RequestMapping(value="/work/board/createBoard3.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView createBoard3(@ModelAttribute BoardBean board, HttpServletRequest request){
		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");

		ModelAndView mv = new ModelAndView();

		String flag = board.getBoardTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/board/boardRegisterC_comu");
		}else if(flag != null){
			//게시글 생성
			board.setUserCode(userCode);
			boardService.createBoard3(board);

			String maxBoardNo = boardService.retrieveMaxBoardNo3();

			mv.setViewName("redirect:/work/board/retrieveBoard3.do?maxBoardNo=" + maxBoardNo + "&fromCreate=true");
		}

		return mv;
	}
	
	@RequestMapping(value="/work/board/createBoard4.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView createBoard4(@ModelAttribute BoardBean board, HttpServletRequest request){
		HttpSession session = request.getSession();
		String phoneNum = request.getParameter("phoneNum");
		
		String userCode = (String)session.getAttribute("userCode");
		//String boardphone = (String)session.getAttribute("phoneNum");

		ModelAndView mv = new ModelAndView();

		String flag = board.getBoardTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/board/boardRegisterC_producqus");
		}else if(flag != null){
			//게시글 생성
			board.setUserCode(userCode);
			//board.setBoardphone(boardphone);
			boardService.createBoard4(board);

			String maxBoardNo = boardService.retrieveMaxBoardNo4();

			mv.setViewName("redirect:/work/board/retrieveBoard4.do?maxBoardNo=" + maxBoardNo + "&fromCreate=true");
		}

		return mv;
	}
	
	@RequestMapping(value="/work/board/goMain.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goMain(){
//		ModelAndView mv = new ModelAndView();
//
//		mv.setViewName("/intro/index");

		return "redirect:/intro/index.jsp";
	}

	@RequestMapping(value="/work/board/retrieveBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoard(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String boardNo = request.getParameter("maxBoardNo");
		String fromRating = request.getParameter("fromRating");
		String fromCreate = request.getParameter("fromCreate");
		String fromReply = request.getParameter("fromReply");

		if(boardNo == null) boardNo = request.getParameter("boardNo");

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();

		boardParam.put("boardNo", boardNo);
		replyParam.put("boardNo", boardNo);

		//조회수 증가
		if(!"true".equals(fromRating) && !"true".equals(fromCreate) && !"true".equals(fromReply) ){
			boardService.updateBoardHits(boardParam);
		}

		Map<String, String> dsBoard = boardService.retrieveBoard(boardParam);


		mv.addObject("dsBoard", dsBoard);

		mv.setViewName("/board/boardR");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoard2.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoard2(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String boardNo = request.getParameter("maxBoardNo");
		String fromRating = request.getParameter("fromRating");
		String fromCreate = request.getParameter("fromCreate");
		String fromReply = request.getParameter("fromReply");

		if(boardNo == null) boardNo = request.getParameter("boardNo");

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();

		boardParam.put("boardNo", boardNo);
		replyParam.put("boardNo", boardNo);

		//조회수 증가
		if(!"true".equals(fromRating) && !"true".equals(fromCreate) && !"true".equals(fromReply) ){
			boardService.updateBoardHits2(boardParam);
		}

		Map<String, String> dsBoard = boardService.retrieveBoard2(boardParam);


		mv.addObject("dsBoard", dsBoard);

		mv.setViewName("/board/boardR_user");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoard3.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoard3(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String boardNo = request.getParameter("maxBoardNo");
		String fromRating = request.getParameter("fromRating");
		String fromCreate = request.getParameter("fromCreate");
		String fromReply = request.getParameter("fromReply");

		if(boardNo == null) boardNo = request.getParameter("boardNo");

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();

		boardParam.put("boardNo", boardNo);
		replyParam.put("boardNo", boardNo);

		//조회수 증가
		if(!"true".equals(fromRating) && !"true".equals(fromCreate) && !"true".equals(fromReply) ){
			boardService.updateBoardHits2(boardParam);
		}

		Map<String, String> dsBoard = boardService.retrieveBoard3(boardParam);


		mv.addObject("dsBoard", dsBoard);

		mv.setViewName("/board/boardR_comu");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoard4.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoard4(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String boardNo = request.getParameter("maxBoardNo");
		String fromRating = request.getParameter("fromRating");
		String fromCreate = request.getParameter("fromCreate");
		String fromReply = request.getParameter("fromReply");

		if(boardNo == null) boardNo = request.getParameter("boardNo");

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();

		boardParam.put("boardNo", boardNo);
		replyParam.put("boardNo", boardNo);

		//조회수 증가
		if(!"true".equals(fromRating) && !"true".equals(fromCreate) && !"true".equals(fromReply) ){
			boardService.updateBoardHits4(boardParam);
		}

		Map<String, String> dsBoard = boardService.retrieveBoard4(boardParam);


		mv.addObject("dsBoard", dsBoard);

		mv.setViewName("/board/boardR_producqus");

		return mv;
	}

	@RequestMapping(value="/work/board/retrieveBoardList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoardList(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();

		List<Map<String, String>> dsBoardList = boardService.retrieveBoardList(boardParam);

		mv.addObject("dsBoardList", dsBoardList);
		mv.setViewName("/board/boardListR");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoardList2.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoardList2(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();

		List<Map<String, String>> dsBoardList = boardService.retrieveBoardList2(boardParam);

		mv.addObject("dsBoardList", dsBoardList);
		mv.setViewName("/board/boardListR_user");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoardList3.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoardList3(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();

		List<Map<String, String>> dsBoardList = boardService.retrieveBoardList3(boardParam);

		mv.addObject("dsBoardList", dsBoardList);
		mv.setViewName("/board/boardListR_comu");

		return mv;
	}
	
	@RequestMapping(value="/work/board/retrieveBoardList4.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoardList4(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();

		List<Map<String, String>> dsBoardList = boardService.retrieveBoardList4(boardParam);

		mv.addObject("dsBoardList", dsBoardList);
		mv.setViewName("/board/boardListR_PRODUCQUS");

		return mv;
	}

	@RequestMapping(value="/work/board/deleteBoard.do", method=RequestMethod.GET)
	public ModelAndView deleteBoard(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("userCode", userCode);
		boardParam.put("boardNo", boardNo);

		replyParam.put("boardNo", boardNo);

		markParam.put("boardNo", boardNo);

		//글 삭제
		boardService.deleteBoard(boardParam);

		mv.setViewName("redirect:/work/board/retrieveBoardList.do");

		return mv;
	}
	
	@RequestMapping(value="/work/board/deleteBoard3.do", method=RequestMethod.GET)
	public ModelAndView deleteBoard3(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("userCode", userCode);
		boardParam.put("boardNo", boardNo);

		replyParam.put("boardNo", boardNo);

		markParam.put("boardNo", boardNo);

		//글 삭제
		boardService.deleteBoard3(boardParam);

		mv.setViewName("redirect:/work/board/retrieveBoardList2.do");

		return mv;
	}
	
	@RequestMapping(value="/work/board/deleteBoard4.do", method=RequestMethod.GET)
	public ModelAndView deleteBoard4(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("userCode", userCode);
		boardParam.put("boardNo", boardNo);

		replyParam.put("boardNo", boardNo);

		markParam.put("boardNo", boardNo);

		//글 삭제
		boardService.deleteBoard3(boardParam);

		mv.setViewName("redirect:/work/board/retrieveBoardList3.do");

		return mv;
	}
	
	@RequestMapping(value="/work/board/deleteBoard5.do", method=RequestMethod.GET)
	public ModelAndView deleteBoard5(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("userCode", userCode);
		boardParam.put("boardNo", boardNo);

		replyParam.put("boardNo", boardNo);

		markParam.put("boardNo", boardNo);

		//글 삭제
		boardService.deleteBoard3(boardParam);

		mv.setViewName("redirect:/work/board/retrieveBoardList4.do");

		return mv;
	}


	@RequestMapping(value="/work/board/updateBoardRating.do", method=RequestMethod.GET)
	public ModelAndView updateBoardRating(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("boardNo", boardNo);

		markParam.put("userCode", userCode);
		markParam.put("boardNo", boardNo);

		mv.setViewName("redirect:/work/board/retrieveBoard.do?boardNo=" + boardNo + "&fromRating=true");

		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoardRating2.do", method=RequestMethod.GET)
	public ModelAndView updateBoardRating2(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("boardNo", boardNo);

		markParam.put("userCode", userCode);
		markParam.put("boardNo", boardNo);

		mv.setViewName("redirect:/work/board/retrieveBoard2.do?boardNo=" + boardNo + "&fromRating=true");

		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoardRating3.do", method=RequestMethod.GET)
	public ModelAndView updateBoardRating3(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("boardNo", boardNo);

		markParam.put("userCode", userCode);
		markParam.put("boardNo", boardNo);

		mv.setViewName("redirect:/work/board/retrieveBoard3.do?boardNo=" + boardNo + "&fromRating=true");

		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoardRating4.do", method=RequestMethod.GET)
	public ModelAndView updateBoardRating4(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		Map<String, String> boardParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("boardNo");

		boardParam.put("boardNo", boardNo);

		markParam.put("userCode", userCode);
		markParam.put("boardNo", boardNo);

		mv.setViewName("redirect:/work/board/retrieveBoard4.do?boardNo=" + boardNo + "&fromRating=true");

		return mv;
	}

	@RequestMapping(value="/work/board/updateBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateBoard(HttpServletRequest request, @ModelAttribute BoardBean bean){
		Map<String, String> boardParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String boardNo = request.getParameter("boardNo"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = bean.getBoardTitle();
        boardParam.put("boardNo", boardNo);

        Map<String, String> dsBoard = boardService.retrieveBoard(boardParam);

		if(flag == null){
			mv.addObject("dsBoard", dsBoard);
			mv.setViewName("/board/boardRegisterU");
		}else{
			boardService.updateBoard(bean);
			mv.setViewName("/work/board/retrieveBoard.do?boardNo=" + boardNo + "&fromUpdate=true");
		}
		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoard2.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateBoard2(HttpServletRequest request, @ModelAttribute BoardBean bean){
		Map<String, String> boardParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String boardNo = request.getParameter("boardNo"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = bean.getBoardTitle();
        boardParam.put("boardNo", boardNo);

        Map<String, String> dsBoard = boardService.retrieveBoard2(boardParam);

		if(flag == null){
			mv.addObject("dsBoard", dsBoard);
			mv.setViewName("/board/boardRegisterU");
		}else{
			boardService.updateBoard2(bean);
			mv.setViewName("/work/board/retrieveBoard2.do?boardNo=" + boardNo + "&fromUpdate=true");
		}
		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoard3.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateBoard3(HttpServletRequest request, @ModelAttribute BoardBean bean){
		Map<String, String> boardParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String boardNo = request.getParameter("boardNo"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = bean.getBoardTitle();
        boardParam.put("boardNo", boardNo);

        Map<String, String> dsBoard = boardService.retrieveBoard3(boardParam);

		if(flag == null){
			mv.addObject("dsBoard", dsBoard);
			mv.setViewName("/board/boardRegisterU");
		}else{
			boardService.updateBoard2(bean);
			mv.setViewName("/work/board/retrieveBoard3.do?boardNo=" + boardNo + "&fromUpdate=true");
		}
		return mv;
	}
	
	@RequestMapping(value="/work/board/updateBoard4.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateBoard4(HttpServletRequest request, @ModelAttribute BoardBean bean){
		Map<String, String> boardParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String boardNo = request.getParameter("boardNo"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = bean.getBoardTitle();
        boardParam.put("boardNo", boardNo);

        Map<String, String> dsBoard = boardService.retrieveBoard4(boardParam);

		if(flag == null){
			mv.addObject("dsBoard", dsBoard);
			mv.setViewName("/board/boardRegisterU");
		}else{
			boardService.updateBoard2(bean);
			mv.setViewName("/work/board/retrieveBoard4.do?boardNo=" + boardNo + "&fromUpdate=true");
		}
		return mv;
	}

}
