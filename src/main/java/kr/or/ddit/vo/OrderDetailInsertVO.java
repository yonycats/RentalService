package kr.or.ddit.vo;

public class OrderDetailInsertVO {
	private String ordId;
	private String itemId;
	private String odCnt;
	private String odStatus;
	private String odAmount;
	
	public String getOrdId() {
		return ordId;
	}
	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getOdCnt() {
		return odCnt;
	}
	public void setOdCnt(String odCnt) {
		this.odCnt = odCnt;
	}
	public String getOdStatus() {
		return odStatus;
	}
	public void setOdStatus(String odStatus) {
		this.odStatus = odStatus;
	}
	public String getOdAmount() {
		return odAmount;
	}
	public void setOdAmount(String odAmount) {
		this.odAmount = odAmount;
	}
	
	@Override
	public String toString() {
		return "PaymentVO [ordId=" + ordId + ", itemId=" + itemId + ", odCnt=" + odCnt + ", odStatus=" + odStatus
				+ ", odAmount=" + odAmount + "]";
	}
	
//	#{ordId},
//	#{itemId},
//	#{odCnt},
//	#{odStatus},
//	#{odAmount},
	
}
