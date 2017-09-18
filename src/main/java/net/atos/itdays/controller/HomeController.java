package net.atos.itdays.controller;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(path="/itdays")
public class HomeController {

	private static final Logger LOG = Logger.getLogger(HomeController.class.getName());
	
	@RequestMapping("/")
	public String welcome(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "welcome";
	}
	
	@RequestMapping("/information")
	public String inform(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "information";
	}
	
	@RequestMapping("/sponsors")
	public String presentSponsors(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "sponsors";
	}
	
	@RequestMapping("/agenda")
	public String presentAgenda(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "agenda";
	}
	
	@RequestMapping("/contact")
	public String presentContact(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "contact";
	}
	
	@RequestMapping("/signUp")
	public String presentSignUp(Model model){	
		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
		return "signUp";
	}
	
//	@RequestMapping("/speakers")
//	public String speakers(Model model){	
//		model.addAttribute("eventName", "Łódzkie Dni Informatyki");
//		model.addAttribute("eventDate","22 - 23 listpad 2017 r.");
//		return "speakers";
//	}
	
}
