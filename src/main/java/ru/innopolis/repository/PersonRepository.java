package ru.innopolis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.innopolis.entity.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Integer> {


}
