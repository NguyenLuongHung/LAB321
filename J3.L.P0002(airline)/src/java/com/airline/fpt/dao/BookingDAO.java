/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import com.airline.fpt.model.Booking;
import com.airline.fpt.model.Location;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */
public class BookingDAO {
    
    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();
    
    AccountDAO accDao = new AccountDAO();
    
    public List<Booking> getBookings(){
       try {
            List<Booking> bookList = new ArrayList<>();
            String query = "select * from booking";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String accountId = rs.getString("account_id");
                String flightId = rs.getString("flight_id");
                String customerNname = (accDao.getAccount(accountId)).getLastName();
                String phone = (accDao.getAccount(accountId)).getPhone();
                String issueDate = rs.getString("issue_date");
                String seat = rs.getString("seat");
                String code = rs.getString("code");
                String statusTicket = rs.getString("status_ticket");
                String status = rs.getString("status");
                
               
                bookList.add(new Booking(id, accountId, flightId,  customerNname, phone, issueDate,
                                        seat, code, statusTicket, status));
            }
            return bookList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
       
    }
    
    public Booking getBooking(String id){
        try {
            String query = "select * from booking where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
               
                String accountId = rs.getString("account_id");
                String flightId = rs.getString("flight_id");
                String customerNname = (accDao.getAccount(accountId)).getLastName();
                String phone = (accDao.getAccount(accountId)).getPhone();
                String issueDate = rs.getString("issue_date");
                String seat = rs.getString("seat");
                String code = rs.getString("code");
                String statusTicket = rs.getString("status_ticket");
                String status = rs.getString("status");
                
               
                 return new Booking(id, accountId, flightId,  customerNname, phone, issueDate,
                                        seat, code, statusTicket, status);
            }
            
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
        return null;
    }
    
    public boolean addBooking(Booking book){
        try {
            String query = "insert into booking (account_id, flight_id, issue_date, "
                    + "seat, code, status_ticket, status) "
                    + "values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, book.getAccountId());
            st.setString(2, book.getFlightId());
            st.setString(3, book.getIssueDate());
            st.setString(4, book.getSeat());
            st.setString(5, book.getCode());
            st.setString(6, book.getStatusTicket());
            st.setString(7, book.getStatus());
            
            int result = st.executeUpdate();
            if (result > 0){
                return true;
            }
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }
    
    public boolean updateBooking (Booking book){
        try {
            String query = "update booking set "
                    + "account_id = ?, "
                    + "flight_id = ?, "
                    + "issue_date = ?, "
                    + "seat = ?, "
                    + "code = ?, "
                    + "status_ticket = ?, "
                    + "status = ?"
                    + "values (?, ?, ?, ?, ?, ?, ?) "
                    + "where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, book.getAccountId());
            st.setString(2, book.getFlightId());
            st.setString(3, book.getIssueDate());
            st.setString(4, book.getSeat());
            st.setString(5, book.getCode());
            st.setString(6, book.getStatusTicket());
            st.setString(7, book.getStatus());
            st.setString(8, book.getId());
            
            int result = st.executeUpdate();
            if (result > 0){
                return true;
            }
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }
    
    public boolean deleteBooking(String id){
        try {
            String query = "delete from booking where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);

            int result = st.executeUpdate();
            if (result > 0){
                return true;
            }
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }

}
