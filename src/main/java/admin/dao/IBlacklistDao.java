package admin.dao;

import java.util.List;

import kr.or.ddit.vo.UserVO;

public interface IBlacklistDao {

	
	public List<UserVO> allBlacklist();
	
	public int updateBlacklist(String userId);
	
	public int deleteBlacklist(String userId);
}
