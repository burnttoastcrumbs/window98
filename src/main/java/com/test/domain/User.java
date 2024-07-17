package com.test.domain;

import java.sql.Timestamp;
import java.util.Date;

public class User {
    private String id;
    private String pwd;
    private String name;
    private int gender;
    private Date birthDate;
    private String phoneNumber;
    private String email;
    private Timestamp reg_date;

    public User(){}


    public User(String id, String pwd, String name, int gender, Date birthDate, String phoneNumber, String email, Timestamp reg_date) {
        this.id = id;
        this.pwd = pwd;
        this.name = name;
        this.gender = gender;
        this.birthDate = birthDate;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.reg_date = reg_date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getReg_date() {
        return reg_date;
    }

    public void setReg_date(Timestamp reg_date) {
        this.reg_date = reg_date;
    }



}