package net.atos.itdays.domain.repository;

import org.springframework.data.repository.CrudRepository;

import net.atos.itdays.domain.Lecture;
import net.atos.itdays.domain.Speaker;

public interface LectureRepository extends CrudRepository<Lecture, Long>{

}
