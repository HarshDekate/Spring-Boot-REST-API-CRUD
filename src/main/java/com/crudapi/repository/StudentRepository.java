package com.crudapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.crudapi.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

}
