package data;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

public abstract class NBAplayersFileDAO implements BallerDAO {
	private static final String FILE_NAME="/WEB-INF/NBAplayers.csv";
	private List<Baller> nbaplayers = new ArrayList<>();

	@Autowired 
	private WebApplicationContext webappct;
	
	ServletContext context;
	   

	@PostConstruct
		//here I load the NBA ball players into a List called nbaplayers
		public List<Baller> init() {
			    //Map<Integer, Baller> ballerMap = new HashMap<>();

		try (
				InputStream is = webappct.getServletContext().getResourceAsStream(FILE_NAME);
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));
			) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				Object[] tokens = line.split(",");
				//int id=Integer.parseInt(tokens[0]);
				int id=(Integer)tokens[0];
				String name = (String) tokens[1];
				String team = (String) tokens[2];
				String position = (String) tokens[3];
				Double ppg = (Double) tokens[4];
				Double rpg = (Double) tokens[5];
				Double apg = (Double) tokens[6];
				Double fieldgoalpercentage = (Double) tokens[7];
				Integer salary = (Integer) tokens[8];
				Baller newBaller=new Baller(name, team, position, ppg, rpg, apg, fieldgoalpercentage, salary);
						
			nbaplayers.add(newBaller);;
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		System.out.println(nbaplayers.size());
		return nbaplayers;
	}

	
	

/***	

	@Override
	public void addNBAballPlayer(Baller baller) {
		nbaplayers.add(baller);
		persistThing(nbaplayers);
	}
	@Override
	public void deleteNBAballPlayer(Baller baller) {
		 Baller b=null;
		 for (Baller ball : nbaplayers) {
			if (ball.getName().equals(baller.getName())) {
				b=ball;
				nbaplayers.remove(b);
				break;  
			}
		}
		 persistThing(nbaplayers);
	}
	
	


	
	
	public List<Baller> getNBAballers(){
		return nbaplayers;
	}
	
	 @Override
	    //public void persistThing() {
	 public void persistThing(List<Baller> nbaplayers) { 
	        String orderFile = "/WEB-INF/NBAplayers.csv";
	        String filePath = webappct.getServletContext().getRealPath(orderFile);
	        System.out.println(filePath);  //TEST
	        int id=0;
	        try {
	            PrintWriter out = new PrintWriter(new FileWriter(filePath));
	            for (Baller baller : nbaplayers) {
	            	id++;
	            	out.println(id+ "," + baller.getName()+","+baller.getTeam()+","+baller.getPosition()+","+baller.getPpg()+","+baller.getRpg()+","+baller.getApg()+","+baller.getFieldgoalpercentage()+","+baller.getSalary());
				}
	            out.close();
	        }
	        catch(Exception e){	
	        	e.getMessage();
	        }	
	 }
	 
	 
	 

	 
	 
		@Override
		public Baller getBallerByName(String name) {
			Baller ba = null;
			for (Baller baller : nbaplayers) {
				if (baller.getName().equalsIgnoreCase(name)) {
					ba = baller;
					break;
				}
			}
			return ba;
		}
	 


    @Override
	public List<Baller> getBallerByTeam(String team) {
		List<Baller> ba = new ArrayList<Baller>();
		for (Baller baller : nbaplayers) {
			if (baller.getTeam().equalsIgnoreCase(team)) {
				ba.add(baller);
				//break;
			}
		}
		return ba;
	}  

	@Override
	public Baller getBallerByPosition(String position) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getPosition().equalsIgnoreCase(position)) {
				ba = baller;
				break;
			}
		}
		return ba;
	}

	@Override
	public Baller getBallerByPPG(String ppg) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getPpg().equalsIgnoreCase(ppg)) {
				ba = baller;
				break;
			}
		}
		return ba;
	}

	@Override
	public Baller getBallerByRPG(String rpg) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getRpg().equalsIgnoreCase(rpg)) {
				ba = baller;
				break;
			}
		}
		return ba;
	}

	@Override
	public Baller getBallerByAPG(String apg) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getApg().equalsIgnoreCase(apg)) {
				ba = baller;
				break;
			}
		}
		return ba;
	}

	@Override
	public Baller getBallerByFieldGoalPercentage(String fieldgoalpercentage) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getFieldgoalpercentage().equalsIgnoreCase(fieldgoalpercentage)) {
				ba = baller;
				break;
			}
		}
		return ba;
	}

	@Override
	public Baller getBallerBySalary(String salary) {
		Baller ba = null;
		for (Baller baller : nbaplayers) {
			if (baller.getSalary().equalsIgnoreCase(salary)) {
				ba = baller;
				break;
			}
		}
		return ba;
	} 
	******/
	        
}
