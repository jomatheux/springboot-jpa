package com.javaproject.java_spring_project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javaproject.java_spring_project.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{	

}
