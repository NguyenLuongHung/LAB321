/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import com.airline.fpt.model.Location;
import com.airline.fpt.model.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */


public class RoleDAO {
    
    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();
    
    public List<String> getRoles(String id){
        try {
            List<String> roleList = new ArrayList<>();
            String query = "select * from role where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String role = rs.getString("role");
                roleList.add(role);
            }
            return roleList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
