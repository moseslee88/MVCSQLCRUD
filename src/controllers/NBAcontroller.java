package controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import data.Baller;
import data.BallerDAO;



@Controller
public class NBAcontroller {
	@Autowired
	private BallerDAO nbaDao;

	@RequestMapping(path="GetBallPlayer.do", 
			params="name",
			method=RequestMethod.GET)
	public ModelAndView getByName(@RequestParam("name") String n, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("resultsfun.jsp");
		//mv.addObject("baller", nbaDao.getBallerByName(n));
		session.setAttribute("baller", nbaDao.getBallerByName(n));
		return mv;      
	}
	
	

		
		@RequestMapping(path="GetBallTeam.do", 
			params="team",
			method=RequestMethod.GET)
	public ModelAndView getByTeam(@RequestParam("team") String n, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("resultsTeam.jsp");
                  //		mv.addObject("player", nbaDao.getBallerByName(n));
			      //session.setAttribute("ballers2", nbaDao.getBallerByTeam(n)); 	
		session.setAttribute("ballerslist", nbaDao.getBallerByTeam(n)); 	
		return mv;
	}
		
		@RequestMapping(path="GetAllNBAPlayer.do", 
				params="name",
				method=RequestMethod.GET)
		public ModelAndView getAllName(@RequestParam("name") String n, HttpSession session) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewAll.jsp");
			//mv.addObject("baller", nbaDao.getBallerByName(n));
			session.setAttribute("allballer", nbaDao.getNBAballers());
			return mv;      
		}
		
		@RequestMapping(path="AddPlayer.do", 
				params={"name","team","position", "ppg", "rpg", "apg", "fieldgoalpercentage", "salary"},
				method=RequestMethod.POST)
		//@RequestParam("what") String what
		public ModelAndView addBallPlayertoList(@RequestParam("name") String a, @RequestParam("team") String b, @RequestParam("position") String c, @RequestParam("ppg") String d, @RequestParam("rpg") String e, @RequestParam("apg") String f, @RequestParam("fieldgoalpercentage") String g, @RequestParam("salary") String h, Baller baller,
                RedirectAttributes redir, HttpSession session) {
			System.out.println("first line of method");  //TEST
			nbaDao.addNBAballPlayer(baller);
			ModelAndView mv = new ModelAndView();		
			redir.addFlashAttribute("ballerlist", nbaDao.getNBAballers());
			mv.setViewName("redirect:PlayerAdded.do");		  
			return mv;
		}
		
		@RequestMapping(path="PlayerAdded.do",       //here I implemented the mapping to handle post-Redirect
                method=RequestMethod.GET)     
public ModelAndView gotBallPlayerandAddtoList(Baller baller) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("resultslist.jsp");
			mv.addObject("ballerlist", nbaDao.getNBAballers());
			return mv;
}
		
		
		
		//here i do the mapping to delete an NBA Player
		/* @RequestMapping(path = "PlayerDeleted.do", params = "VerifyDelete", method = RequestMethod.POST)
		public ModelAndView deleteFromList(@RequestParam("VerifyDelete") String n, Baller baller, RedirectAttributes redir, HttpSession session) {
			nbaDao.getNBAballers();
			nbaDao.deleteNBAballPlayer(baller);

			ModelAndView mv = new ModelAndView();
			redir.addFlashAttribute("ballerlist", nbaDao.getNBAballers());
			mv.setViewName("redirect:PlayerAdded.do");
			//redir.addFlashAttribute("removed", removed);
			return mv;
			
		}   */
		
		@RequestMapping(path = "PlayerDeleted.do", params = {"name","team","position", "ppg", "rpg", "apg", "fieldgoalpercentage", "salary"}, method = RequestMethod.POST)
		public ModelAndView deleteFromList(@RequestParam("name") String a, @RequestParam("team") String b, @RequestParam("position") String c, @RequestParam("ppg") String d, @RequestParam("rpg") String e, @RequestParam("apg") String f, @RequestParam("fieldgoalpercentage") String g, @RequestParam("salary") String h, Baller baller, RedirectAttributes redir, HttpSession session) {
			nbaDao.getNBAballers();
			nbaDao.deleteNBAballPlayer(baller);
			
			ModelAndView mv = new ModelAndView();
			redir.addFlashAttribute("ballerlist", nbaDao.getNBAballers());
			mv.setViewName("redirect:PlayerAdded.do");
			//redir.addFlashAttribute("removed", removed);
			return mv;
			
		}
		
}
		

