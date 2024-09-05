package kr.or.ddit.vo;

public class UseInquiryVO {
	
	private String unqId;
	private String unqTitle;
	private String unqContent;
	private String unqImage;
	private String unqDate;
	
	private String userNo;
	
	public UseInquiryVO() {
		
	}

	public UseInquiryVO(String unqTitle, String unqContent, String unqImage) {
		super();
		this.unqTitle = unqTitle;
		this.unqContent = unqContent;
		this.unqImage = unqImage;
	}

	public UseInquiryVO(String unqTitle, String unqContent, String unqImage, String userNo) {
		super();
		this.unqTitle = unqTitle;
		this.unqContent = unqContent;
		this.unqImage = unqImage;
		this.userNo = userNo;
	}

	public String getUnqId() {
		return unqId;
	}

	public void setUnqId(String unqId) {
		this.unqId = unqId;
	}

	public String getUnqTitle() {
		return unqTitle;
	}

	public void setUnqTitle(String unqTitle) {
		this.unqTitle = unqTitle;
	}

	public String getUnqContent() {
		return unqContent;
	}

	public void setUnqContent(String unqContent) {
		this.unqContent = unqContent;
	}

	public String getUnqImage() {
		return unqImage;
	}

	public void setUnqImage(String unqImage) {
		this.unqImage = unqImage;
	}

	public String getUnqDate() {
		return unqDate;
	}

	public void setUnqDate(String unqDate) {
		this.unqDate = unqDate;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "UseInquiryVO [unqId=" + unqId + ", unqTitle=" + unqTitle + ", unqContent=" + unqContent + ", unqImage="
				+ unqImage + ", unqDate=" + unqDate + ", userNo=" + userNo + "]";
	}
	
	
	
	
}
