package kr.or.connect.todo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.or.connect.todo.dto.TodoDto;

public class TodoDao {
	private static String dburl = "jdbc:mysql://localhost:3306/connectdb?verifyServerCertificate=false&useSSL=true";
	private static String dbUser = "connectuser";
	private static String dbpasswd = "connect123!@#";

	public List<TodoDto> getTodos(String todotype) {
		List<TodoDto> list = new ArrayList<>();

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		String sql = "select id, title, name, sequence, type, regdate from todo where type=? order by regdate desc";
		try (Connection conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
				PreparedStatement ps = conn.prepareStatement(sql);
				) {ps.setString(1, todotype);

			try (ResultSet rs = ps.executeQuery()) {

				while (rs.next()) {

					Long id = rs.getLong("id");
					String title = rs.getString("title");
					String name = rs.getString("name");
					int sequence = rs.getInt("sequence");
					String type = rs.getString("type");
					String regdate = rs.getString("regdate");
					TodoDto tododto = new TodoDto(id, title, name, sequence, type, regdate);
					list.add(tododto);

				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public int addTodo(TodoDto todo) {
		
		int insertCount = 0;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String sql = "insert into todo(title, name, sequence) values(?, ?, ?)";
		try (Connection conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
				PreparedStatement ps = conn.prepareStatement(sql)) {

			
			ps.setString(1, todo.getTitle());
			ps.setString(2, todo.getName());
			ps.setInt(3, todo.getSequence());

			insertCount = ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return insertCount;
		
	}
	
	public int updateTodo(TodoDto todo) {
		int updateCount = 0;
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName( "com.mysql.jdbc.Driver" );
			
			conn = DriverManager.getConnection ( dburl, dbUser, dbpasswd );
			
			String sql = "update todo set type = ? where id = ?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, todo.getType());
			ps.setLong(2,  todo.getId());
			
			updateCount = ps.executeUpdate();

		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(ps != null) {
				try {
					ps.close();
				}catch(Exception ex) {}
			} 
			
			if(conn != null) {
				try {
					conn.close();
				}catch(Exception ex) {}
			} 
		} 
		
		return updateCount;
	}

}