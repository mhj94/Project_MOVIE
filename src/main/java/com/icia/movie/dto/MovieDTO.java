package com.icia.movie.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MovieDTO {

    private int movCode;
    private String movName;
    private String movDirector;
    private String movGenre;
    private int movGrade;
    private Date movOpen;
    private String movPoster;
    private int movRate;
    private String movReview;

    private String movTime;

    public String getMovTime() {
        return movTime;
    }

    public void setMovTime(String movTime) {
        this.movTime = movTime;
    }

    public int getMovCode() {
        return movCode;
    }

    public void setMovCode(int movCode) {
        this.movCode = movCode;
    }

    public String getMovName() {
        return movName;
    }

    public void setMovName(String movName) {
        this.movName = movName;
    }

    public String getMovDirector() {
        return movDirector;
    }

    public void setMovDirector(String movDirector) {
        this.movDirector = movDirector;
    }

    public String getMovGenre() {
        return movGenre;
    }

    public void setMovGenre(String movGenre) {
        this.movGenre = movGenre;
    }

    public int getMovGrade() {
        return movGrade;
    }

    public void setMovGrade(int movGrade) {
        this.movGrade = movGrade;
    }

    public Date getMovOpen() {
        return movOpen;
    }

    public void setMovOpen(Date movOpen) {
        this.movOpen = movOpen;
    }

    public String getMovPoster() {
        return movPoster;
    }

    public void setMovPoster(String movPoster) {
        this.movPoster = movPoster;
    }

    public int getMovRate() {
        return movRate;
    }

    public void setMovRate(int movRate) {
        this.movRate = movRate;
    }

    public String getMovReview() {
        return movReview;
    }

    public void setMovReview(String movReview) {
        this.movReview = movReview;
    }

    @Override
    public String toString() {
        return "MovieDTO{" +
                "movCode='" + movCode + '\'' +
                ", movName='" + movName + '\'' +
                ", movDirector='" + movDirector + '\'' +
                ", movGenre='" + movGenre + '\'' +
                ", movGrade=" + movGrade +
                ", movOpen=" + movOpen +
                ", movPoster='" + movPoster + '\'' +
                ", movRate=" + movRate +
                ", movReview='" + movReview + '\'' +
                ", movTime='" + movTime + '\'' +
                '}';
    }
}