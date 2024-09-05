package kr.or.ddit.vo;

import java.io.Serializable;
import java.sql.Date;

public class ItemVO implements Serializable{

	private String cateId; /*  */
	private String itemId;
	private String comId; 
	private String comName;
	private String itemName; /*  */
	private String itemModel; /* - 상품 모델명 기재 */
	private Date itemDate; /*  */
	private String itemMake; /*  */
	private int itemCnt; /*  */
	private int itemM12; /*  */
	private int itemM36; /*  */
	private int itemM60; /*  */
	private String itemAttr; /*  */
	private String itemAs; /*  */
	private String itemDel; /*  */
	private int fileType;
	private String streFileNm;
	private String fileExtsn;
	
	public ItemVO() {
	}

	public ItemVO(String cateId, String itemId, String comId, String comName, String itemName, String itemModel,
			Date itemDate, String itemMake, int itemCnt, int itemM12, int itemM36, int itemM60, String itemAttr,
			String itemAs, String itemDel, int fileType, String streFileNm, String fileExtsn) {
		super();
		this.cateId = cateId;
		this.itemId = itemId;
		this.comId = comId;
		this.comName = comName;
		this.itemName = itemName;
		this.itemModel = itemModel;
		this.itemDate = itemDate;
		this.itemMake = itemMake;
		this.itemCnt = itemCnt;
		this.itemM12 = itemM12;
		this.itemM36 = itemM36;
		this.itemM60 = itemM60;
		this.itemAttr = itemAttr;
		this.itemAs = itemAs;
		this.itemDel = itemDel;
		this.fileType = fileType;
		this.streFileNm = streFileNm;
		this.fileExtsn = fileExtsn;
	}

	public String getCateId() {
		return cateId;
	}

	public void setCateId(String cateId) {
		this.cateId = cateId;
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

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
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

	public Date getItemDate() {
		return itemDate;
	}

	public void setItemDate(Date itemDate) {
		this.itemDate = itemDate;
	}

	public String getItemMake() {
		return itemMake;
	}

	public void setItemMake(String itemMake) {
		this.itemMake = itemMake;
	}

	public int getItemCnt() {
		return itemCnt;
	}

	public void setItemCnt(int itemCnt) {
		this.itemCnt = itemCnt;
	}

	public int getItemM12() {
		return itemM12;
	}

	public void setItemM12(int itemM12) {
		this.itemM12 = itemM12;
	}

	public int getItemM36() {
		return itemM36;
	}

	public void setItemM36(int itemM36) {
		this.itemM36 = itemM36;
	}

	public int getItemM60() {
		return itemM60;
	}

	public void setItemM60(int itemM60) {
		this.itemM60 = itemM60;
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

	public String getItemDel() {
		return itemDel;
	}

	public void setItemDel(String itemDel) {
		this.itemDel = itemDel;
	}

	public int getFileType() {
		return fileType;
	}

	public void setFileType(int fileType) {
		this.fileType = fileType;
	}

	public String getStreFileNm() {
		return streFileNm;
	}

	public void setStreFileNm(String streFileNm) {
		this.streFileNm = streFileNm;
	}

	public String getFileExtsn() {
		return fileExtsn;
	}

	public void setFileExtsn(String fileExtsn) {
		this.fileExtsn = fileExtsn;
	}

	@Override
	public String toString() {
		return "ItemVO [cateId=" + cateId + ", itemId=" + itemId + ", comId=" + comId + ", itemName=" + itemName
				+ ", itemModel=" + itemModel + ", itemDate=" + itemDate + ", itemMake=" + itemMake + ", itemCnt="
				+ itemCnt + ", itemM12=" + itemM12 + ", itemM36=" + itemM36 + ", itemM60=" + itemM60 + ", itemAttr="
				+ itemAttr + ", itemAs=" + itemAs + ", itemDel=" + itemDel + ", fileType=" + fileType + ", streFileNm="
				+ streFileNm + ", fileExtsn=" + fileExtsn + "]";
	}
	
	
}
