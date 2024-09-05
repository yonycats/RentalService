package kr.or.ddit.vo;

import java.time.LocalDate;

public class UserVO {

	private int userNo;
	private String userId;
	private String userPass;
	private String userName;
	private String userEmail;
	private String userTel;
	private String userQut;
	private String userAns;
	private String userBan;
	private String userSignout;
	private String userAddr;
	private String userAddrDetail;
	private int userZip;
	private String userCkId;
	private LocalDate userCkDate;
	private int userCnt;

	public UserVO() {

	}
	
	public UserVO(int userNo, String userId, String userPass, String userName, String userEmail, String userTel,
			String userQut, String userAns, String userBan, String userSignout, String userAddr, String userAddrDetail,
			int userZip, String userCkId, LocalDate userCkDate, int userCnt) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userTel = userTel;
		this.userQut = userQut;
		this.userAns = userAns;
		this.userBan = userBan;
		this.userSignout = userSignout;
		this.userAddr = userAddr;
		this.userAddrDetail = userAddrDetail;
		this.userZip = userZip;
		this.userCkId = userCkId;
		this.userCkDate = userCkDate;
		this.userCnt = userCnt;
	}

	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPass() {
		return userPass;
	}


	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserTel() {
		return userTel;
	}


	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}


	public String getUserQut() {
		return userQut;
	}


	public void setUserQut(String userQut) {
		this.userQut = userQut;
	}


	public String getUserAns() {
		return userAns;
	}


	public void setUserAns(String userAns) {
		this.userAns = userAns;
	}


	public String getUserBan() {
		return userBan;
	}


	public void setUserBan(String userBan) {
		this.userBan = userBan;
	}


	public String getUserSignout() {
		return userSignout;
	}


	public void setUserSignout(String userSignout) {
		this.userSignout = userSignout;
	}


	public String getUserAddr() {
		return userAddr;
	}


	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}


	public String getUserAddrDetail() {
		return userAddrDetail;
	}


	public void setUserAddrDetail(String userAddrDetail) {
		this.userAddrDetail = userAddrDetail;
	}


	public int getUserZip() {
		return userZip;
	}


	public void setUserZip(int userZip) {
		this.userZip = userZip;
	}


	public String getUserCkId() {
		return userCkId;
	}


	public void setUserCkId(String userCkId) {
		this.userCkId = userCkId;
	}


	public LocalDate getUserCkDate() {
		return userCkDate;
	}


	public void setUserCkDate(LocalDate userCkDate) {
		this.userCkDate = userCkDate;
	}


	public int getUserCnt() {
		return userCnt;
	}


	public void setUserCnt(int userCnt) {
		this.userCnt = userCnt;
	}


	@Override
	public String toString() {
		return "UserVO [userNo=" + userNo + ", userId=" + userId + ", userPass=" + userPass + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", userTel=" + userTel + ", userQut=" + userQut + ", userAns=" + userAns
				+ ", userBan=" + userBan + ", userSignout=" + userSignout + ", userAddr=" + userAddr
				+ ", userAddrDetail=" + userAddrDetail + ", userZip=" + userZip + ", userCkId=" + userCkId
				+ ", userCkDate=" + userCkDate + ", userCnt=" + userCnt + "]";
	}


	

}
