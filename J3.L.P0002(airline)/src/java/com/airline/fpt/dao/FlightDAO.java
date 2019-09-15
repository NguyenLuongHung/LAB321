/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.airline.fpt.dao;

import com.airline.fpt.model.Flight;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */
public class FlightDAO {

    protected DBcontext context = new DBcontext();
    protected Connection conn = context.getConnection();

    private LocationDAO locDao = new LocationDAO();
    private PlaneDAO plaDao = new PlaneDAO();

    public List<Flight> getFlights() {
        try {
            List<Flight> flightList = new ArrayList<>();
            String query = "select * from Flight";
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String date = rs.getString("date");
                String start = rs.getString("start");
                String end = rs.getString("end");
                String origin = (locDao.getLocation(rs.getString("status"))).getCity();
                String desination = (locDao.getLocation(rs.getString("status"))).getCity();
                String empty = rs.getString("status");
                String plane = rs.getString("number");
                String status = rs.getString("status");
                flightList.add(new Flight(id, date, start, end, origin,
                        desination, empty, plane, status));
            }
            return flightList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Flight getFlight(String id) {
        try {

            String query = "select * from Flight where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String date = rs.getString("date");
                String start = rs.getString("start");
                String end = rs.getString("end");
                String origin = (locDao.getLocation(rs.getString("status"))).getCity();
                String desination = (locDao.getLocation(rs.getString("status"))).getCity();
                String empty = rs.getString("status");
                String plane = rs.getString("number");
                String status = rs.getString("status");
                return new Flight(id, date, start, end, origin,
                        desination, empty, plane, status);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    public boolean addFlight(Flight flight) {
        try {
            String query = "insert into plane(date, start, end, origin,"
                    + "desination, empty, plane, status) "
                    + "values (?,?,?,?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, flight.getDate());
            st.setString(2, flight.getStart());
            st.setString(3, flight.getEnd());
            st.setString(4, flight.getOrigin());
            st.setString(5, flight.getDestination());
            st.setString(6, flight.getEmpty());
            st.setString(7, flight.getPlane());
            st.setString(8, flight.getStatus());

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

    public boolean updateFlight(Flight flight) {
         try {
            String query = "update plane set "
                    + "date = ?, "
                    + "start = ?, "
                    + "end = ?, "
                    + "origin = ?, "
                    + "destination = ?, "
                    + "empty = ?, "
                    + "plane = ?, "
                    + "status = ? "
                    + "where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, flight.getDate());
            st.setString(2, flight.getStart());
            st.setString(3, flight.getEnd());
            st.setString(4, flight.getOrigin());
            st.setString(5, flight.getDestination());
            st.setString(6, flight.getEmpty());
            st.setString(7, flight.getPlane());
            st.setString(8, flight.getStatus());
            st.setString(1, flight.getId());

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

    public boolean deleteFlight(String id) {
         try {
            String query = "delete form flight where id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
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
