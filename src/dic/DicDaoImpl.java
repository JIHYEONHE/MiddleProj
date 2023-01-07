package dic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import infoboBoard.InfoBoardVO;
import util.MyBatisUtil;

public class DicDaoImpl implements DicDao {
	
private static DicDao dicDao ;
	
	private SqlSession sqlSession;

	private DicDaoImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static DicDao getInstance() {
		if(dicDao == null) {
			dicDao = new DicDaoImpl();
		}
		return dicDao;
	}

	@Override
	public int insertMember(DicVO vo) {
		System.out.println("다오 임플");
		int cnt = sqlSession.insert("member.insertMember", vo);

		return cnt;
	}

	@Override
	public int idCheckMember(String dicId) {
		System.out.println("아이디 : " + dicId);
		int cnt = sqlSession.selectOne("member.idCheckMember", dicId);
		System.out.println("다오 cnt " + cnt);
		return cnt;
	}

	@Override
	public String loginMember(DicVO vo) {
		String cnt = sqlSession.selectOne("member.loginMember", vo);
		System.out.println(" 넘어온 데이터 : " + cnt);
		
		return cnt;
	}

	@Override
	public String nicCheck(DicVO vo) {
		String nicVal = sqlSession.selectOne("member.checkNicName", vo);
		System.out.println(" 넘어온 데이터 : " + nicVal);
		
		return nicVal;
	}

	@Override
	public String adminLogin(DicVO vo) {
		String admin = sqlSession.selectOne("member.adminLogin",vo);
		System.out.println("dao " + admin);
		return admin;
	}
	
	@Override
	public DicVO getdicInfo(String dicId) {
		DicVO info = sqlSession.selectOne("member.getdicInfo",dicId);
		System.out.println(info.getDicPw());
		
		return info;
	}

	@Override
	public String findId(DicVO vo) {
		String cnt = sqlSession.selectOne("member.getfindId", vo);
		System.out.println("아이디찾기데이터" + cnt);
		return cnt;
	}

	@Override
	public int Infoupdate(DicVO vo) {
		int resultcnt= sqlSession.update("member.dicUpdate",vo);
		return resultcnt;
		
	}

	@Override
	public int findPw(DicVO vo) {
		int cnt = sqlSession.selectOne("member.getfindPw", vo);
		return cnt;
	}

	@Override
	public void updatePwChg(DicVO vo) {
		sqlSession.selectOne("member.updatePwChg", vo);
	}

	@Override
	public int deleteMember(DicVO vo) {
		int cnt = sqlSession.delete("member.remove", vo);
		return cnt;
	}
	@Override
	public String checkPw(String dicPw) {
		String cnt = sqlSession.selectOne("member.getPw", dicPw);
		return cnt;
	}

	@Override
	public int checkIdPw(DicVO vo) {
		int cnt = sqlSession.selectOne("member.checkIdPw", vo);
		return cnt;
	}
	
	@Override
	public List<DicVO> getAllDicList() {
		
		List<DicVO> dicList = 
				sqlSession.selectList("member.dicAllList");
		
		return dicList;
	}
	

	
}
