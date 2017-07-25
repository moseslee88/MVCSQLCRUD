package data;

import java.util.List;

import com.mysql.jdbc.Statement;
import com.skilldistillery.film.data.Film;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BallerDaoDbImpl implements BallerDAO {
	private static String url = "jdbc:mysql://localhost:3306/basketballdb";
	private String user = "nbaballplayer";
	private String pass = "nbaballplayer";
	private List<Baller> nbaplayers = new ArrayList<>();
	private Baller baller; 
	
	public BallerDaoDbImpl() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("Error loading MySQL Driver!!!");
		}
	}



	@Override
	public List<Baller> getBallerByTeam(String teem) {
		List<Baller> nbaplayers = null;
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false);  //STARTS the Transaction
			String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE team = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, teem);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String name = rs.getString(1);
				String team = rs.getString(2);
				String position = rs.getString(3);
				Double ppg = rs.getDouble(4);
				Double rpg = rs.getDouble(5);
				Double apg = rs.getDouble(6);
				Double fieldgoalpercentage = rs.getDouble(7);
				Integer salary = rs.getInt(8);
				
				Baller baller = new Baller(name, team, position, ppg, rpg, apg,
						fieldgoalpercentage, salary);
				nbaplayers.add(baller);
			}
			rs.close();
			stmt.close();
			conn.commit();   //COMMIT TRANSACTION
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nbaplayers;
	}
	

	@Override
	public Baller getBallerByName(String namee) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, namee);
				ResultSet rs = stmt.executeQuery();
				if (rs.next()) {
					String name = rs.getString(1);
					String team = rs.getString(2);
					String position = rs.getString(3);
					Double ppg = rs.getDouble(4);
					Double rpg = rs.getDouble(5);
					Double apg = rs.getDouble(6);
					Double fieldgoalpercentage = rs.getDouble(7);
					Integer salary = rs.getInt(8);
					
					baller = new Baller(name, team, position, ppg, rpg, apg,
							fieldgoalpercentage, salary);
				}
				rs.close();
				stmt.close();
				conn.commit();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return baller;
	}


	@Override
	public Baller getBallerByPosition(String position) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Baller getBallerByPPG(Double ppg) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Baller getBallerByRPG(Double rpg) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Baller getBallerByAPG(Double apg) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Baller getBallerByFieldGoalPercentage(Double fieldgoalpercentage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Baller getBallerBySalary(Integer salary) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addNBAballPlayer(Baller baller) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteNBAballPlayer(Baller baller) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Baller> getNBAballers() {  
		Baller balla = null;
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player ";
			PreparedStatement stmt = conn.prepareStatement(sql);
			//stmt.setString(1, "%" + key + "%");   NO Input variables or input question marks so no stmt needed
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String name = rs.getString(1);
				String team = rs.getString(2);
				String position = rs.getString(3);
				Double ppg = rs.getDouble(4);
				Double rpg = rs.getDouble(5);
				Double apg = rs.getDouble(6);
				Double fieldgoalpercentage = rs.getDouble(7);
				Integer salary = rs.getInt(8);
				balla = new Baller(name, team, position, ppg, rpg, apg,
						fieldgoalpercentage, salary);     
				nbaplayers.add(balla);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nbaplayers;

	}


	

}






