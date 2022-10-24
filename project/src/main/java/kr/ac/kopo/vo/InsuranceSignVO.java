package kr.ac.kopo.vo;

import java.sql.Date;

public class InsuranceSignVO {

	private String no;
	private String id;
	private Date joinDate;
	private Date birthDate;
	private String age;
	private String sex;
	private String insuranceName;
	private String insuranceType;
	private String companyName;
	private int insuranceFee;
	
	@Override
	public String toString() {
		return "InsuranceSignVO [no=" + no + ", id=" + id + ", joinDate=" + joinDate + ", birthDate=" + birthDate
				+ ", age=" + age + ", sex=" + sex + ", insuranceName=" + insuranceName + ", insuranceType="
				+ insuranceType + ", companyName=" + companyName + ", insuranceFee=" + insuranceFee + "]";
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public int getInsuranceFee() {
		return insuranceFee;
	}

	public void setInsuranceFee(int insuranceFee) {
		this.insuranceFee = insuranceFee;
	}
	
	
	
}
