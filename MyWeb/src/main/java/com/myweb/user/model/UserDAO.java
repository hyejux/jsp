package com.myweb.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.myweb.user.model.UserDAO;
import com.myweb.util.JdbcUtil;

public class UserDAO {
   
   //DAO는 불필요하게 여러 개 만들 필요가 없으므로 
   //객체가 1개만 생성되도록 singleton형식으로 설계
   
   //1. 나 자신의 객체를 1개만 생성하고, private을 붙임
   private static UserDAO instance = new UserDAO();
   
   //2. 직접 객체를 생성할 수 없도록 생성자에도 private를 붙임
   private UserDAO(){
      
      //커넥션풀에 사용할 객체를 얻어 옴
      try {
         InitialContext init = new InitialContext();//시작설정객체
         
         ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
         
      } catch (Exception e) {
         System.out.println("커넥션 풀 에러");
      }
      
   }
   //3. 객체 생성을 요구할 때 getter메서드를 사용해서 1번의 객체를 반환
   public static UserDAO getInstance() {
      return instance;
   }
         
   //커넥션 풀 객체정보
   private DataSource ds;
   
   
   public int findUser(String id) {
	   int result = 0;
	   
	   String sql = "SELECT COUNT(*) FROM USERS WHERE ID = ?";
	   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   
	   try {
		   conn = ds.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   
		   rs = pstmt.executeQuery();
		   
		   
		   if(rs.next()) { // 유저가 있다는 뜻
			   result = 1;
		   }
		   
		   
	   }catch (Exception e ) {
		  e.printStackTrace();
		  
	   }finally {
		   
	   }
 
	  
	   return result;
   }
   
   
   public void insertUser(String id, String pw, String name, String email, String gender) {
	   
	   String sql = "INSERT INTO USERS(ID, PW, NAME, EAMIL, GENDER) VALUES(?,?,?,?,?)";
	   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   
	   try {
		   conn = ds.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   
		   pstmt.setString(1, id);
		   pstmt.setString(2, pw);
		   pstmt.setString(3, name);
		   pstmt.setString(4, email);
		   pstmt.setString(5, gender);
		   
		   pstmt.executeUpdate(); //실행
		   
		   
	   }catch (Exception e) {
		   e.printStackTrace();
		   
	   }finally {
		   JdbcUtil.close(conn, pstmt, null);
	   }
	   
   }

   
 public UserDTO login(String id, String pw) {
	 String sql ="SELECT * FROM USERS WHERE ID = ? AND PW =? ";
	 	UserDTO dto = null;
	  Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   
	   try {
		   conn = ds.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   pstmt.setString(2, pw);
		   
		   rs = pstmt.executeQuery();
		   
		   if (rs.next()) {
			   String name = rs.getString("name");
			   String email = rs.getString("email");
			   String gender = rs.getString("gender");
			   
			   dto = new UserDTO(id,null,name,email,gender,null);
			   
		   }
	
		   
	   }catch (Exception e ) {
		  e.printStackTrace();
		  
	   }finally {
		   JdbcUtil.close(conn, pstmt, rs);
	   }

	   	return dto;
	 
 }
   
   
   
}
