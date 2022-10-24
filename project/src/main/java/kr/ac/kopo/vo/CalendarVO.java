package kr.ac.kopo.vo;

public class CalendarVO {

   private String id;
   private String groupId;
   private String title;
   private String writer;
   private String content;
   private String start;
   private String startTime;
   private String end;
    private boolean allday;
   private String textColor;
   private String backgroundColor;
   private String borderColor;
   private String missionCode;
   private int point;
   


	@Override
	public String toString() {
		return "CalendarVO [id=" + id + ", groupId=" + groupId + ", title=" + title + ", writer=" + writer + ", content="
				+ content + ", start=" + start + ", startTime=" + startTime + ", end=" + end + ", allday=" + allday
				+ ", textColor=" + textColor + ", backgroundColor=" + backgroundColor + ", borderColor=" + borderColor
				+ ", missionCode=" + missionCode + ", point=" + point + "]";
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getGroupId() {
		return groupId;
	}



	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getStart() {
		return start;
	}



	public void setStart(String start) {
		this.start = start;
	}



	public String getStartTime() {
		return startTime;
	}



	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}



	public String getEnd() {
		return end;
	}



	public void setEnd(String end) {
		this.end = end;
	}



	public boolean isAllday() {
		return allday;
	}



	public void setAllday(boolean allday) {
		this.allday = allday;
	}



	public String getTextColor() {
		return textColor;
	}



	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}



	public String getBackgroundColor() {
		return backgroundColor;
	}



	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}



	public String getBorderColor() {
		return borderColor;
	}



	public void setBorderColor(String borderColor) {
		this.borderColor = borderColor;
	}



	public String getMissionCode() {
		return missionCode;
	}



	public void setMissionCode(String missionCode) {
		this.missionCode = missionCode;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}


   
}