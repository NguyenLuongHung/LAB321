/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author luong
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        String timestamp = "2019-08-16 15:57:43.64";
        String year = timestamp.substring(0, 4);
        String month = timestamp.substring(5,7);
        String day = timestamp.substring(8,10);
        String hour = timestamp.substring(11, 13);
        String minute = timestamp.substring(14, 16);
        
        String[] monthSymbol = {"","Jan","Feb", "Mar", "Apr", "May",
                                "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        String date = "";
        int hourr = Integer.parseInt(hour);
        if (hourr > 12){
            hour=(hourr-12)+":"+minute+"pm";
        } else {
            hour=hour+":"+minute+"am";
        }
            date = monthSymbol[Integer.parseInt(month)] + " " + day + " " + year + " - " +
                        hour;
        
        System.out.println(date);
    }
    
}
