package com.icia.movie.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdMovieDTO {

    private int adMovCode;
    private String adMovName;
    private String adMovDirector;
    private String adMovGenre;
    private int adMovGrade;
    private Date adMovOpen;
    private String adMovPoster;

    private String adMovTime;
    private MultipartFile mFile;
    private String mFileName;

    public int getAdMovCode() {
        return adMovCode;
    }

    public void setAdMovCode(int adMovCode) {
        this.adMovCode = adMovCode;
    }

    public String getAdMovName() {
        return adMovName;
    }

    public void setAdMovName(String adMovName) {
        this.adMovName = adMovName;
    }

    public String getAdMovDirector() {
        return adMovDirector;
    }

    public void setAdMovDirector(String adMovDirector) {
        this.adMovDirector = adMovDirector;
    }

    public String getAdMovGenre() {
        return adMovGenre;
    }

    public void setAdMovGenre(String adMovGenre) {
        this.adMovGenre = adMovGenre;
    }

    public int getAdMovGrade() {
        return adMovGrade;
    }

    public void setAdMovGrade(int adMovGrade) {
        this.adMovGrade = adMovGrade;
    }

    public Date getAdMovOpen() {
        return adMovOpen;
    }

    public void setAdMovOpen(Date adMovOpen) {
        this.adMovOpen = adMovOpen;
    }

    public String getAdMovPoster() {
        return adMovPoster;
    }

    public void setAdMovPoster(String adMovPoster) {
        this.adMovPoster = adMovPoster;
    }

    public String getAdMovTime() {
        return adMovTime;
    }

    public void setAdMovTime(String adMovTime) {
        this.adMovTime = adMovTime;
    }

    public MultipartFile getmFile() {
        return mFile;
    }

    public void setmFile(MultipartFile mFile) {
        this.mFile = mFile;
    }

    public String getmFileName() {
        return mFileName;
    }

    public void setmFileName(String mFileName) {
        this.mFileName = mFileName;
    }

    @Override
    public String toString() {
        return "AdMovieDTO{" +
                "adMovCode=" + adMovCode +
                ", adMovName='" + adMovName + '\'' +
                ", adMovDirector='" + adMovDirector + '\'' +
                ", adMovGenre='" + adMovGenre + '\'' +
                ", adMovGrade=" + adMovGrade +
                ", adMovOpen=" + adMovOpen +
                ", adMovPoster='" + adMovPoster + '\'' +
                ", adMovTime='" + adMovTime + '\'' +
                ", mFile=" + mFile +
                ", mFileName='" + mFileName + '\'' +
                '}';
    }
}