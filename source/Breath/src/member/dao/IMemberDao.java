package member.dao;

import java.util.List;

import member.vo.MemberVO;

/**
 * 실제 DB에 연결해서 SQL문을 수행하여 결과를 작성해 Service에
 * 전달하는 DAO의 인터페이스
 * @author PC-08
 *
 */
public interface IMemberDao {
	
	/**
	 * MemberVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param mv DB에 insert할 자료가 저장된 MemberVO 객체
	 * @return DB작업이 성공하면 1이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertMember(MemberVO mv);
	
	
	/**
	 * 주어진 회원ID가 존재하는지 여부를 알아내기 위한 메서드
	 * @param memId 검색할 회원 ID
	 * @return 해당 회원ID가 있으면 true, 없으면 false를 리턴함.
	 */
	public boolean checkMember(String memId);
	
	/**
	 * 주어진 회원ID와 비밀번호로 회원정보를 알아내기 위한 메서드
	 * @return 해당회원 ID가 있으면 회원정보 리턴함.
	 */
	public MemberVO getMember(MemberVO mv);
	
	/**
	 * 하나의 MemberVO 자료를 이용하여 DB를 update하는 메서드
	 * 
	 * @param mv update할 회원 정보가 담긴 MemberVO객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int updateMember(MemberVO mv);
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원정보를 삭제하는 메서드
	 * @param memId 삭제할 회원 ID
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int deleteMember(String memId);
	
	/**
	 * MemberVO 자료를 이용하여 회원의  password를 update하는 메서드
	 * @param mv
	 * @return
	 */
	public int updatePass(MemberVO mv);
	
	
	/**
	 * DB안의 mymember 테이블 전체 레코드를 가져와서 List에 담아
	 * 반환하는 메서드
	 * @return MemberVO객체를 담고 있는 List객체
	 */
	public List<MemberVO> getAllMemberList(); 
	
	
	/**
	 * MemberVO에 담긴 자료를 이용하여 회원을 검색하는 메서드
	 * @param mv 검색할 자료가 들어있는 MemberVO객체
	 * @return 검색된 결과를 담은 List객체
	 */
	public List<MemberVO> searchMember(MemberVO mv);
	
}
