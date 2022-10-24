package kr.ac.kopo.vo;

import java.sql.Date;

public class PointHistoryVO {

	private String id;
	private int point;
	private Date savingDate;
	private Date usringDate;
	private String missionType;
	@Override
	public String toString() {
		return "PointHistoryVO [id=" + id + ", point=" + point + ", savingDate=" + savingDate + ", usringDate="
				+ usringDate + ", missionType=" + missionType + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getSavingDate() {
		return savingDate;
	}
	public void setSavingDate(Date savingDate) {
		this.savingDate = savingDate;
	}
	public Date getUsringDate() {
		return usringDate;
	}
	public void setUsringDate(Date usringDate) {
		this.usringDate = usringDate;
	}
	public String getMissionType() {
		return missionType;
	}
	public void setMissionType(String missionType) {
		this.missionType = missionType;
	}
	
	
	
}
