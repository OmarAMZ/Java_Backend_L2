/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Java_Backend_L2.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Employees {
    
    @Id
    @GeneratedValue
    @Column(name="id")
    private int id;
    @Column(name="taxtidnumber")
    private String taxtidnumber;
    @Column(name="name")
    private String name;
    @Column(name="lastname")
    private String lastname;
    @Column(name="birthdate")
    private String birthdate;
    @Column(name="email")
    private String email;
    @Column(name="cellphone")
    private String cellphone;
    @Column(name="isactive")
    private boolean isactive;
    @Column(name="datecreated")
    private String datecreated;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTaxtidnumber() {
        return taxtidnumber;
    }

    public void setTaxtidnumber(String taxtidnumber) {
        this.taxtidnumber = taxtidnumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public boolean isIsactive() {
        return isactive;
    }

    public void setIsactive(boolean isactive) {
        this.isactive = isactive;
    }

    public String getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(String datecreated) {
        this.datecreated = datecreated;
    }

    public Employees(int id, String taxtidnumber, String name, String lastname, String birthdate, String email, String cellphone, boolean isactive, String datecreated) {
        this.id = id;
        this.taxtidnumber = taxtidnumber;
        this.name = name;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.email = email;
        this.cellphone = cellphone;
        this.isactive = isactive;
        this.datecreated = datecreated;
    }

    public Employees() {
    }
}
