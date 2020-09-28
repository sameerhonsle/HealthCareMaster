package com.healthcare.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.healthcare.dto.PrescriptionFormDto;

@Repository
public interface PrescriptionRepository extends JpaRepository<PrescriptionFormDto, Long> {

}
