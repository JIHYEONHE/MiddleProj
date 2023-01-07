package search;

import java.util.List;

public class SearchServiceImpl implements SearchService{

	//담기위한 static 변수 생성
	private static SearchService searchservice;
	private SearchDAO searchDao;
	
	private SearchServiceImpl() {
		searchDao = SearchDAOImpl.getInstance(); 
	}
	
	//받아올 수 있도록 생성
	public static SearchService getInstance() {
		if(searchservice == null) {
			searchservice = new SearchServiceImpl();
		}
		return searchservice;
	}

	@Override
	public SearchVO getSearch(String SearchCode) {
		SearchVO mv = searchDao.getSearch(SearchCode);
		return mv;
	}

	@Override
	public List<SearchVO> getAllSearchList(SearchVO mv) {
		System.out.println("ppp:"+searchDao);
		List<SearchVO> searchList = searchDao.getAllSearchList(mv);
		return searchList;
	}

	@Override
	public List<SearchVO> searchSearchList(SearchVO mv) {
		
		List<SearchVO> searchList = searchDao.searchList(mv);
		return searchList;
	}

	@Override
	public int modifySearch(SearchVO mv) {
		// TODO Auto-generated method stub
		return 0;
	}

}
