package kr.or.ddit.vo;

public class AdminVO {

	private String adminId;
	private String adminPass;
	private String adminName;
	private String adminEmail;
	private String adminTel;
	
	public AdminVO() {
		// TODO Auto-generated constructor stub
	}

	public AdminVO(String adminId, String adminPass, String adminName, String adminEmail, String adminTel) {
		super();
		this.adminId = adminId;
		this.adminPass = adminPass;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminTel = adminTel;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPass() {
		return adminPass;
	}

	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminTel() {
		return adminTel;
	}

	public void setAdminTel(String adminTel) {
		this.adminTel = adminTel;
	}

	@Override
	public String toString() {
		return "AdminVO [adminId=" + adminId + ", adminPass=" + adminPass + ", adminName=" + adminName + ", adminEmail="
				+ adminEmail + ", adminTel=" + adminTel + "]";
	}

}
