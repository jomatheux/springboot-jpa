package com.javaproject.java_spring_project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javaproject.java_spring_project.entities.OrderItem;
import com.javaproject.java_spring_project.entities.pk.OrderItemPk;

public interface OrderItemRepository extends JpaRepository<OrderItem, OrderItemPk>{	

}
