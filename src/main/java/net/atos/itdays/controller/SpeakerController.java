package net.atos.itdays.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.atos.itdays.domain.Speaker;
import net.atos.itdays.domain.repository.SpeakerRepository;

@Controller
public class SpeakerController {

	@Autowired 
	private SpeakerRepository speakerRepository;
	
	@RequestMapping(value = "/addSpeaker", method = RequestMethod.GET)
	public String getAddNewUserForm(Model model){
		Speaker newSpeaker= new Speaker();
		model.addAttribute("newSpeaker", newSpeaker);
		return "addSpeaker";
	}
	
	@RequestMapping(value = "/addSpeaker", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model, @ModelAttribute("addSpeaker") @Valid Speaker newSpeaker, BindingResult result){

		if(result.hasErrors()){
			return "addSpeaker";
		}

		speakerRepository.save(newSpeaker); 
		return "redirect:/addSpeaker";
	}
	
	@InitBinder
	public void initialiseBinder(WebDataBinder binder){
		binder.setAllowedFields("userId", "firstName","lastName","description");
	}
	
	@GetMapping(path="/speakerList")
	public String getAllUsers(Model model) {
		model.addAttribute("speakers", speakerRepository.findAll());
		return "/speakerList";
	}
	
}
