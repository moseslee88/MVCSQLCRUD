package data;

import java.util.List;

import com.mysql.jdbc.Statement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BallerDaoDbImpl implements BallerDAO {
	
	//public class NBAplayersFileDAO is now in CUSTOMERGUI under SpringWeb in package data
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
        List<Baller> nbaplayersbyteam = new ArrayList<>();
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
				nbaplayersbyteam.add(baller);
			}
			rs.close();
			stmt.close();
			conn.commit();   //COMMIT TRANSACTION
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nbaplayersbyteam;
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
	public Baller getBallerByPosition(String positn) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, positn);
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
	public Baller getBallerByPPG(Double ptspg) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setDouble(1, ptspg);
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
	public Baller getBallerByRPG(Double rebpg) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setDouble(1, rebpg);
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
	public Baller getBallerByAPG(Double assistpg) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setDouble(1, assistpg);
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
	public Baller getBallerByFieldGoalPercentage(Double fgpercentage) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setDouble(1, fgpercentage);
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
	public Baller getBallerBySalary(Integer salry) {
	     Baller baller = null;
	     try { 
	    	 Connection conn = DriverManager.getConnection(url, user, pass);
				conn.setAutoCommit(false);
				String sql = "SELECT name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player WHERE name = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setDouble(1, salry);
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
	public void addNBAballPlayer(Baller baller) {
		Connection conn = null; // here I instantiated a Connection object

		try {
			conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "INSERT INTO Player (name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary) "
					+ " VALUES (?,?,?,?,?,?,?,?)";  //8 fields

			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, baller.getName());
			stmt.setString(2, baller.getTeam());
			stmt.setString(3, baller.getPosition());
			stmt.setDouble(4, baller.getPpg());
			stmt.setDouble(5, baller.getRpg());
			//stmt.setDouble(5, 8.99);
			stmt.setDouble(6, baller.getApg());
			stmt.setDouble(7, baller.getFieldgoalpercentage());
			stmt.setInt(8, baller.getSalary());

			//stmt.setInt(10, 1);   DONT NEED
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				ResultSet keys = stmt.getGeneratedKeys();
				if (keys.next()) {
					
//					nbaplayers.set(keys.getInt(updateCount), baller); 
//					
//					nbaplayers.add(baller);  //load the Array List with NBA ballplayers
				} else {
					baller = null;
				}
				System.out.println(baller);

				stmt.close();
				conn.commit(); //COMMIT TRANSACTION --this line of code ensures this film object gets added to mySQL database
				conn.close();
			  }
		}catch (SQLException sqle) {
				    sqle.printStackTrace();
				    if (conn != null) {
				      try { conn.rollback(); }
				      catch (SQLException sqle2) {
				        System.err.println("Error trying to rollback");
				      }
				    }  
				    throw new RuntimeException("Error inserting basketball baller " + baller);
		}
						
						
					     
		
	}

	@Override
	public void deleteNBAballPlayer(int id) {
	    Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, pass);
            conn.setAutoCommit(false); // START TRANSACTION
            String sql = "DELETE FROM Player WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            int updateCount = stmt.executeUpdate();
            stmt.close();
            conn.commit(); // COMMIT TRANSACTION
            conn.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException sqle2) {
                    System.err.println("Error trying to rollback");
                }
            }
        }
		
	}

	@Override
	public List<Baller> getNBAballers() {  
		Baller balla = null;
		List<Baller> list = new ArrayList<Baller>();
		try {
			Connection conn = DriverManager.getConnection(url, user, pass);
			String sql = "SELECT id, name, team, position, Pts_per_game, rebounds_per_game, assists_per_game, fieldgoalpercentage, salary FROM Player ";
			PreparedStatement stmt = conn.prepareStatement(sql);
			//stmt.setString(1, "%" + key + "%");   NO Input variables or input question marks so no stmt needed
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int id= rs.getInt(1);
				String name = rs.getString(2);
				String team = rs.getString(3);
				String position = rs.getString(4);
				Double ppg = rs.getDouble(5);
				Double rpg = rs.getDouble(6);
				Double apg = rs.getDouble(7);
				Double fieldgoalpercentage = rs.getDouble(8);
				Integer salary = rs.getInt(9);
				balla = new Baller(id, name, team, position, ppg, rpg, apg,
						fieldgoalpercentage, salary);     
				list.add(balla);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}


	

}




