/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nitish
 */
public class ConnectionDb{
    Connection con;
    public Connection Connect() throws ClassNotFoundException {
       try {
             Class.forName("com.mysql.jdbc.Driver");
             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","");
            // Statement st = con.createStatement();
            // ResultSet rs=  st.executeQuery("select * from pd_users");
            
        } catch (SQLException ex) {
            System.out.println("Exception"+ex.toString());
        }
        return con;
    }
}
