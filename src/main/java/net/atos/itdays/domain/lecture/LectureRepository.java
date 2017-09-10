package net.atos.itdays.domain.lecture;

import org.springframework.data.repository.CrudRepository;

import net.atos.itdays.domain.speaker.Speaker;

public interface LectureRepository extends CrudRepository<Lecture, Long>{

//	public Lecture findByLectureId();
	
	public Speaker findBySpeaker(Integer speakerId);
}
