package ru.innopolis.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

import java.util.Date;

@Data
@Entity
public class Order {

    @Id
    private int orderId;
    private int customerId;
    private int productId;
    private Date order_date;
    private int quantity;
}

