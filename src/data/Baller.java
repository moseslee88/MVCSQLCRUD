package data;

public class Baller {
	private String name; 
	private String team;
	private String position;
	private String ppg;
	private String rpg;
	private String apg;
	private String fieldgoalpercentage;
	private String salary;

	public Baller() {
	}

	public Baller(String name, String team, String position, String ppg, String rpg, String apg,
			String fieldgoalpercentage, String salary) {
		super();
		this.name = name;
		this.team = team;
		this.position = position;
		this.ppg = ppg;
		this.rpg = rpg;
		this.apg = apg;
		this.fieldgoalpercentage = fieldgoalpercentage;
		this.salary = salary;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPpg() {
		return ppg;
	}

	public void setPpg(String ppg) {
		this.ppg = ppg;
	}

	public String getRpg() {
		return rpg;
	}

	public void setRpg(String rpg) {
		this.rpg = rpg;
	}

	public String getApg() {
		return apg;
	}

	public void setApg(String apg) {
		this.apg = apg;
	}

	public String getFieldgoalpercentage() {
		return fieldgoalpercentage;
	}

	public void setFieldgoalpercentage(String fieldgoalpercentage) {
		this.fieldgoalpercentage = fieldgoalpercentage;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Baller [name=").append(name).append(", team=").append(team).append(", position=")
				.append(position).append(", ppg=").append(ppg).append(", rpg=").append(rpg).append(", apg=").append(apg)
				.append(", fieldgoalpercentage=").append(fieldgoalpercentage).append(", salary=").append(salary)
				.append("]");
		return builder.toString();
	}

}
