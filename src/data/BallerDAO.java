package data;

import java.util.List;

public interface BallerDAO {
	public Baller getBallerByName(String name);
	public List<Baller> getBallerByTeam(String team);
	public Baller getBallerByPosition(String position); 	
	public Baller getBallerByPPG(Double ppg);
	public Baller getBallerByRPG(Double rpg);
	public Baller getBallerByAPG(Double apg);
	public Baller getBallerByFieldGoalPercentage(Double fieldgoalpercentage);
	public Baller getBallerBySalary(Integer salary);

	public void addNBAballPlayer(Baller baller);
	public void deleteNBAballPlayer(int id);
	public List<Baller> getNBAballers();
	//public void persistThing(List<Baller> nbaplayers);
}
