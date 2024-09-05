package kr.or.ddit.vo;

public class WishVO {
	private String wishDate;
	private String wishId;
	private String itemId;
	private String userNo;
	
	private String itemName;
	private String itemModel;
	private String fileStreNm;
	
//	#{wishDate},
//	#{wishId},
//	#{itemId},
//	#{userNo},
	
	
	
	public String getWishDate() {
		return wishDate;
	}
	public String getFileStreNm() {
		return fileStreNm;
	}
	public void setFileStreNm(String fileStreNm) {
		this.fileStreNm = fileStreNm;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemModel() {
		return itemModel;
	}
	public void setItemModel(String itemModel) {
		this.itemModel = itemModel;
	}
	public void setWishDate(String wishDate) {
		this.wishDate = wishDate;
	}
	public String getWishId() {
		return wishId;
	}
	public void setWishId(String wishId) {
		this.wishId = wishId;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "WishVO [wishDate=" + wishDate + ", wishId=" + wishId + ", itemId=" + itemId + ", userNo=" + userNo
				+ ", itemName=" + itemName + ", itemModel=" + itemModel + ", fileStreNm=" + fileStreNm + "]";
	}

	
}
