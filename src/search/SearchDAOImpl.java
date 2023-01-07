package search;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;

public class SearchDAOImpl implements SearchDAO {
	
	private static SearchDAO searchDao;
	private SqlSession sqlSession;
	
	private SearchDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true); 
	}
	
	public static SearchDAO getInstance() {
		if(searchDao == null) {
			searchDao = new SearchDAOImpl();
		}
		return searchDao;
	}

	@Override
	public SearchVO getSearch(String searchCode) {
		SearchVO searchVO = sqlSession.selectOne("search.getSearch",searchCode);
		return searchVO;
	}

	@Override
	public List<SearchVO> getAllSearchList(SearchVO mv) {
		List<SearchVO> searchList = sqlSession.selectList("search.searchAllList", mv);
		return searchList;
	}

	@Override
	public List<SearchVO>searchList(SearchVO mv) {
		List<SearchVO> searchList = searchDao.searchList(mv);
		return searchList;
	}

}