package kr.or.ddit.vo;

import java.time.LocalDate;

public class NoticeVO {

	private String ntcId; /* 공지사항 ID */ 
	private String ntcTitle; /* 공지사항 제목 */
	private String ntcWriter; /* 공지사항 작성자 */
	private String ntcContent; /* 공지사항 내용 */
	private int ntcViews; /* 공지사항 조회수 */
	private LocalDate ntcDate; /* 공지사항 등록일 */
	
	
	public NoticeVO() {
		// TODO Auto-generated constructor stub
	}

	

	
	
	public NoticeVO(String ntcTitle, String ntcWriter, String ntcContent) {
		super();
		this.ntcTitle = ntcTitle;
		this.ntcWriter = ntcWriter;
		this.ntcContent = ntcContent;
	}
	public NoticeVO(String ntcId, String ntcTitle, String ntcWriter, String ntcContent) {
		super();
		this.ntcId = ntcId;
		this.ntcTitle = ntcTitle;
		this.ntcWriter = ntcWriter;
		this.ntcContent = ntcContent;
	}



	public String getNtcId() {
		return ntcId;
	}


	public void setNtcId(String ntcId) {
		this.ntcId = ntcId;
	}


	public String getNtcTitle() {
		return ntcTitle;
	}


	public void setNtcTitle(String ntcTitle) {
		this.ntcTitle = ntcTitle;
	}


	public String getNtcWriter() {
		return ntcWriter;
	}


	public void setNtcWriter(String ntcWriter) {
		this.ntcWriter = ntcWriter;
	}


	public String getNtcContent() {
		return ntcContent;
	}


	public void setNtcContent(String ntcContent) {
		this.ntcContent = ntcContent;
	}


	public int getNtcViews() {
		return ntcViews;
	}


	public void setNtcViews(int ntcViews) {
		this.ntcViews = ntcViews;
	}


	public LocalDate getNtcDate() {
		return ntcDate;
	}


	public void setNtcDate(LocalDate ntcDate) {
		this.ntcDate = ntcDate;
	}


	@Override
	public String toString() {
		return "NoticeVO [ntcId=" + ntcId + ", ntcTitle=" + ntcTitle + ", ntcWriter=" + ntcWriter + ", ntcContent="
				+ ntcContent + ", ntcViews=" + ntcViews + ", ntcDate=" + ntcDate + "]";
	}


	
	
	
	
	
	
	
	
}

