/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.model;

/**
 *
 * @author luong
 */
public class Plane {
    private String number;
    private String name;
    private String planeStatus;
    private String status;

    public Plane() {
    }

    public Plane(String number, String name, String planeStatus, String status) {
        this.number = number;
        this.name = name;
        this.planeStatus = planeStatus;
        this.status = status;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPlaneStatus() {
        return planeStatus;
    }

    public void setPlaneStatus(String plane_status) {
        this.planeStatus = planeStatus;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
