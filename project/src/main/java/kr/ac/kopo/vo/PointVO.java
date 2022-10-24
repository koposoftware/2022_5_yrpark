package kr.ac.kopo.vo;

import java.sql.Date;

public class PointVO {

	private String id;
	private int point;
	private Date savingDate;
	
	@Override
	public String toString() {
		return "PointVO [id=" + id + ", point=" + point + ", savingDate=" + savingDate + "]";
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
	
	
}
