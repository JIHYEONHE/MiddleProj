package sapo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;

public class SapoDAOImpl implements SapoDAO {
	
	private static SapoDAO sapDao;
	private SqlSession sqlSession;
	
	private SapoDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true); 
	}
	
	public static SapoDAO getInstance() {
		if(sapDao == null) {
			sapDao = new SapoDAOImpl();
		}
		return sapDao;
	}

	@Override
	public int insertSapo(SapoVO mv) {
		int cnt = sqlSession.insert("sapo.insertSapo",mv);
		return 0;
	}

	
	@Override
	public boolean checkSapo(String sapoCode) {
		boolean chk = false;
		
		int cnt = sqlSession.selectOne("sapo.checkSapo", sapoCode);
		if(cnt>0) {
			chk = true;
		}
		return chk;
	}

	@Override
	public SapoVO getSapo(String sapoCode) {
		SapoVO sapVO = sqlSession.selectOne("sapo.getSapo",sapoCode);
		return sapVO;
	}

	@Override
	public int updateSapo(SapoVO mv) {
		int cnt = sqlSession.update("sapo.udateSapo",mv);
		return cnt;
	}

	@Override
	public int deleteSapo(String sapoCode) {
		int cnt = sqlSession.delete("sapo.deleteSapo",sapoCode);
		return cnt;
	}

	@Override
	public List<SapoVO> getAllSapoList(SapoVO mv) {
		List<SapoVO> sapList = sqlSession.selectList("sapo.sapoAllList", mv);
		return sapList;
	}

	@Override
	public List<SapoVO> searchSapoList(SapoVO mv) {
		List<SapoVO> sapList = sapDao.searchSapoList(mv);
		return sapList;
	}

}
