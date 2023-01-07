package search;

import java.util.List;

public interface SearchDAO {

		/**
		 * 주어진 회원ID에 해당하는 회원정보 가져오기
		 * @param memId 회원아이디
		 * @return 회원 정보를 담은 MemberVO객체
		 */
		public SearchVO getSearch(String SearchCode);
		

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
		public List<SearchVO> searchList(SearchVO mv);

}
