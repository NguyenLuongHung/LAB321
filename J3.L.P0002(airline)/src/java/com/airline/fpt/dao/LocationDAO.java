/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

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
public class LocationDAO {
    
    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();
    
    public List<Location> getLocations(){
        try {
            List<Location> locList = new ArrayList<>();
            String query = "select * from location";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String country = rs.getString("country");
                String city = rs.getString("city");
                String symbol = rs.getString("symbol");
                String status = rs.getString("status");
                locList.add(new Location(id, country, city, symbol, status));
            }
            return locList;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
        
    }
    
    public Location getLocation(String id){
       try {
            
            String query = "select * from location where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                
                String country = rs.getString("country");
                String city = rs.getString("city");
                String symbol = rs.getString("symbol");
                String status = rs.getString("status");
                return new Location(id, country, city, symbol, status);
            }
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
       return null;
    }
    
    public boolean addLocation(Location loc){
        try {
            
            String query = "insert into location ( country, city, symbol, status)"
                    + " values (?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, loc.getCountry());
            st.setString(2, loc.getCity());
            st.setString(3, loc.getSymbol());
            st.setString(4, loc.getStatus());
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
    
    public boolean updateLocation (Location loc){
        try {
            
            String query = "update location set "
                    + "country = ?, "
                    + "city = ?, "
                    + "symbol = ?, "
                    + "status = ? "
                    + "where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, loc.getCountry());
            st.setString(2, loc.getCity());
            st.setString(3, loc.getSymbol());
            st.setString(4, loc.getStatus());
            st.setString(5, loc.getId());
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
    
    public boolean deleteLocation(String id){
        try {
            
            String query = "delete from location where id = ?";
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
//            String query = "";
//            PreparedStatement st = conn.prepareStatement(query);
//            ResultSet rs = st.executeQuery();
//        } catch (Exception e){
//            e.printStackTrace();
//        }


//public List<Location> getLocations(){
//        return null;
//    }
//    
//    public Location getLocation(String id){
//        return null;
//    }
//    
//    public boolean addLocation(Location loc){
//        return false;
//    }
//    
//    public boolean updateLocation (Location loc){
//        return false;
//    }
//    
//    public boolean deleteLocation(String id){
//        return false;
//    }
//    