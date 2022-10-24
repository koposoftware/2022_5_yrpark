package kr.ac.kopo.vo;

public class AttachFileVO {

	private String realFileNm;
    private String attachFileNm;
	@Override
	public String toString() {
		return "AttachFileVO [realFileNm=" + realFileNm + ", attachFileNm=" + attachFileNm + "]";
	}
	public String getRealFileNm() {
		return realFileNm;
	}
	public void setRealFileNm(String realFileNm) {
		this.realFileNm = realFileNm;
	}
	public String getAttachFileNm() {
		return attachFileNm;
	}
	public void setAttachFileNm(String attachFileNm) {
		this.attachFileNm = attachFileNm;
	}
    
    
}
