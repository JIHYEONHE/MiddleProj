package infoboBoard;

import java.util.List;

public class InfoBoardServiceImpl implements InfoBoardService{

	private static InfoBoardService infoBoardService;
	
	private InfoBoardDAO infoBoardDao;
	
	private InfoBoardServiceImpl() {
		infoBoardDao = InfoBoardDAOImpl.getInstance();
	}
	
	public static InfoBoardService getInstance() {
		if(infoBoardService == null) {
			infoBoardService = new InfoBoardServiceImpl();
		}
		
		return infoBoardService;
	}
		
	@Override
	public int registerInfoBoard(InfoBoardVO ibv) {
		
		int cnt = infoBoardDao.insertInfoBoard(ibv);
		
		return cnt;
	}

	@Override
	public boolean checkInfoBoard(int infoboNum) {
		
		boolean chk = infoBoardDao.checkInfoBoard(infoboNum);
		
		return chk;
	}

	@Override
	public int modifyInfoBoard(InfoBoardVO ibv) {
		
		int cnt = infoBoardDao.updateInfoBoard(ibv);
		
		return cnt;
	}

	@Override
	public int removeInfoBoard(int infoboNum) {
		
		int cnt = infoBoardDao.deleteInfoBoard(infoboNum);
		
		return cnt;
	}

	@Override
	public List<InfoBoardVO> getAllInfoBoardList() {
		
		List<InfoBoardVO> infoBoardList = infoBoardDao.getAllInfoBoardList();
		return infoBoardList;
	}

	@Override
	public List<InfoBoardVO> searchInfoBoardList(InfoBoardVO ibv) {
		return infoBoardDao.searchInfoBoardList(ibv);
	}

	@Override
	public InfoBoardVO getInfoBoard(int infoboNum) {

		return infoBoardDao.getInfoBoard(infoboNum);
	}

	@Override
	public int updateInfoboLike(int infoboNum) {
		int count = infoBoardDao.updateInfoboLike(infoboNum);
		return count;
	}

	@Override
	public List<InfoBoardVO> myInfoBoardList(InfoBoardVO ibv) {
		List<InfoBoardVO> infoBoardList = infoBoardDao.myInfoBoardList(ibv);
		return infoBoardList;
	}

}
	
