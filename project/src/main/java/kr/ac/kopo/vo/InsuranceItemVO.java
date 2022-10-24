package kr.ac.kopo.vo;

import java.sql.Date;

public class InsuranceItemVO {
	
	private String no;
	private String companyName;  
	private String insuranceName;
	private String insuranceType;
	private String protectItem;
	private String protectFee;
	private String protectItem2;
	private String protectFee2;
	private int insuranceFee;
    private String signAge;
    private String remark;
    private String signType;
    private Date addDate;
    
	@Override
	public String toString() {
		return "InsuranceItemVO [no=" + no + ", companyName=" + companyName + ", insuranceName=" + insuranceName
				+ ", insuranceType=" + insuranceType + ", protectItem=" + protectItem + ", protectFee=" + protectFee
				+ ", protectItem2=" + protectItem2 + ", protectFee2=" + protectFee2 + ", insuranceFee=" + insuranceFee
				+ ", signAge=" + signAge + ", remark=" + remark + ", signType=" + signType + ", addDate=" + addDate
				+ "]";
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getInsuranceName() {
		return insuranceName;
	}
	public void setInsuranceName(String insuranceName) {
		this.insuranceName = insuranceName;
	}
	public String getInsuranceType() {
		return insuranceType;
	}
	public void setInsuranceType(String insuranceType) {
		this.insuranceType = insuranceType;
	}
	public String getProtectItem() {
		return protectItem;
	}
	public void setProtectItem(String protectItem) {
		this.protectItem = protectItem;
	}
	public String getProtectFee() {
		return protectFee;
	}
	public void setProtectFee(String protectFee) {
		this.protectFee = protectFee;
	}
	public String getProtectItem2() {
		return protectItem2;
	}
	public void setProtectItem2(String protectItem2) {
		this.protectItem2 = protectItem2;
	}
	public String getProtectFee2() {
		return protectFee2;
	}
	public void setProtectFee2(String protectFee2) {
		this.protectFee2 = protectFee2;
	}
	public int getInsuranceFee() {
		return insuranceFee;
	}
	public void setInsuranceFee(int insuranceFee) {
		this.insuranceFee = insuranceFee;
	}
	public String getSignAge() {
		return signAge;
	}
	public void setSignAge(String signAge) {
		this.signAge = signAge;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getSignType() {
		return signType;
	}
	public void setSignType(String signType) {
		this.signType = signType;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
    
	
	
	
    
}
