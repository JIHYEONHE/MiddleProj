package qaboard;

import java.util.List;

public class QaBoardServiceImpl implements QaBoardService {
	
	private static QaBoardService qaservice;
	private QaBoardDAO qaDao;
	
	private QaBoardServiceImpl() {
		qaDao = QaBoardDAOImpl.getInstance();
	}
	
	public static QaBoardService getInstance() {
		if(qaservice == null) {
			qaservice = new QaBoardServiceImpl();
		}
		return qaservice;
	}
	
	@Override
	public int registerQaBoard(QaBoardVO qa) {
		int cnt = qaDao.insertQaBoard(qa);
		return cnt;
	}

	@Override
	public boolean checkQaBoard(int qaQnum) {
		boolean chk = qaDao.checkQaBoard(qaQnum);
		return chk;
	}


	@Override  
	public int modifyQaBoard(QaBoardVO qa) {
		int cnt = qaDao.updateQaBoard(qa);
		return cnt;
	}

	@Override
	public int removeQaBoard(int qaQnum) {
		int cnt = qaDao.deleteQaBoard(qaQnum);
		return cnt;
	}

	@Override
	public List<QaBoardVO> getAllQaBoardList() {
		List<QaBoardVO>qaList = qaDao.getAllQaBoardList();
		return qaList;
	}

	@Override
	public List<QaBoardVO> searchMemberList(QaBoardVO qa) {
		List<QaBoardVO> qaList = qaDao.searchQaBoardList(qa);
		return qaList;
	}

	
	@Override
	public QaBoardVO getQaBoard(int qaQnum) {
		QaBoardVO qa = qaDao.getQaBoard(qaQnum);
		return qa;
	}
	
	@Override  
	public int anmodifyQaBoard(QaBoardVO qa) {
		int cnt = qaDao.answerQaBoard(qa);
		return cnt;
	}

	@Override
	public List<QaBoardVO> myQaBoardList(QaBoardVO ibv) {
		List<QaBoardVO> qaList = qaDao.myQaBoardList(ibv);
		return qaList;
	}

}
