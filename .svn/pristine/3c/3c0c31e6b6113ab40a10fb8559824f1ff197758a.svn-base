package dic;

import java.util.List;

import dic.DicVO;

public class DicServiceImple implements DicService {

	private static DicService dicService;

	private DicDao dicDao;

	private DicServiceImple() {
		dicDao = DicDaoImpl.getInstance();
	}

	public static DicService getInstance() {
		if (dicService == null) {
			dicService = new DicServiceImple();
		}

		return dicService;
	}

	@Override
	public int insertMember(DicVO vo) {
		System.out.println("서비스 임플");
		int cnt = dicDao.insertMember(vo);
		return cnt;
	}

	@Override
	public int idCheckMember(String dicId) {
		System.out.println("서비스 idcheck");
		int cnt = dicDao.idCheckMember(dicId);
		
		return cnt;
	}

	@Override
	public String loginMember(DicVO vo) {
		String cnt = dicDao.loginMember(vo);
		return cnt;
	}

	@Override
	public String nicCheck(DicVO vo) {
		String nicVal = dicDao.loginMember(vo);
		return nicVal;
	}

	@Override
	public String adminLogin(DicVO vo) {
		String admin = dicDao.adminLogin(vo);
		System.out.println("srv " + admin);
		return admin;
	}
	
	@Override
	public DicVO getdicInfo(String dicId) {
		DicVO Dic = dicDao.getdicInfo(dicId);
		
		return Dic;
	}

	@Override
	public String findId(DicVO vo) {
		String cnt = dicDao.findId(vo);
		return cnt;
	}

	@Override
	public int Infoupdate(DicVO vo) {
		int resultcnt = dicDao.Infoupdate(vo);
		return resultcnt;
		
		
	}

	@Override
	public int findPw(DicVO vo) {
		int cnt = dicDao.findPw(vo);
		return cnt;
	}

	@Override
	public void updatePwChg(DicVO vo) {
		dicDao.updatePwChg(vo);
	}

	@Override
	public int remveDic(DicVO vo) {
		int cnt = dicDao.deleteMember(vo);
		return cnt;
	}

	@Override
	public String checkPw(String dicPw) {
		String cnt = dicDao.checkPw(dicPw);
		return cnt;
	}
	
	public int checkIdPw(DicVO vo) {
		int cnt = dicDao.checkIdPw(vo);
		return cnt;
	}

	@Override
	public List<DicVO> getAllDicList() {
		
		List<DicVO> dicList = dicDao.getAllDicList();
		return dicList;
	}


	

}
