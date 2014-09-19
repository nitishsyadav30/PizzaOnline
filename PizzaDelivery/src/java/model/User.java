/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import com.sun.org.apache.bcel.internal.Constants;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import model.ConnectionDb;
/**
 *
 * @author Nitish
 */
public class User {
    
     private String email;
    private String mobile;
    private String city;
    private String password;
     
    ConnectionDb db;
    Statement st;
    Connection con;
    
    public void setEmail(String email){
     this.email=email;
    }
    public String getEmail(){
     return email;
    }
    
    public void setMobile(String mobile){
     this.mobile=mobile;
    }
    public String getMobile(){
     return mobile;
    }
    
    public void setCity(String city){
     this.city=city;
    }
    public String getCity(){
     return city;
    }
    
    public void setPassword(String password){
     this.password=password;
    }
    public String getPassword(){
     return password;
    }
    
   
    
    public User() throws ClassNotFoundException {
        db=new ConnectionDb();
        con= db.Connect();
    }
    
    
    
    public boolean  userExists(){
            
         try {
             st = con.createStatement();
              ResultSet rs=  st.executeQuery("select * from pd_users where email like \""+email+"\" OR mobile like \""+mobile+"\"");
              if(rs.first()){
                return true;
              }
         } catch (SQLException ex) {
             Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
         }
           
         return false;
    }
    
    public boolean insertUser(){
        PreparedStatement ps;
         try {
             ps = con.prepareStatement("insert into pd_users values(?,?,?,?)");
             ps.setString(1,getEmail());
             ps.setString(2,getMobile());
             ps.setString(3,getCity());
             ps.setString(4,getPassword());
             
             if(ps.execute()){
                 return true;
               
             }
            
         } catch (SQLException ex) {
             Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
             
         }
         return true;
      
    }
    
    public boolean loginUser(){
        
         try {
              st = con.createStatement();
              ResultSet rs=  st.executeQuery("select email,password from pd_users where email like \""+email+"\" AND password like \""+password+"\"");
              if(rs.first()){
          
                return true;
              }
              
         } catch (SQLException ex) {
             Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
         }
     return false;
    }


}
