package net.atos.itdays.controller;

import java.util.Optional;
import java.util.logging.Logger;
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

import net.atos.itdays.domain.Lecture;
import net.atos.itdays.domain.repository.LectureRepository;
import net.atos.itdays.domain.repository.SpeakerRepository;

@Controller
public class LectureController {

	@Autowired 
	private LectureRepository lectureRepository;
	@Autowired 
	private SpeakerRepository speakerRepository;
	
	private static final Logger LOG = Logger.getLogger(LectureController.class.getName());
	
	@RequestMapping(value = "/addLecture", method = RequestMethod.GET)
	public String getAddNewUserForm(Model model){
		model.addAttribute("speakers", speakerRepository.findAll());
		Lecture newLecture = new Lecture();
		model.addAttribute("newLecture", newLecture);
		return "addLecture";
	}
	
	@RequestMapping(value = "/addLecture", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model, @ModelAttribute("newLecture") @Valid Lecture newLecture, 
		BindingResult result){
		
		if(result.hasErrors()){
			LOG.info("POST request to create new lecture failed!");
			return "addLecture";
		}
		
		lectureRepository.save(newLecture); 
		LOG.info("POST request to create new lecture was submitted: " + newLecture);
		return "redirect:/addLecture";
	}
	
	@InitBinder
	public void initialiseBinder(WebDataBinder binder){
		binder.setAllowedFields("lectureId", "topic", "speakerId", "place", "date");
	}
	
	@GetMapping(path="/lectureList")
	public String getAllUsers(Model model) {
		model.addAttribute("lecturers", lectureRepository.findAll());
		model.addAttribute("speakers", speakerRepository.findAll());
		return "/lectureList";
	}
}
