package sapo;

import java.util.List;

public class SapoServiceImpl implements SapoService{

	//담기위한 static 변수 생성
	private static SapoService sapservice;
	private SapoDAO sapDao;
	
	private SapoServiceImpl() {
		sapDao = SapoDAOImpl.getInstance(); 
	}
	
	//받아올 수 있도록 생성
	public static SapoService getInstance() {
		if(sapservice == null) {
			sapservice = new SapoServiceImpl();
		}
		return sapservice;
	}
	
	@Override
	public int registerSapo(SapoVO mv) {
		int cnt = sapDao.insertSapo(mv);
		return cnt;
	}

	@Override
	public boolean checkSapo(String sapoCode) {
		boolean chk = sapDao.checkSapo(sapoCode);
		return chk;
	}

	@Override
	public SapoVO getSapo(String sapoCode) {
		SapoVO mv = sapDao.getSapo(sapoCode);
		return mv;
	}

	@Override
	public int modifySapo(SapoVO mv) {
		int cnt = sapDao.updateSapo(mv);
		return cnt;
	}

	@Override
	public int removeSapo(String sapoCode) {
		int cnt = sapDao.deleteSapo(sapoCode);
		return cnt;
	}

	@Override
	public List<SapoVO> getAllSapoList(SapoVO mv) {
		System.out.println("ppp:"+sapDao);
		List<SapoVO> sapList = sapDao.getAllSapoList(mv);
		return sapList;
	}

	@Override
	public List<SapoVO> searchSapoList(SapoVO mv) {
		
		List<SapoVO> sapList = sapDao.searchSapoList(mv);
		return sapList;
	}

}
