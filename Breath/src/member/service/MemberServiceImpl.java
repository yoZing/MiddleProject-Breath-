package member.service;

import java.util.List;

import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	
	private static IMemberService memService;
	
	// 사용할 DAO의 객체변수를 선언한다.
	private IMemberDao memDao;
	
	private MemberServiceImpl() {
		memDao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if (memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
	}
		
	@Override
	public int insertMember(MemberVO mv) {
		return memDao.insertMember(mv);
	}

	@Override
	public boolean checkMember(String memId) {
		return memDao.checkMember(memId);
	}

	@Override
	public int updateMember(MemberVO mv) {
		return memDao.updateMember(mv);
	}

	@Override
	public int updatePass(MemberVO mv) {
		// TODO Auto-generated method stub
		return memDao.updatePass(mv);
	}
	@Override
	public int deleteMember(String memId) {
		return memDao.deleteMember(memId);
	}

	@Override
	public List<MemberVO> getAllMemberList() {
		return memDao.getAllMemberList();
	}
	
	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		return memDao.searchMember(mv);
	}

	@Override
	public MemberVO getMember(MemberVO mv) {
		return memDao.getMember(mv);
	}

}
