package com.mindtree.trainbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.trainbooking.entities.Train;
@Repository
public interface TrainRepository extends JpaRepository<Train, Integer> {

}
