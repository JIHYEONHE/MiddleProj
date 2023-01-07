package search;

import java.util.List;

public interface SearchService {

	public SearchVO getSearch(String SearchCode);
	
	/**
	 * 하나의 MemberVO자료를 이용하여 DB를 update하는 메서드
	 * @param mv 수정할 회원정보가 들어있는 MemberVO객체
	 * @return 작업성공: 1, 작업실패:0
	 */
	public int modifySearch(SearchVO mv);

	/**
	 * mymember 테이블에 존재하는 모든 회원정보를 가져와 List에 담아서 
	 * 반환하는 메서드
	 * @return MemberVO객체를 담고 있는 List 객체
	 */
	public List<SearchVO> getAllSearchList(SearchVO mv);
	

	/**
	 * 검색할 회원 정보를 담은 MemberVO객체를 이용하여 회원정보를 조회하는 메서드
	 * @param mv 검색할 회원 정보를 담은 MemberVO객체
	 * @return 검색된 회원정보를 담은 List객체 
	 */
	public List<SearchVO> searchSearchList(SearchVO mv);
	
}
