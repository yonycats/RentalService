package kr.or.ddit.vo;

public class RentalDetailVO {

	// ITEM 테이블
	private String itemId;
	private String comId;
	private String cateId;
	private String itemName;
	private String itemModel; 
	private String itemMake;
	private String itemAttr;
	private String itemAs; 
	
	// RENTAL 테이블
	private String rentId;
	private String userNo;	
	private String rentSta;
	private String rentEnd;
	private String rentPrice;

	// COMPANY 테이블
	private String comName;
	private String comTel;

	// ORDER_DETAIL 테이블
	private String ordId; 
	private String odStatus; 
	private String payCardId; 
	
	// ITEM_ATCHFILE 테이블
	private String fileType; 
	private String fileStreNm; 
	private String fileExtsn;
	
	// 잔여날짜 표시용
	private String usedPercent; 
	private int totalDate; 
	private int pastDate; 
	private int restDate;
	
	
	
	public int getPastDate() {
		return pastDate;
	}
	public void setPastDate(int pastDate) {
		this.pastDate = pastDate;
	}
	public String getUsedPercent() {
		return usedPercent;
	}
	public void setUsedPercent(String usedPercent) {
		this.usedPercent = usedPercent;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getCateId() {
		return cateId;
	}
	public void setCateId(String cateId) {
		this.cateId = cateId;
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
	public String getItemMake() {
		return itemMake;
	}
	public void setItemMake(String itemMake) {
		this.itemMake = itemMake;
	}
	public String getItemAttr() {
		return itemAttr;
	}
	public void setItemAttr(String itemAttr) {
		this.itemAttr = itemAttr;
	}
	public String getItemAs() {
		return itemAs;
	}
	public void setItemAs(String itemAs) {
		this.itemAs = itemAs;
	}
	public String getRentId() {
		return rentId;
	}
	public void setRentId(String rentId) {
		this.rentId = rentId;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getRentSta() {
		return rentSta;
	}
	public void setRentSta(String rentSta) {
		this.rentSta = rentSta;
	}
	public String getRentEnd() {
		return rentEnd;
	}
	public void setRentEnd(String rentEnd) {
		this.rentEnd = rentEnd;
	}
	public String getRentPrice() {
		return rentPrice;
	}
	public void setRentPrice(String rentPrice) {
		this.rentPrice = rentPrice;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComTel() {
		return comTel;
	}
	public void setComTel(String comTel) {
		this.comTel = comTel;
	}
	public String getOrdId() {
		return ordId;
	}
	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}
	public String getOdStatus() {
		return odStatus;
	}
	public void setOdStatus(String odStatus) {
		this.odStatus = odStatus;
	}
	public String getPayCardId() {
		return payCardId;
	}
	public void setPayCardId(String payCardId) {
		this.payCardId = payCardId;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getFileStreNm() {
		return fileStreNm;
	}
	public void setFileStreNm(String fileStreNm) {
		this.fileStreNm = fileStreNm;
	}
	public String getFileExtsn() {
		return fileExtsn;
	}
	public void setFileExtsn(String fileExtsn) {
		this.fileExtsn = fileExtsn;
	}
	public int getTotalDate() {
		return totalDate;
	}
	public void setTotalDate(int totalDate) {
		this.totalDate = totalDate;
	}
	public int getRestDate() {
		return restDate;
	}
	public void setRestDate(int restDate) {
		this.restDate = restDate;
	}
	
	@Override
	public String toString() {
		return "RentalDetailVO [itemId=" + itemId + ", comId=" + comId + ", cateId=" + cateId + ", itemName=" + itemName
				+ ", itemModel=" + itemModel + ", itemMake=" + itemMake + ", itemAttr=" + itemAttr + ", itemAs="
				+ itemAs + ", rentId=" + rentId + ", userNo=" + userNo + ", rentSta=" + rentSta + ", rentEnd=" + rentEnd
				+ ", rentPrice=" + rentPrice + ", comName=" + comName + ", comTel=" + comTel + ", ordId=" + ordId
				+ ", odStatus=" + odStatus + ", payCardId=" + payCardId + ", fileType="
				+ fileType + ", fileStreNm=" + fileStreNm + ", fileExtsn=" + fileExtsn + ", usedPercent=" + usedPercent
				+ ", totalDate=" + totalDate + ", pastDate=" + pastDate + ", restDate=" + restDate + "]";
	}
	
}
