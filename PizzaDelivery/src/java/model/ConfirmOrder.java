/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ConnectionDb;
/**
 *
 * @author Nitish
 */
public class ConfirmOrder {
    
    ConnectionDb db;
    Statement st;
    Connection con;
    public ConfirmOrder() throws ClassNotFoundException {
        db=new ConnectionDb();
        con= db.Connect();
    }
    public boolean insertOrder(String email , String name , int price , String city , String street , String building , String area){
        PreparedStatement ps;
         try {
             ps = con.prepareStatement("insert into pd_order values(?,?,?,?,?,?,?)");
             ps.setString(1,email);
             ps.setString(2,name);
             ps.setInt(3,price);
             ps.setString(4,city);
             ps.setString(5,street);
             ps.setString(6,building);
             ps.setString(7,area);
             if(ps.execute()){
                 return true;
               
             }
            
         } catch (SQLException ex) {
             Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
             
         }
     return true;
    }
    
}
