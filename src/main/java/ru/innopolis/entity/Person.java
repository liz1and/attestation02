package ru.innopolis.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Person {
    @Id
    private int id;
    private String name;
    private String surname;
}
