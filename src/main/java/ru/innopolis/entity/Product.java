package ru.innopolis.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Product {

    @Id
    private int id;

    private String description;
    private double price;
    private int quantity;
}
