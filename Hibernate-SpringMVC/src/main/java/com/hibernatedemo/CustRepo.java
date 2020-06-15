package com.hibernatedemo;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CustRepo extends JpaRepository<Customer,Integer> {

}
