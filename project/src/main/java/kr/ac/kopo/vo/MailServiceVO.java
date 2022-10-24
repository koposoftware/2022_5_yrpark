package kr.ac.kopo.vo;

import java.util.ArrayList;
import java.util.List;

public class MailServiceVO {

	private String address;
    private String title;
    private String content;
    private List<AttachFileVO> attachFileList = new ArrayList<>();
    
	@Override
	public String toString() {
		return "MailServiceVO [address=" + address + ", title=" + title + ", content=" + content + ", attachFileList="
				+ attachFileList + "]";
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<AttachFileVO> getAttachFileList() {
		return attachFileList;
	}

	public void setAttachFileList(List<AttachFileVO> attachFileList) {
		this.attachFileList = attachFileList;
	}

	
    
}
