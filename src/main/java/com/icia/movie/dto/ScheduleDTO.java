
package com.icia.movie.dto;

public class ScheduleDTO {
	private String scHall;
	private String scTime;
	private String scThCode;
	private int scMovCode;

	public String getScHall() {
		return scHall;
	}

	public void setScHall(String scHall) {
		this.scHall = scHall;
	}

	public String getScTime() {
		return scTime;
	}

	public void setScTime(String scTime) {
		this.scTime = scTime;
	}

	public String getScThCode() {
		return scThCode;
	}

	public void setScThCode(String scThCode) {
		this.scThCode = scThCode;
	}

	public int getScMovCode() {
		return scMovCode;
	}

	public void setScMovCode(int scMovCode) {
		this.scMovCode = scMovCode;
	}

	@Override
	public String toString() {
		return "ScheduleDTO [scHall=" + scHall + ", scTime=" + scTime + ", scThCode=" + scThCode + ", scMovCode="
				+ scMovCode + "]";
	}

}
