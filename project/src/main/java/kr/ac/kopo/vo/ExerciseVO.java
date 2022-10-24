package kr.ac.kopo.vo;

import java.sql.Date;

public class ExerciseVO {

	private int walkSteps;
	private int walkDistance;
	private Date walkDate;
	private String id;
	private int calories;
	private int walkGoal;
	
	@Override
	public String toString() {
		return "ExerciseVO [walkSteps=" + walkSteps + ", walkDistance=" + walkDistance + ", walkDate=" + walkDate
				+ ", id=" + id + ", calories=" + calories + ", walkGoal=" + walkGoal + "]";
	}

	public int getWalkSteps() {
		return walkSteps;
	}

	public void setWalkSteps(int walkSteps) {
		this.walkSteps = walkSteps;
	}

	public int getWalkDistance() {
		return walkDistance;
	}

	public void setWalkDistance(int walkDistance) {
		this.walkDistance = walkDistance;
	}

	public Date getWalkDate() {
		return walkDate;
	}

	public void setWalkDate(Date walkDate) {
		this.walkDate = walkDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	public int getWalkGoal() {
		return walkGoal;
	}

	public void setWalkGoal(int walkGoal) {
		this.walkGoal = walkGoal;
	}
	
	
	
}
