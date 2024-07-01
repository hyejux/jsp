package com.myweb.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;

public class BoardDAO {
	
   //DAO는 불필요하게 여러 개 만들 필요가 없으므로 
   //객체가 1개만 생성되도록 singleton형식으로 설계
   
   //1. 나 자신의 객체를 1개만 생성하고, private을 붙임
   private static BoardDAO instance = new BoardDAO();
   
   //2. 직접 객체를 생성할 수 없도록 생성자에도 private를 붙임
   private BoardDAO(){
      
      //커넥션풀에 사용할 객체를 얻어 옴
      try {
         InitialContext init = new InitialContext();//시작설정객체
         
         ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
         
      } catch (Exception e) {
         System.out.println("커넥션 풀 에러");
      }
      
   }
   //3. 객체 생성을 요구할 때 getter메서드를 사용해서 1번의 객체를 반환
   public static BoardDAO getInstance() {
      return instance;
   }
   
   private DataSource ds;
   
   
   
   //글 등록
   
   public void regist(String writer,String title, String content) {
	   String sql = "INSERT INTO BOARD(BNO, WRITER, TITLE, CONTENT) VALUES(BOARD_SEQ.NEXTVAL,?,?,?)";
	   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   
	   
	   
	   try {
		   conn = ds.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, writer);
		   pstmt.setString(2, title);
		   pstmt.setString(3, content);
		   System.out.println("regist DAO");
		   
		   pstmt.executeUpdate();
		   

	   }catch(Exception e) {
		   e.printStackTrace();
	   }finally {
		   JdbcUtil.close(conn,pstmt,null);
	   }
   }
   
   public ArrayList<BoardDTO> getList(){
	   ArrayList<BoardDTO>list = new ArrayList<>();
	   String sql = "SELECT * FROM BOARD ORDER BY BNO DESC";
	   
	   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   try {
		   conn = ds.getConnection();
		   pstmt = conn.prepareStatement(sql);

		   rs = pstmt.executeQuery();
		   
		   while(rs.next()) {
			   //pstmt.setString(1, BNO);
			 int bno = rs.getInt("bno");
			 String writer= rs.getString("writer");
			 String title= rs.getString("title");
			 String  content= rs.getString("content");
			 Timestamp regdate = rs.getTimestamp("regdate");
			 int hit  = rs.getInt("hit");
			 
			 BoardDTO dto = new BoardDTO(bno,writer,title,content,regdate,hit);
			 
			 list.add(dto);
		   }
		   
		   //pstmt.executeQuery();

	   }catch(Exception e) {
		   e.printStackTrace();
	   }finally {
		   JdbcUtil.close(conn,pstmt,null);
	   }
	   
	   
	return list;
   }

   
   
}
