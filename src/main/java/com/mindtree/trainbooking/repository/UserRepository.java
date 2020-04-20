package com.mindtree.trainbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.mindtree.trainbooking.entities.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
