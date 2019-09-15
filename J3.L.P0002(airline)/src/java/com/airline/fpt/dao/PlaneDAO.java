/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import com.airline.fpt.model.Location;
import com.airline.fpt.model.Plane;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */
public class PlaneDAO {

    DBcontext context = new DBcontext();
    Connection conn = context.getConnection();

    public List<Plane> getPlanes() {
        try {
            List<Plane> planeList = new ArrayList<>();
            String query = "select * from plane";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String number = rs.getString("number");
                String name = rs.getString("name");
                String planeStatus = rs.getString("plane_status");
                String status = rs.getString("status");
                planeList.add(new Plane(number, name, planeStatus, status));
            }
            return planeList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Plane getPlane(String number) {
        try {
            String query = "select * from plane where number = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, number);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String planeStatus = rs.getString("plane_status");
                String status = rs.getString("status");
                return new Plane(number, name, planeStatus, status);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    public boolean addPlane(Plane plane) {
        try {
            String query = "insert into plane(number, name, plane_status, status) "
                    + "values (?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, plane.getNumber());
            st.setString(2, plane.getName());
            st.setString(3, plane.getPlaneStatus());
            st.setString(4, plane.getStatus());
            int result = st.executeUpdate();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    public boolean updatePlane(Plane plane) {
        try {
            String query = "update plane set "
                    + "name = ?, "
                    + "plane_status = ?, "
                    + "status = ?"
                    + "where number = ?";

            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, plane.getName());
            st.setString(2, plane.getPlaneStatus());
            st.setString(3, plane.getStatus());
            st.setString(4, plane.getNumber());
            int result = st.executeUpdate();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    public boolean deletePlane(String number) {
         try {
            String query = "delete from plane where number = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, number);
            int result = st.executeUpdate();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

}
