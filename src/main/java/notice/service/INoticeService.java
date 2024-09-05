package notice.service;

import java.util.List;

import kr.or.ddit.vo.NoticeVO;

public interface INoticeService {

	// 공지사항 등록
	public int insertNotice(NoticeVO nv);
	
	// 공지사항 수정
	public int updateNotice(NoticeVO nv);
	
	// 공지사항 삭제
	public int deleteNotice(String ntcId);
	
	// 공지사항 전체 출력
	public List<NoticeVO> allNoticeList();

	// 공지사항 상세조회
	public NoticeVO detailNotice(String ntcId);
	
}
