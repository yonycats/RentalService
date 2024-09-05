package rental.dao;

import java.util.List;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;

public interface IRentalDao {
	
	// 1-1. 유저가 빌린 렌탈 상품의 잔여기간 가져오기
	public List<RentalDetailVO> selectListRentalDate(UserVO uv);
	
	// 1-2. 주문상세 테이블 - 유저가 빌린 렌탈 상품의 잔여기간이 0이하인 렌탈상품의 상태 렌탈종료로 변경하기
	public int updateOrderStatus(RentalDetailVO rdv);

	// 1-3. 유저넘버를 넣어서 유저가 렌탈한 상품 목록 불러오기
	public List<RentalDetailVO> rentalList(UserVO uv);
	
	// 2. 유저넘버와 상품아이디를 넣어서 렌탈 상품 한개의 잔여기간과 퍼센트 가져오기
	public RentalDetailVO selectOneRentalDate(RentalDetailVO rdv);

	// 3. 유저넘버와 상품아이디를 넣어서 선택한 렌탈 상품 목록 불러오기
	public RentalDetailVO rentalDetail(RentalDetailVO rdv);

	public List<RentalDetailVO> rentalSortList(RentalDetailVO rdv);
}
