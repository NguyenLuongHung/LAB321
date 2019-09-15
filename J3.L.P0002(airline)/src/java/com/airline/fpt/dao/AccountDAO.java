/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import com.airline.fpt.model.Account;
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
public class AccountDAO {
    
    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();
    
    public List<Account> getAccounts(){
        try {
            List<Account> accList = new ArrayList<>();
            String query = "select * from account";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String account = rs.getString("account");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String sex = rs.getString("sex");
                String age = rs.getString("age");
                String card = rs.getString("card_number");
                String status = rs.getString("status");
                
                accList.add(new Account(id, account, email, password, firstName,
                            lastName, address, phone, sex, age, card, status));
                
            }
            return accList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
    public Account getAccount(String id){
        try {
            List<Account> accList = new ArrayList<>();
            String query = "select * from account where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                String account = rs.getString("account");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String sex = rs.getString("sex");
                String age = rs.getString("age");
                String card = rs.getString("card_number");
                String status = rs.getString("status");
                
                return new Account(id, account, email, password, firstName,
                            lastName, address, phone, sex, age, card, status);
                
            }
            
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
        return null;
    }
    
    public boolean addAccount(Account acc){
       try {
            
            String query = "insert into account (account, email, password, firstName, lastName, "
                    + "address, phone, sex, age, card_number, status) "
                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, acc.getAccount());
            st.setString(2, acc.getEmail());
            st.setString(3, acc.getPassword());
            st.setString(4, acc.getFirstName());
            st.setString(5, acc.getLastName());
            st.setString(6, acc.getAddress());
            st.setString(7, acc.getPhone());
            st.setString(8, acc.getSex());
            st.setString(9, acc.getAge());
            st.setString(10, acc.getCardNumber());
            st.setString(11, acc.getStatus());
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
    
    public boolean updateAccount (Account acc){
        try {
            
            String query = "update account set "
                    + "account = ?, "
                    + "email = ?, "
                    + "password = ?, "
                    + "firstName = ?, "
                    + "lastName = ?, "
                    + "address = ?, "
                    + "phone = ?, "
                    + "sex = ?, "
                    + "age = ?, "
                    + "card_number = ?, "
                    + "status = ? "
                    + "where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, acc.getAccount());
            st.setString(2, acc.getEmail());
            st.setString(3, acc.getPassword());
            st.setString(4, acc.getFirstName());
            st.setString(5, acc.getLastName());
            st.setString(6, acc.getAddress());
            st.setString(7, acc.getPhone());
            st.setString(8, acc.getSex());
            st.setString(9, acc.getAge());
            st.setString(10, acc.getCardNumber());
            st.setString(11, acc.getStatus());
            st.setString(12, acc.getId());
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
    
    public boolean deleteAccount(String id){
        try {
            
            String query = "delete from account where id = ?";
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

//     try {
//            PreparedStatement st = conn.prepareStatement(query);
//            ResultSet rs = st.executeQuery();
//        } catch (Exception e){
//            e.printStackTrace();
//        }