package kr.ac.kopo.vo;

public class MemberVO {

   private String id;
   private String password;
   private String name;
   private String jumin1;
   private String jumin2;
   private String email;
   private String tel;
   private String mainAddr;
   private String detailAddr;
   private String userType; //default = 'U'(유저) 관리자는 'S'
   private String signDate;
   private String groupId;
   private int point;
   private String insuranceCheck;
   private String redirectPath;
@Override
public String toString() {
	return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", jumin1=" + jumin1 + ", jumin2="
			+ jumin2 + ", email=" + email + ", tel=" + tel + ", mainAddr=" + mainAddr + ", detailAddr=" + detailAddr
			+ ", userType=" + userType + ", signDate=" + signDate + ", groupId=" + groupId + ", point=" + point
			+ ", insuranceCheck=" + insuranceCheck + ", redirectPath=" + redirectPath + "]";
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getJumin1() {
	return jumin1;
}
public void setJumin1(String jumin1) {
	this.jumin1 = jumin1;
}
public String getJumin2() {
	return jumin2;
}
public void setJumin2(String jumin2) {
	this.jumin2 = jumin2;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getMainAddr() {
	return mainAddr;
}
public void setMainAddr(String mainAddr) {
	this.mainAddr = mainAddr;
}
public String getDetailAddr() {
	return detailAddr;
}
public void setDetailAddr(String detailAddr) {
	this.detailAddr = detailAddr;
}
public String getUserType() {
	return userType;
}
public void setUserType(String userType) {
	this.userType = userType;
}
public String getSignDate() {
	return signDate;
}
public void setSignDate(String signDate) {
	this.signDate = signDate;
}
public String getGroupId() {
	return groupId;
}
public void setGroupId(String groupId) {
	this.groupId = groupId;
}
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}
public String getInsuranceCheck() {
	return insuranceCheck;
}
public void setInsuranceCheck(String insuranceCheck) {
	this.insuranceCheck = insuranceCheck;
}
public String getRedirectPath() {
	return redirectPath;
}
public void setRedirectPath(String redirectPath) {
	this.redirectPath = redirectPath;
}

   
   
}