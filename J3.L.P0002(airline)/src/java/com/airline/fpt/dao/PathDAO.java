/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */
public class PathDAO {
    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();
    
    public List<String> getPaths(String role){
         try {
            List<String> pathList = new ArrayList<>();
            String query = "select * from path where role = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, role);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String path = rs.getString("path");
                pathList.add(role);
            }
            return pathList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
