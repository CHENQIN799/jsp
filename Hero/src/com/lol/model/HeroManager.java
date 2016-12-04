package com.lol.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.lol.model.Hero;

public class HeroManager {
   
   private Hero hero;
   private List<Hero> heroes;
   
   private Connection conn;
   private Statement stmt;
   private ResultSet rs;
   private PreparedStatement ps;
   
  
	
  public Hero findOne(int id){
	  conn = getConnetion();
	 try{
		 stmt = conn .createStatement();
		 rs=stmt.executeQuery("select * from hero where id="+id);
	     hero = new Hero(id);
	 
	 
	    while(rs.next()){
	    	hero.setName(rs.getString("name"));
	    	hero.setNickName(rs.getString("nick_name"));
	    	hero.setAvatar(rs.getString("avatar"));
	    	hero.setImage(rs.getString("image"));	    
	    	hero.setDesc(rs.getString("description"));
	    }
	   rs.close();
	   stmt.close();
	 
	 }catch(SQLException e){
		 e.printStackTrace();
	 }
       return hero;
  }


  public List<Hero> findAll(){
	  conn = getConnetion();
     try{
    	 stmt = conn.createStatement();
         rs=stmt.executeQuery("select * from hero");
         
         heroes = new ArrayList<Hero>();
     
         while(rs.next()){
 	    	hero = new Hero();
        	hero.setId(rs.getInt("id"));
 	    	hero.setName(rs.getString("name"));
 	    	hero.setNickName(rs.getString("nick_name"));
 	   	    hero.setAvatar(rs.getString("avatar"));
 	    	hero.setImage(rs.getString("image")); 	    
 	    	hero.setDesc(rs.getString("description"));
 	        heroes.add(hero);
         }
 	   rs.close();
 	   stmt.close();
 	 
 	  }catch(SQLException e){
 		 e.printStackTrace();
 	 }
        return heroes;
   }
    
  
  public void add(Hero hero){
	 String sql = "insert into hero (name,nick_name,avatar,image,description) values (?,?,?,?,?)";
	 conn = getConnetion();
	  
	 try{
		 ps = conn.prepareStatement(sql);
		 ps.setString(1,hero.getName());
		 ps.setString(2,hero.getNickName());
		 ps.setString(3,hero.getAvatar());
		 ps.setString(4,hero.getImage());
		 ps.setString(5,hero.getDesc());
	 
	     ps.executeUpdate();
	     
	     ps.close();
	     conn.close();
	 
	 } catch(SQLException e){
		 e.printStackTrace();
	 }
	  	  	  
  }
  
  
  
  public void modify(Hero hero){
	  String sql = "update hero set name=?,nick_name=?,avatar=?"
                   + "image=?,description =? where id=?";
      conn = getConnetion();
      
      try{
    	  ps = conn.prepareStatement(sql);
    	  ps.setInt(1,hero.getId());
    	  ps.setString(2,hero.getName());
    	  ps.setString(3,hero.getNickName());
    	  ps.setString(4,hero.getImage());
    	  ps.setString(5,hero.getAvatar());    	  
    	  ps.setString(6,hero.getDesc());
         
    	  ps.executeUpdate();
    	  
    	  ps.close();
    	  conn.close();
      }catch(SQLException e){
    	  e.printStackTrace();
      }
  
  } 

 
  
  
  
  
  public Connection getConnetion() {
	  
	  String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	  String url="jdbc:sqlserver://localhost:1433;DatabaseName=software";
	  String user="sa";
	  String password="1234.";
		
	  try{
		  Class.forName(driverName);		  
		  return DriverManager.getConnection(url,user,password);
		  
	  } catch(ClassNotFoundException | SQLException e){
		  e.printStackTrace();
		  return null;
	  }

  }	  
  public HeroManager(){  
	 
}
}
