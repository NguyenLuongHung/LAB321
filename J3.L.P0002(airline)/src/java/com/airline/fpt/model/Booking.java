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
public class Booking {
    private String id;
    private String accountId;
    private String flightId;
    private String customerName;
    private String phone;
    private String issueDate;
    private String seat;
    private String code;
    private String statusTicket;
    private String status;

    public Booking() {
    }

    public Booking(String id, String accountId, String flightId, String customerName, String phone, String issueDate, String seat, String code, String statusTicket, String status) {
        this.id = id;
        this.accountId = accountId;
        this.flightId = flightId;
        this.customerName = customerName;
        this.phone = phone;
        this.issueDate = issueDate;
        this.seat = seat;
        this.code = code;
        this.statusTicket = statusTicket;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getFlightId() {
        return flightId;
    }

    public void setFlightId(String flightId) {
        this.flightId = flightId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(String issueDate) {
        this.issueDate = issueDate;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStatusTicket() {
        return statusTicket;
    }

    public void setStatusTicket(String statusTicket) {
        this.statusTicket = statusTicket;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
}
