package net.atos.itdays.domain.repository;

import org.springframework.data.repository.CrudRepository;

import net.atos.itdays.domain.Event;

public interface EventRepository extends CrudRepository<Event, Long>{

}
