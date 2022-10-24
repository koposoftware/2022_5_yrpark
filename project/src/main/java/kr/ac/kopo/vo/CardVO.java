package kr.ac.kopo.vo;

import java.sql.Date;

public class CardVO {
	public String industryName;
	public String storeName;
	public int usingPrice;
	public Date usingDate;
	public String cardNum;
	public String id;
	
	@Override
	public String toString() {
		return "CardVO [industryName=" + industryName + ", storeName=" + storeName + ", usingPrice=" + usingPrice
				+ ", usingDate=" + usingDate + ", cardNum=" + cardNum + ", id=" + id + "]";
	}

	public String getIndustryName() {
		return industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public int getUsingPrice() {
		return usingPrice;
	}

	public void setUsingPrice(int usingPrice) {
		this.usingPrice = usingPrice;
	}

	public Date getUsingDate() {
		return usingDate;
	}

	public void setUsingDate(Date usingDate) {
		this.usingDate = usingDate;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	
	
}
