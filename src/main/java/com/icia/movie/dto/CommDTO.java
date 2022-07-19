package com.icia.movie.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommDTO {

	private int cNum;
	private String cWriter;
	private int cMovCode;
	private String cContents;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date cDate;
	

	public int getcNum() {
		return cNum;
	}

	

	public void setcNum(int cNum) {
		this.cNum = cNum;
	}

	public String getcWriter() {
		return cWriter;
	}

	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}

	public int getcMovCode() {
		return cMovCode;
	}

	public void setcMovCode(int cMovCode) {
		this.cMovCode = cMovCode;
	}

	public String getcContents() {
		return cContents;
	}

	public void setcContents(String cContents) {
		this.cContents = cContents;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	@Override
	public String toString() {
		return "CommDTO [cNum=" + cNum + ", cWriter=" + cWriter + ", cMovCode=" + cMovCode + ", cContents=" + cContents
				+ ", cDate=" + cDate + "]";
	}

}
