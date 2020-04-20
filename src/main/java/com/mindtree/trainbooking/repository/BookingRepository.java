package com.mindtree.trainbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.trainbooking.entities.Booking;
@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

}
