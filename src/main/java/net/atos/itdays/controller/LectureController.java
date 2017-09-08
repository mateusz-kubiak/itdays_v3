package net.atos.itdays.controller;

import java.util.Optional;

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

import net.atos.itdays.domain.lecture.Lecture;
import net.atos.itdays.domain.lecture.LectureRepository;
import net.atos.itdays.domain.speaker.Speaker;
import net.atos.itdays.domain.speaker.SpeakerRepository;

@Controller
public class LectureController {

	@Autowired 
	private LectureRepository lectureRepository;
	@Autowired 
	private SpeakerRepository speakerRepository;
	
	@RequestMapping(value = "/addLecture", method = RequestMethod.GET)
	public String getAddNewUserForm(Model model){
		Lecture newLecture = new Lecture();
		model.addAttribute("newLecture", newLecture);
		model.addAttribute("speakers", speakerRepository.findAll());
		return "addLecture";
	}
	
	@RequestMapping(value = "/addLecture", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model, @ModelAttribute("addLecture") @Valid Lecture newLecture, BindingResult result){
		model.addAttribute("speakers", speakerRepository.findAll());

		if(result.hasErrors()){
			return "addLecture";
		}
//		newLecture.setSpeaker(speakerRepository.findById((long) 6));

		lectureRepository.save(newLecture); 
		return "redirect:/addLecture";
	}
	
	@InitBinder
	public void initialiseBinder(WebDataBinder binder){
		binder.setAllowedFields("lectureId", "topic","speaker");
	}
	
	@GetMapping(path="/lectureList")
	public String getAllUsers(Model model) {
		model.addAttribute("lecturers", lectureRepository.findAll());
		return "/lectureList";
	}
}
