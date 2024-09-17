package ru.innopolis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.innopolis.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
}
