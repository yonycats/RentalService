package kr.or.ddit.vo;

import java.time.LocalDate;

public class PartnershipVO {

	
	private String pashId; 	
	private String comId;
	private String pashTitle;
	private String pashContent; 
	private String pashName; 
	private String pashEmail;
	private LocalDate pashDate;
	private String pashYn;
	
	public PartnershipVO() {
		// TODO Auto-generated constructor stub
	}
	
	public PartnershipVO(String pashId, String comId, String pashTitle, String pashContent, String pashName,
			String pashEmail, String pashYn) {
		super();
		this.pashId = pashId;
		this.comId = comId;
		this.pashTitle = pashTitle;
		this.pashContent = pashContent;
		this.pashName = pashName;
		this.pashEmail = pashEmail;
		this.pashYn = pashYn;
	}

	public String getPashId() {
		return pashId;
	}

	public void setPashId(String pashId) {
		this.pashId = pashId;
	}

	public String getComId() {
		return comId;
	}

	public void setComId(String comId) {
		this.comId = comId;
	}

	public String getPashTitle() {
		return pashTitle;
	}

	public void setPashTitle(String pashTitle) {
		this.pashTitle = pashTitle;
	}

	public String getPashContent() {
		return pashContent;
	}

	public void setPashContent(String pashContent) {
		this.pashContent = pashContent;
	}

	public String getPashName() {
		return pashName;
	}

	public void setPashName(String pashName) {
		this.pashName = pashName;
	}

	public String getPashEmail() {
		return pashEmail;
	}

	public void setPashEmail(String pashEmail) {
		this.pashEmail = pashEmail;
	}

	public LocalDate getPashDate() {
		return pashDate;
	}

	public void setPashDate(LocalDate pashDate) {
		this.pashDate = pashDate;
	}

	public String getPashYn() {
		return pashYn;
	}

	public void setPashYn(String pashYn) {
		this.pashYn = pashYn;
	}

	
	
	
	
	
	
}
