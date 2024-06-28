package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DepartmentDAO {
   
   //DAO는 불필요하게 여러 개 만들 필요가 없으므로 
   //객체가 1개만 생성되도록 singleton형식으로 설계
   
   //1. 나 자신의 객체를 1개만 생성하고, private을 붙임
   private static DepartmentDAO instance = new DepartmentDAO();
   
   //2. 직접 객체를 생성할 수 없도록 생성자에도 private를 붙임
   private DepartmentDAO(){
      
      //커넥션풀에 사용할 객체를 얻어 옴
      try {
         InitialContext init = new InitialContext();//시작설정객체
         
         ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
         
      } catch (Exception e) {
         // TODO: handle exception
      }
      
   }
   //3. 객체 생성을 요구할 때 getter메서드를 사용해서 1번의 객체를 반환
   public static DepartmentDAO getInstance() {
      return instance;
   }

   ///////////////////////////////////////////////////////////////
   //필요한 메서드를 생성
   //데이터베이스 연결
         //String url = "jdbc:oracle:thin:@localhost:1521:xe";
         //String uid = "HR";
         //String upw = "HR";
         
   //커넥션 풀 객체정보
   private DataSource ds;
   
   
   
   
   //   
   public ArrayList<DepartmentDTO> getList(){
	   
	   
	   
	   	DepartmentDTO dto = null;
	   	PreparedStatement pstmt = null;
	   	ResultSet rs = null;
	   	
	   	public DepartmentDTO getDept(String dno) {
		 	return dto;
	   }
	 
	   	
   	
   	
   

   	String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ?";
  
   	try {
   		Connection conn = ds.getConnection();
   		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dao);
   		rs = pstmt.executeQuery();
   		
   		while(rs.next()) {
   			
   			
   			dto = new DepartmentDTO();

   			int departmentID = rs.getInt("department_id");
   	        int departmentId = rs.getInt("department_id"); //컬럼명
          String departmentName = rs.getString("department_name");
          int managerId = rs.getInt("manager_id");
         int locationId = rs.getInt("location_id");            
     
          //1행을 DTO에 저장
          DepartmentDTO dto = new DepartmentDTO(departmentId, departmentName, managerId, locationId);
         
   			
   		}
   	}catch(Exception e) {
   		e.printStackTrace();
   	
   	}finally {
	try {
   			
   		}catch(Exception e2) {
   			
   		}
   	}
   }
   
//   
//   //부서명을 조회하는 메서드
//   public ArrayList<DepartmentDTO> getList(){
//      
//      ArrayList<DepartmentDTO> list = new ArrayList<>();
//      
//      
//      
//      String sql = "SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NOT NULL";
//      Connection conn = null; //연결객체
//      PreparedStatement pstmt = null; //sqp문 실행 객체
//      ResultSet rs = null; //결과처리 객체
//      
//      try {
//         //Class.forName("oracle.jdbc.OracleDriver");//드라일ㄹ버 호출
//         //conn = DriverManager.getConnection(url,uid,upw);
//         
//         conn = ds.getConnection(); //ds안에 있는 커넥션 객체를 뽑아내겠다.
//         pstmt = conn.prepareStatement(sql);
//         rs = pstmt.executeQuery(); //select 구문의 실행
//         
//         while(rs.next()) { //다음이 있으면 true
//            
//            
//            //1행에 대한 처리
//            int departmentId = rs.getInt("department_id"); //컬럼명
//            String departmentName = rs.getString("department_name");
//            int managerId = rs.getInt("manager_id");
//            int locationId = rs.getInt("location_id");            
//            
//            //1행을 DTO에 저장
//            DepartmentDTO dto = new DepartmentDTO(departmentId, departmentName, managerId, locationId);
//            
//       
//            //DTO를 리스트에 추가
//            list.add(dto);
//            
//            //////
//         
//            
//            
//            
//            
//            
//         }
//         
//      } catch (Exception e) {
//         e.printStackTrace();
//      } finally {
//         try {
//            //객체값이 있을 때
//            if(conn != null) conn.close();
//            if(pstmt != null) conn.close();
//            if(rs!=null) rs.close();
//            
//         } catch (Exception e2) {
//         }
//      }
//      
//      return list;
//   }
   
}
