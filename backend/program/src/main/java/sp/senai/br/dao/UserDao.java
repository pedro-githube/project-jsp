package sp.senai.br.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import sp.senai.br.model.User;


public class UserDao {
	private String url = "jdbc:mysql://localhost:3306/data_base?useTimezone=true&serverTimezone=UTC";
	private String user = "developer";
	private String password = "root";
	
	private Connection connection = null;
	
	public boolean getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			connection = DriverManager.getConnection(url, user, password);
			return true;
		}catch(SQLException e) {
			return false;
		}
	}
	
	public List<User> findAll() {
		
		if (getConnection()) {
			String sql = "SELECT id, name, telephone, address FROM users";
			
			List<User> list = new ArrayList<>();
			
			try {
				Statement statement = connection.createStatement();
				statement.execute(sql);
				ResultSet result = statement.getResultSet();
				while (result.next()) {	
					
					User obj = new User();
					
					obj.setId(result.getInt("id"));
					obj.setName(result.getString("name"));
					obj.setTelephone(result.getString("telephone"));
					obj.setAddress(result.getString("address"));
					list.add(obj);
				}
				
			} catch (SQLException e) {
				return null;
			}		
			return list;
		}
		return null;
	}

	public boolean insert(User obj) {
		if (getConnection()) {
			String sql = "INSERT INTO users (name, telephone, address)"
					+ "VALUES('" + obj.getName()
					+ "', '" + obj.getTelephone()
					+ "', '" + obj.getAddress() + "')";
			try {
				Statement acaoSql = connection.createStatement();
				acaoSql.execute(sql);
			} catch (SQLException e) {
				return false;
			}
			return true;
		} else {
			return false;
		}
	}
	
	public boolean deleteById(int id) {
		if (getConnection()) {
			String sql = "DELETE FROM users WHERE id = " + id;
			
			try {
				Statement acaoSql = connection.createStatement();
				acaoSql.execute(sql);
				return true;
			} catch (SQLException e) {
				return false;
			}
		}
		return false;
	}
	
	public User findById(int id) {
		if (getConnection()) {
			String sql = "SELECT id, name, telephone, address FROM users WHERE id = " + id;
			
			try {
				Statement acaoSql = connection.createStatement();
				acaoSql.execute(sql);
				ResultSet rs = acaoSql.getResultSet();
				
				if (rs.next()) {
					User obj = new User();
					
					obj.setId(rs.getInt("id"));	
					obj.setName(rs.getString("name"));
					obj.setTelephone(rs.getString("telephone"));
					obj.setAddress(rs.getString("address"));
					return obj;
				}
				return null;
			} catch (SQLException e) {
				return null;
			}	
		}
		return null;
	}
	
	public boolean update(User obj) {
		if (getConnection()) {
			String sql = 
					" UPDATE users "
							+ " SET name = ?, "
							+ " telephone = ?, "
							+ " address = ? "
							+ " WHERE id = ? ";
			try {
				PreparedStatement prepared = connection.prepareStatement(sql);
				prepared.setString(1, obj.getName());
				prepared.setString(2, obj.getTelephone());
				prepared.setString(3, obj.getAddress());
				prepared.setInt(4, obj.getId());
				prepared.executeUpdate();	
				return true;
			} catch (SQLException e) {
				return false;
			}
		}
		return false;
	}
}
