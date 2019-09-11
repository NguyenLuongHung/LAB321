/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bidd.dao;

import com.bidd.model.Article;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luong
 */
public class ArticleDAO {
    DBContext context = new DBContext();
    Connection conn = context.getConnection();
    
    public List<Article> getArticles(){
        String query = "select * from article";
        try {
            List<Article> artList = new ArrayList();
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String date = rs.getString("date");
                String ref = rs.getString("ref");
                artList.add(new Article(id, title, author, description, date, ref));
                
            }
            return artList;
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Article> getFiveArticles(){
        String query = "select top 5 * from article order by date desc";
         try {
            List<Article> artList = new ArrayList();
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String date = rs.getString("date");
                String ref = rs.getString("ref");
                artList.add(new Article(id, title, author, description, date, ref));    
            }
            return artList;
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Article> searchArticles(String search){
        String query = "select * from article where title like ?";
        try {
            List<Article> artList = new ArrayList();
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, "%"+search+"%");
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                String id = rs.getString("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String date = rs.getString("date");
                String ref = rs.getString("ref");
                artList.add(new Article(id, title, author, description, date, ref));    
            }
            return artList;
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public Article getArticle(String id){
        String query = "select * from article where id like ?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String date = rs.getString("date");
                String ref = rs.getString("ref");
                return (new Article(id, title, author, description, date, ref));    
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public Article getTheMostArticle(){
        String query = "select top 1 * from article order by date desc";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                String id = rs.getString("id");
                String title = rs.getString("title");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String date = rs.getString("date");
                String ref = rs.getString("ref");
                return (new Article(id, title, author, description, date, ref));    
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
//     try {
//            PreparedStatement st = conn.prepareStatement(query);
//            ResultSet rs = st.executeQuery();
//        } catch (Exception e){
//            e.printStackTrace();
//        }
}
