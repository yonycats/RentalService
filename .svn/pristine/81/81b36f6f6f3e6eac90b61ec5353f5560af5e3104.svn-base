package cart.service;

import java.util.List;

import kr.or.ddit.vo.CartVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.OrderDetailVO;

public interface ICartService {
	
	/**
	 * 로그인한 회원의 장바구니 목록을 추가하기 위한 메서드
	 * @param 로그인한 회원 ID와 상품 ID를 담은 CartVO 객체
	 * @return DB작업이 성공하면 1, 실패하면 0 반환됨.
	 */
	public int insertCartSv (CartVO cv);
	
	/**
	 * 로그인한 회원의 장바구니 목록을 삭제하기 위한 메서드
	 * @param 로그인한 회원 ID와 장바구니 ID를 담은 CartVO 객체
	 * @return 삭제 처리가 성공하면 1, 실패하면 0 반환됨
	 */
	public int deleteCartSv (CartVO cv);
	
	/**
	 * 로그인한 회원 정보에 해당하는 장바구니 목록을 조회하기 위한 메서드
	 * @param 로그인한 회원 ID를 담은 CartVO 객체
	 * @return 장바구니 목록을 담은 list 목록
	 */
	public List<OrderDetailVO> getAllCartSv (OrderDetailVO odv);

	/**
	 * 장바구니 ID에 해당하는 상품을 조회하기 위한 메서드
	 * @param 장바구니 ID를 담은 CartVO 객체
	 * @return 장바구니 목록을 담은 CartVO 객체
	 */
	public CartVO DetailCart (CartVO cv);
	
}
