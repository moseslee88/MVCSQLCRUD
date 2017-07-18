package data;

import java.util.List;

public interface BallerDAO {
	public Baller getBallerByName(String name);
	public List<Baller> getBallerByTeam(String team);
	public Baller getBallerByPosition(String position); 	
	public Baller getBallerByPPG(String ppg);
	public Baller getBallerByRPG(String rpg);
	public Baller getBallerByAPG(String apg);
	public Baller getBallerByFieldGoalPercentage(String fieldgoalpercentage);
	public Baller getBallerBySalary(String salary);

	public void addNBAballPlayer(Baller baller);
	public void deleteNBAballPlayer(Baller baller);
	public List<Baller> getNBAballers();
	public void persistThing(List<Baller> nbaplayers);
}
