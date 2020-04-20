package com.mindtree.trainbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.trainbooking.entities.Day;
@Repository
public interface DayRepository extends JpaRepository<Day, Integer> {

}
