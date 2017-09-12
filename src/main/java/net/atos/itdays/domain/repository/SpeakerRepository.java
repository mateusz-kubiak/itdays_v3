package net.atos.itdays.domain.repository;

import org.springframework.data.repository.CrudRepository;

import net.atos.itdays.domain.Speaker;


public interface SpeakerRepository extends CrudRepository<Speaker, Long> {

	public Speaker findBySpeakerId(Long speakerId);
}