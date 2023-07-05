package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DBConnection;
import user.User;

public class UserDAO {
	Connection conn = DBConnection.getConnection();
	
	public int createUser(User user) {
		String sql = "Insert into user(name, age, phone, email) values (?, ?, ?, ?)";
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 수동 커밋을 위한 설정입니다. 
			conn.setAutoCommit(false);
			
			pstmt.setString(1, user.getName());
			pstmt.setInt(2, user.getAge());
			pstmt.setString(3, user.getPhone());
			pstmt.setString(4, user.getEmail());
			result = pstmt.executeUpdate();
			
			// 트랜잭션 커밋
			conn.commit();
		} catch(SQLException e) {
			try {
				// 예외가 발생하면 롤백시킵니다.
				conn.rollback();
			} catch (SQLException rollbackEx) {
				rollbackEx.printStackTrace();
			}
			
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public List<User> getUsers() {
		String sql = "Select * from user";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<User> users = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAge(rs.getInt("age"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				
				users.add(user);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		if (users.isEmpty()) {
			return null;
		}
		return users;
	}
	
	public User getUser(int id) {
		String sql = "Select * from user where id = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAge(rs.getInt("age"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return user;
	}
	
	private User getUserByEmail(String email) {
		String sql = "Select * from user where email = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAge(rs.getInt("age"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return user;
	}
	
	public int updateUser(int id, User user) {
		String sql = "Update user SET";
		PreparedStatement pstmt = null;
		List<Object> params = new ArrayList<>();
		int result = 0;
		
		if (this.getUser(id) == null) {
			return 0;
		}
		
		if (user.getName() != null) {
			sql += " name = ?,";
			params.add(user.getName());
		}
		
		if (user.getAge() != 0) {
			sql += " age = ?,";
			params.add(user.getAge());
		}
		
		if (user.getPhone() != null) {
			sql += " phone = ?,";
			params.add(user.getPhone());
		}
		
		if (user.getEmail() != null) {
			User foundUser = this.getUserByEmail(user.getEmail());
			if (foundUser != null) {
				return 0;
			}
			sql += " email = ?,";
			params.add(user.getEmail());
		}
		
		sql = sql.substring(0, sql.length() - 1);
		sql += " where id = ?";
		params.add(id);
		
		// 아무런 필드도 입력하지 않았을 경우에 대비
		if (params.size() < 2) {
			return 1;
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 수동 커밋을 위한 설정입니다. 
			conn.setAutoCommit(false);
			
			for (int i=0; i<params.size(); i++) {
				pstmt.setObject(i+1, params.get(i));
			}
			
			result = pstmt.executeUpdate();
			conn.commit();
		} catch(SQLException e) {
			try {
				conn.rollback();
			} catch(SQLException rollbackEx) {
				rollbackEx.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int deleteUser(int id) {
		String sql = "delete from user where id = ?";
		PreparedStatement pstmt = null;
		int result = 0;
		
		if (this.getUser(id) == null) {
			return 0;
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 수동 커밋을 위한 설정입니다. 
			conn.setAutoCommit(false);
			
			pstmt.setInt(1, id);
			result = pstmt.executeUpdate();
			
			conn.commit();
		} catch(SQLException e) {
			try {
				conn.rollback();
			} catch(SQLException rollbackEx) {
				rollbackEx.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
