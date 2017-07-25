package data;

public class Baller {
	private String name; 
	private String team;
	private String position;
	private Double ppg;
	private Double rpg;
	private Double apg;
	private Double fieldgoalpercentage;
	private Integer salary;

	public Baller() {
	}

	public Baller(String name, String team, String position, Double ppg, Double rpg, Double apg,
			Double fieldgoalpercentage, Integer salary) {
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

	public Double getPpg() {
		return ppg;
	}

	public void setPpg(Double ppg) {
		this.ppg = ppg;
	}

	public Double getRpg() {
		return rpg;
	}

	public void setRpg(Double rpg) {
		this.rpg = rpg;
	}

	public Double getApg() {
		return apg;
	}

	public void setApg(Double apg) {
		this.apg = apg;
	}

	public Double getFieldgoalpercentage() {
		return fieldgoalpercentage;
	}

	public void setFieldgoalpercentage(Double fieldgoalpercentage) {
		this.fieldgoalpercentage = fieldgoalpercentage;
	}

	public Integer getSalary() {
		return salary;
	}

	public void setSalary(Integer salary) {
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
