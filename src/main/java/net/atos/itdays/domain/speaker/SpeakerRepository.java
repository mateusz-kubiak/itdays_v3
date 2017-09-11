package net.atos.itdays.domain.speaker;

import org.springframework.data.repository.CrudRepository;


public interface SpeakerRepository extends CrudRepository<Speaker, Long> {

	public Speaker findBySpeakerId(Long speakerId);
}