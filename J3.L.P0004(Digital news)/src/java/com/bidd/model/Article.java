/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bidd.model;

/**
 *
 * @author luong
 */
public class Article {
    private String id;
    private String title;
    private String author;
    private String description;
    private String date;
    private String ref;

    public Article(String id, String title, String author, String description, String date, String ref) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.description = description;
        this.date = date;
        this.ref = ref;
    }

    public Article() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        String year = this.date.substring(0, 4);
        String month = this.date.substring(5,7);
        String day = this.date.substring(8,10);
        String hour = this.date.substring(11, 13);
        String minute = this.date.substring(14, 16);
        
        String[] monthSymbol = {"","Jan","Feb", "Mar", "Apr", "May",
                                "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        String publish = "";
        int hourr = Integer.parseInt(hour);
        if (hourr > 12){
            hour=(hourr-12)+":"+minute+"pm";
        } else {
            hour=hour+":"+minute+"am";
        }
        publish = monthSymbol[Integer.parseInt(month)] + " " + day + " " + year + " - " +
                        hour;
        return publish;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }
    
    public void setId(String id){
        this.id = id;
    }
    
    public String getId(){
        return id;
    }
    
}
