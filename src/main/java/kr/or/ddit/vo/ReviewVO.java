package kr.or.ddit.vo;

public class ReviewVO {

	private String revId;
	private String itemId;
	private String ordId;
	private String revRating;
	private String revTitle;
	private String revDate;
	private String revImage;
	
	private String userNo;
	
	public ReviewVO() {
	}

	public ReviewVO(String revRating, String revTitle, String revImage) {
		super();
		this.revRating = revRating;
		this.revTitle = revTitle;
		this.revImage = revImage;
	}
	
	public ReviewVO(String itemId, String ordId, String revRating, String revTitle, String revImage, String userNo) {
		super();
		this.revRating = revRating;
		this.revTitle = revTitle;
		this.revImage = revImage;
		this.itemId = itemId;
		this.ordId = ordId;
		this.userNo = userNo;
	}
	
	

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getRevId() {
		return revId;
	}

	public void setRevId(String revId) {
		this.revId = revId;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getOrdId() {
		return ordId;
	}

	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}

	public String getRevRating() {
		return revRating;
	}

	public void setRevRating(String revRating) {
		this.revRating = revRating;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public String getRevDate() {
		return revDate;
	}

	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}

	public String getRevImage() {
		return revImage;
	}

	public void setRevImage(String revImage) {
		this.revImage = revImage;
	}

	@Override
	public String toString() {
		return "ReviewVO [revId=" + revId + ", itemId=" + itemId + ", ordId=" + ordId + ", revRating=" + revRating
				+ ", revTitle=" + revTitle + ", revDate=" + revDate + ", revImage=" + revImage + "]";
	}
	
}
