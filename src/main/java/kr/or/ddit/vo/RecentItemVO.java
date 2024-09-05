package kr.or.ddit.vo;

public class RecentItemVO {
	
	private String retId;
	private String itemId;
	private int userNo;
	
	public RecentItemVO() {

	}
	
	public RecentItemVO(String retId, String itemId, int userNO) {
		super();
		this.retId = retId;
		this.itemId = itemId;
		this.userNo = userNO;
	}
	public String getRetId() {
		return retId;
	}
	public void setRetId(String retId) {
		this.retId = retId;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public int getUserNO() {
		return userNo;
	}
	public void setUserNO(int userNO) {
		this.userNo = userNO;
	}
	
	
	
}
