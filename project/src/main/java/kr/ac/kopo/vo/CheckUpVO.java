package kr.ac.kopo.vo;

import java.sql.Date;

public class CheckUpVO {
	private String id;
	private int bpHigh;
	private String bpHighResult;
	private int hmg;
	private String hmgResult;
	private int creatinine;
	private String creatinineResult;
	private int eGfr;
	private String eGfrResult;
	private int sgotAst;
	private String sgotAstResult;
	private int sgptAlt;
	private String sgptAltResult;
	private int bpLwst;
	private String bpLwstResult;
	private int gammaGtp;
	private String gammaGtpResult;
	private String oligProteCd;
	private Date checkupDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBpHigh() {
		return bpHigh;
	}
	public void setBpHigh(int bpHigh) {
		this.bpHigh = bpHigh;
	}
	public String getBpHighResult() {
		return bpHighResult;
	}
	public void setBpHighResult(String bpHighResult) {
		this.bpHighResult = bpHighResult;
	}
	public int getHmg() {
		return hmg;
	}
	public void setHmg(int hmg) {
		this.hmg = hmg;
	}
	public String getHmgResult() {
		return hmgResult;
	}
	public void setHmgResult(String hmgResult) {
		this.hmgResult = hmgResult;
	}
	public int getCreatinine() {
		return creatinine;
	}
	public void setCreatinine(int creatinine) {
		this.creatinine = creatinine;
	}
	public String getCreatinineResult() {
		return creatinineResult;
	}
	public void setCreatinineResult(String creatinineResult) {
		this.creatinineResult = creatinineResult;
	}
	public int geteGfr() {
		return eGfr;
	}
	public void seteGfr(int eGfr) {
		this.eGfr = eGfr;
	}
	public String geteGfrResult() {
		return eGfrResult;
	}
	public void seteGfrResult(String eGfrResult) {
		this.eGfrResult = eGfrResult;
	}
	public int getSgotAst() {
		return sgotAst;
	}
	public void setSgotAst(int sgotAst) {
		this.sgotAst = sgotAst;
	}
	public String getSgotAstResult() {
		return sgotAstResult;
	}
	public void setSgotAstResult(String sgotAstResult) {
		this.sgotAstResult = sgotAstResult;
	}
	public int getSgptAlt() {
		return sgptAlt;
	}
	public void setSgptAlt(int sgptAlt) {
		this.sgptAlt = sgptAlt;
	}
	public String getSgptAltResult() {
		return sgptAltResult;
	}
	public void setSgptAltResult(String sgptAltResult) {
		this.sgptAltResult = sgptAltResult;
	}
	public int getBpLwst() {
		return bpLwst;
	}
	public void setBpLwst(int bpLwst) {
		this.bpLwst = bpLwst;
	}
	public String getBpLwstResult() {
		return bpLwstResult;
	}
	public void setBpLwstResult(String bpLwstResult) {
		this.bpLwstResult = bpLwstResult;
	}
	public int getGammaGtp() {
		return gammaGtp;
	}
	public void setGammaGtp(int gammaGtp) {
		this.gammaGtp = gammaGtp;
	}
	public String getGammaGtpResult() {
		return gammaGtpResult;
	}
	public void setGammaGtpResult(String gammaGtpResult) {
		this.gammaGtpResult = gammaGtpResult;
	}
	public String getOligProteCd() {
		return oligProteCd;
	}
	public void setOligProteCd(String oligProteCd) {
		this.oligProteCd = oligProteCd;
	}
	public Date getCheckupDate() {
		return checkupDate;
	}
	public void setCheckupDate(Date checkupDate) {
		this.checkupDate = checkupDate;
	}
	
	@Override
	public String toString() {
		return "CheckUpVO [id=" + id + ", bpHigh=" + bpHigh + ", bpHighResult=" + bpHighResult + ", hmg=" + hmg
				+ ", hmgResult=" + hmgResult + ", creatinine=" + creatinine + ", creatinineResult=" + creatinineResult
				+ ", eGfr=" + eGfr + ", eGfrResult=" + eGfrResult + ", sgotAst=" + sgotAst + ", sgotAstResult="
				+ sgotAstResult + ", sgptAlt=" + sgptAlt + ", sgptAltResult=" + sgptAltResult + ", bpLwst=" + bpLwst
				+ ", bpLwstResult=" + bpLwstResult + ", gammaGtp=" + gammaGtp + ", gammaGtpResult=" + gammaGtpResult
				+ ", oligProteCd=" + oligProteCd + ", checkupDate=" + checkupDate + "]";
	}
	
	
	
}
